.class public Lcom/google/tagmanager/s0$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/s0$f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/s0$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/s0$e;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/s0$e;->b:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/tagmanager/s0$e;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/s0$e;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/s0$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/s0$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/tagmanager/s0$b;)Lcom/google/tagmanager/s0$e;
    .locals 3

    invoke-virtual {p1}, Lcom/google/tagmanager/s0$b;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/containertag/common/Key;->INSTANCE_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/a/a;

    invoke-static {v0}, Lcom/google/tagmanager/a1;->k(Lb/a/a/a/a/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/s0$e;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/tagmanager/s0$e;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Lcom/google/tagmanager/s0$f;)Lcom/google/tagmanager/s0$e;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/s0$e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lcom/google/tagmanager/s0$d;
    .locals 7

    new-instance v6, Lcom/google/tagmanager/s0$d;

    iget-object v1, p0, Lcom/google/tagmanager/s0$e;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/tagmanager/s0$e;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/tagmanager/s0$e;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/tagmanager/s0$e;->d:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/s0$d;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/tagmanager/s0$a;)V

    return-object v6
.end method

.method public d(I)Lcom/google/tagmanager/s0$e;
    .locals 0

    iput p1, p0, Lcom/google/tagmanager/s0$e;->d:I

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/tagmanager/s0$e;
    .locals 0

    iput-object p1, p0, Lcom/google/tagmanager/s0$e;->c:Ljava/lang/String;

    return-object p0
.end method
