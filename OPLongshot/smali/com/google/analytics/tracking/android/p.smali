.class public Lcom/google/analytics/tracking/android/p;
.super Lcom/google/analytics/tracking/android/c0;
.source ""


# static fields
.field private static h:Lcom/google/analytics/tracking/android/p;


# instance fields
.field private a:Z

.field private b:Lcom/google/analytics/tracking/android/e;

.field private c:Landroid/content/Context;

.field private d:Lcom/google/analytics/tracking/android/b0;

.field private volatile e:Ljava/lang/Boolean;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/b0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/analytics/tracking/android/Logger;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/o;->q(Landroid/content/Context;)Lcom/google/analytics/tracking/android/o;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/p;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/e;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/e;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/c0;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->e:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->f:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/tracking/android/p;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/p;->b:Lcom/google/analytics/tracking/android/e;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/f;->c(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/analytics/tracking/android/p;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/w;->d(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/analytics/tracking/android/p;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/g;->j(Landroid/content/Context;)V

    new-instance p1, Lcom/google/analytics/tracking/android/i;

    invoke-direct {p1}, Lcom/google/analytics/tracking/android/i;-><init>()V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/p;->g:Lcom/google/analytics/tracking/android/Logger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static c()Lcom/google/analytics/tracking/android/p;
    .locals 2

    const-class v0, Lcom/google/analytics/tracking/android/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/p;->h:Lcom/google/analytics/tracking/android/p;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Landroid/content/Context;)Lcom/google/analytics/tracking/android/p;
    .locals 2

    const-class v0, Lcom/google/analytics/tracking/android/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/p;->h:Lcom/google/analytics/tracking/android/p;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/analytics/tracking/android/p;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/p;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/analytics/tracking/android/p;->h:Lcom/google/analytics/tracking/android/p;

    :cond_0
    sget-object p0, Lcom/google/analytics/tracking/android/p;->h:Lcom/google/analytics/tracking/android/p;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/d0;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/analytics/tracking/android/d0;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    invoke-static {}, Lcom/google/analytics/tracking/android/w;->b()Lcom/google/analytics/tracking/android/w;

    move-result-object v1

    const-string v2, "&sr"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/analytics/tracking/android/d0;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&_u"

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAUsage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->b:Lcom/google/analytics/tracking/android/e;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/e;->e(Ljava/util/Map;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hit cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_APP_OPT_OUT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->e(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/google/analytics/tracking/android/Logger;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->g:Lcom/google/analytics/tracking/android/Logger;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/google/analytics/tracking/android/b0;
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/google/analytics/tracking/android/p;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/b0;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/b0;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/b0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/analytics/tracking/android/b0;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/analytics/tracking/android/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/c0;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/p;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/analytics/tracking/android/p;->d:Lcom/google/analytics/tracking/android/b0;

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/p;->d:Lcom/google/analytics/tracking/android/b0;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "&tid"

    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/b0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object p1

    sget-object p2, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {p1, p2}, Lcom/google/analytics/tracking/android/GAUsage;->e(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    monitor-exit p0

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tracker name cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h()Z
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_DRY_RUN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->e(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/p;->a:Z

    return v0
.end method
