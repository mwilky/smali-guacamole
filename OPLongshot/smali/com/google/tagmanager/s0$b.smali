.class public Lcom/google/tagmanager/s0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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

.field private final b:Lb/a/a/a/a/a/a;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lb/a/a/a/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/a/a/a/a/a/a;",
            ">;",
            "Lb/a/a/a/a/a/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/tagmanager/s0$b;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/tagmanager/s0$b;->b:Lb/a/a/a/a/a/a;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lb/a/a/a/a/a/a;Lcom/google/tagmanager/s0$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/s0$b;-><init>(Ljava/util/Map;Lb/a/a/a/a/a/a;)V

    return-void
.end method

.method public static b()Lcom/google/tagmanager/s0$c;
    .locals 2

    new-instance v0, Lcom/google/tagmanager/s0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/tagmanager/s0$c;-><init>(Lcom/google/tagmanager/s0$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/a/a/a/a/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/s0$b;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/tagmanager/s0$b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pushAfterEvaluate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/s0$b;->b:Lb/a/a/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
