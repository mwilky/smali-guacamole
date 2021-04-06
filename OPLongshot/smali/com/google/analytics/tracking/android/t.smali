.class public Lcom/google/analytics/tracking/android/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/t;->a:Ljava/util/Map;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/t;
    .locals 3

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EVENT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->e(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    new-instance v0, Lcom/google/analytics/tracking/android/t;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/t;-><init>()V

    const-string v1, "&t"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v1, "&ec"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string p0, "&ea"

    invoke-virtual {v0, p0, p1}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string p0, "&el"

    invoke-virtual {v0, p0, p2}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "&ev"

    invoke-virtual {v0, p1, p0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/t;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->e(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/t;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p1, " MapBuilder.set() called with a null paramName."

    invoke-static {p1}, Lcom/google/analytics/tracking/android/s;->f(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;
    .locals 2

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->MAP_BUILDER_SET_CAMPAIGN_PARAMS:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->e(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    invoke-static {p1}, Lcom/google/analytics/tracking/android/d0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/analytics/tracking/android/d0;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "utm_content"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&cc"

    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v0, "utm_medium"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&cm"

    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v0, "utm_campaign"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&cn"

    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v0, "utm_source"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&cs"

    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v0, "utm_term"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&ck"

    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v0, "utm_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&ci"

    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v0, "gclid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&gclid"

    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v0, "dclid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&dclid"

    invoke-virtual {p0, v1, v0}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    const-string v0, "gmob_t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "&gmob_t"

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/t;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/t;

    return-object p0
.end method
