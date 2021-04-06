.class public Lcom/google/tagmanager/s0$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/a/a/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lb/a/a/a/a/a/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/s0$c;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/s0$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/s0$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lb/a/a/a/a/a/a;)Lcom/google/tagmanager/s0$c;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/s0$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b()Lcom/google/tagmanager/s0$b;
    .locals 4

    new-instance v0, Lcom/google/tagmanager/s0$b;

    iget-object v1, p0, Lcom/google/tagmanager/s0$c;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/tagmanager/s0$c;->b:Lb/a/a/a/a/a/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/tagmanager/s0$b;-><init>(Ljava/util/Map;Lb/a/a/a/a/a/a;Lcom/google/tagmanager/s0$a;)V

    return-object v0
.end method

.method public c(Lb/a/a/a/a/a/a;)Lcom/google/tagmanager/s0$c;
    .locals 0

    iput-object p1, p0, Lcom/google/tagmanager/s0$c;->b:Lb/a/a/a/a/a/a;

    return-object p0
.end method
