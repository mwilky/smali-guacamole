.class Lcom/google/tagmanager/Runtime;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Runtime$a;,
        Lcom/google/tagmanager/Runtime$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/tagmanager/s0$d;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/z;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/z;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/z;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/s0$f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/tagmanager/n;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {}, Lcom/google/tagmanager/a1;->a()Lb/a/a/a/a/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/s0$d;Lcom/google/tagmanager/n;Lcom/google/tagmanager/m$a;Lcom/google/tagmanager/m$a;Lcom/google/tagmanager/w;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_9

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->a:Lcom/google/tagmanager/s0$d;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$d;->c()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/tagmanager/Runtime;->e:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/tagmanager/Runtime;->f:Lcom/google/tagmanager/n;

    new-instance p2, Lcom/google/tagmanager/Runtime$1;

    invoke-direct {p2, p0}, Lcom/google/tagmanager/Runtime$1;-><init>(Lcom/google/tagmanager/Runtime;)V

    new-instance v0, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v0}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1, p2}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    new-instance p2, Lcom/google/tagmanager/Runtime$2;

    invoke-direct {p2, p0}, Lcom/google/tagmanager/Runtime$2;-><init>(Lcom/google/tagmanager/Runtime;)V

    new-instance v0, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v0}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    invoke-virtual {v0, v1, p2}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->b:Ljava/util/Map;

    new-instance p2, Lcom/google/tagmanager/g;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->d(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/m;

    invoke-direct {p2, p5}, Lcom/google/tagmanager/m;-><init>(Lcom/google/tagmanager/m$a;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->d(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/p;

    invoke-direct {p2, p3}, Lcom/google/tagmanager/p;-><init>(Lcom/google/tagmanager/n;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->d(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/b1;

    invoke-direct {p2, p1, p3}, Lcom/google/tagmanager/b1;-><init>(Landroid/content/Context;Lcom/google/tagmanager/n;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->d(Lcom/google/tagmanager/z;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->c:Ljava/util/Map;

    new-instance p2, Lcom/google/tagmanager/l;

    invoke-direct {p2}, Lcom/google/tagmanager/l;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/u;

    invoke-direct {p2}, Lcom/google/tagmanager/u;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/v;

    invoke-direct {p2}, Lcom/google/tagmanager/v;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/a0;

    invoke-direct {p2}, Lcom/google/tagmanager/a0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/b0;

    invoke-direct {p2}, Lcom/google/tagmanager/b0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/g0;

    invoke-direct {p2}, Lcom/google/tagmanager/g0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/h0;

    invoke-direct {p2}, Lcom/google/tagmanager/h0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/q0;

    invoke-direct {p2}, Lcom/google/tagmanager/q0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/v0;

    invoke-direct {p2}, Lcom/google/tagmanager/v0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->c(Lcom/google/tagmanager/z;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->d:Ljava/util/Map;

    new-instance p2, Lcom/google/tagmanager/a;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/b;

    invoke-direct {p2}, Lcom/google/tagmanager/b;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/c;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/d;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/e;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/f;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/i;

    invoke-direct {p2}, Lcom/google/tagmanager/i;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/k;

    invoke-direct {p2, p0}, Lcom/google/tagmanager/k;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/m;

    invoke-direct {p2, p4}, Lcom/google/tagmanager/m;-><init>(Lcom/google/tagmanager/m$a;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/o;

    invoke-direct {p2, p3}, Lcom/google/tagmanager/o;-><init>(Lcom/google/tagmanager/n;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/r;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/s;

    invoke-direct {p2}, Lcom/google/tagmanager/s;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/t;

    invoke-direct {p2}, Lcom/google/tagmanager/t;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/x;

    invoke-direct {p2, p0}, Lcom/google/tagmanager/x;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/c0;

    invoke-direct {p2}, Lcom/google/tagmanager/c0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/d0;

    invoke-direct {p2}, Lcom/google/tagmanager/d0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/e0;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/e0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/JoinerMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/JoinerMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/f0;

    invoke-direct {p2}, Lcom/google/tagmanager/f0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/j0;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/j0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/l0;

    invoke-direct {p2}, Lcom/google/tagmanager/l0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/m0;

    invoke-direct {p2}, Lcom/google/tagmanager/m0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/o0;

    invoke-direct {p2}, Lcom/google/tagmanager/o0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/p0;

    invoke-direct {p2}, Lcom/google/tagmanager/p0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p2, Lcom/google/tagmanager/r0;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/r0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p1, Lcom/google/tagmanager/t0;

    invoke-direct {p1}, Lcom/google/tagmanager/t0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p1, Lcom/google/tagmanager/u0;

    invoke-direct {p1}, Lcom/google/tagmanager/u0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p1, Lcom/google/tagmanager/x0;

    invoke-direct {p1}, Lcom/google/tagmanager/x0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->b(Lcom/google/tagmanager/z;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/tagmanager/Runtime;->g:Ljava/util/Map;

    iget-object p1, p0, Lcom/google/tagmanager/Runtime;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/tagmanager/s0$f;

    invoke-interface {p6}, Lcom/google/tagmanager/w;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->b()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->a()Ljava/util/List;

    move-result-object p4

    const-string p5, "add macro"

    invoke-static {p3, p4, p5}, Lcom/google/tagmanager/Runtime;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->h()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->g()Ljava/util/List;

    move-result-object p4

    const-string p5, "remove macro"

    invoke-static {p3, p4, p5}, Lcom/google/tagmanager/Runtime;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->d()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->c()Ljava/util/List;

    move-result-object p4

    const-string p5, "add tag"

    invoke-static {p3, p4, p5}, Lcom/google/tagmanager/Runtime;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->j()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->i()Ljava/util/List;

    move-result-object p4

    const-string p5, "remove tag"

    invoke-static {p3, p4, p5}, Lcom/google/tagmanager/Runtime;->h(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x0

    move p4, p3

    :goto_0
    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->b()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    const-string v0, "Unknown"

    if-ge p4, p5, :cond_3

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->b()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/tagmanager/s0$b;

    invoke-interface {p6}, Lcom/google/tagmanager/w;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_2

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->g:Ljava/util/Map;

    invoke-static {p5}, Lcom/google/tagmanager/Runtime;->e(Lcom/google/tagmanager/s0$b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/tagmanager/Runtime;->f(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/tagmanager/Runtime$b;->e(Lcom/google/tagmanager/s0$f;)V

    invoke-virtual {v1, p2, p5}, Lcom/google/tagmanager/Runtime$b;->a(Lcom/google/tagmanager/s0$f;Lcom/google/tagmanager/s0$b;)V

    invoke-virtual {v1, p2, v0}, Lcom/google/tagmanager/Runtime$b;->b(Lcom/google/tagmanager/s0$f;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->h()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->h()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/tagmanager/s0$b;

    invoke-interface {p6}, Lcom/google/tagmanager/w;->a()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->g()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p3, p5, :cond_4

    invoke-virtual {p2}, Lcom/google/tagmanager/s0$f;->g()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p5, v0

    :goto_2
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->g:Ljava/util/Map;

    invoke-static {p4}, Lcom/google/tagmanager/Runtime;->e(Lcom/google/tagmanager/s0$b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/tagmanager/Runtime;->f(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/tagmanager/Runtime$b;->e(Lcom/google/tagmanager/s0$f;)V

    invoke-virtual {v1, p2, p4}, Lcom/google/tagmanager/Runtime$b;->c(Lcom/google/tagmanager/s0$f;Lcom/google/tagmanager/s0$b;)V

    invoke-virtual {v1, p2, p5}, Lcom/google/tagmanager/Runtime$b;->d(Lcom/google/tagmanager/s0$f;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/google/tagmanager/Runtime;->a:Lcom/google/tagmanager/s0$d;

    invoke-virtual {p1}, Lcom/google/tagmanager/s0$d;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/tagmanager/s0$b;

    invoke-virtual {p4}, Lcom/google/tagmanager/s0$b;->a()Ljava/util/Map;

    move-result-object p5

    sget-object p6, Lcom/google/analytics/containertag/common/Key;->NOT_DEFAULT_MACRO:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {p6}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lb/a/a/a/a/a/a;

    invoke-static {p5}, Lcom/google/tagmanager/a1;->i(Lb/a/a/a/a/a/a;)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_7

    iget-object p5, p0, Lcom/google/tagmanager/Runtime;->g:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static {p5, p6}, Lcom/google/tagmanager/Runtime;->f(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$b;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/google/tagmanager/Runtime$b;->f(Lcom/google/tagmanager/s0$b;)V

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "resource cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/util/Map;Lcom/google/tagmanager/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/z;",
            ">;",
            "Lcom/google/tagmanager/z;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/tagmanager/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/tagmanager/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate function type name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/tagmanager/z;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static e(Lcom/google/tagmanager/s0$b;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/s0$b;->a()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/google/analytics/containertag/common/Key;->INSTANCE_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a/a/a/a/a/a;

    invoke-static {p0}, Lcom/google/tagmanager/a1;->k(Lb/a/a/a/a/a/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/Runtime$b;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Runtime$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/tagmanager/Runtime$b;

    invoke-direct {v0}, Lcom/google/tagmanager/Runtime$b;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static h(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/s0$b;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " operation. Using default rule name instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/i0;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method b(Lcom/google/tagmanager/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->a(Ljava/util/Map;Lcom/google/tagmanager/z;)V

    return-void
.end method

.method c(Lcom/google/tagmanager/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->c:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->a(Ljava/util/Map;Lcom/google/tagmanager/z;)V

    return-void
.end method

.method d(Lcom/google/tagmanager/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->b:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->a(Ljava/util/Map;Lcom/google/tagmanager/z;)V

    return-void
.end method

.method public declared-synchronized g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/h;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/h;

    iget-object v1, v0, Lcom/google/analytics/containertag/proto/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/analytics/containertag/proto/h;->c:Ljava/lang/String;

    const-string v2, "gaExperiment:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->f:Lcom/google/tagmanager/n;

    invoke-static {v1, v0}, Lcom/google/tagmanager/y;->b(Lcom/google/tagmanager/n;Lcom/google/analytics/containertag/proto/h;)V

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored supplemental: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i0;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
