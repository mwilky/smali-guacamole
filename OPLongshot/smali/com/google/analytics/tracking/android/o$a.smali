.class Lcom/google/analytics/tracking/android/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/o;->e(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/analytics/tracking/android/o;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/o;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/o;->f(Lcom/google/analytics/tracking/android/o;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/o;->g(Lcom/google/analytics/tracking/android/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/p;->d(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/p;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/o;->h(Lcom/google/analytics/tracking/android/o;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/o;->i(Lcom/google/analytics/tracking/android/o;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->d(Z)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/analytics/tracking/android/t;

    invoke-direct {v1}, Lcom/google/analytics/tracking/android/t;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/o;->i(Lcom/google/analytics/tracking/android/o;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/t;->d(Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/t;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->d(Z)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/o;->j(Lcom/google/analytics/tracking/android/o;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/o;->k(Lcom/google/analytics/tracking/android/o;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/r;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/o;->n(Lcom/google/analytics/tracking/android/o;)Lcom/google/analytics/tracking/android/z;

    move-result-object v1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    iget-object v5, p0, Lcom/google/analytics/tracking/android/o$a;->a:Ljava/util/Map;

    invoke-static {v0, v5}, Lcom/google/analytics/tracking/android/o;->l(Lcom/google/analytics/tracking/android/o;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$a;->b:Lcom/google/analytics/tracking/android/o;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/o;->m(Lcom/google/analytics/tracking/android/o;)Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/z;->d(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method
