.class Lcom/google/tagmanager/Runtime$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/tagmanager/CacheFactory$CacheSizeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/s0$d;Lcom/google/tagmanager/n;Lcom/google/tagmanager/m$a;Lcom/google/tagmanager/m$a;Lcom/google/tagmanager/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/CacheFactory$CacheSizeManager<",
        "Lcom/google/tagmanager/s0$b;",
        "Lcom/google/tagmanager/ObjectAndStatic<",
        "Lb/a/a/a/a/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Runtime;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Runtime;)V
    .locals 0

    iput-object p1, p0, Lcom/google/tagmanager/Runtime$1;->this$0:Lcom/google/tagmanager/Runtime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sizeOf(Lcom/google/tagmanager/s0$b;Lcom/google/tagmanager/ObjectAndStatic;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/s0$b;",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lb/a/a/a/a/a/a;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/a/a/a/a/a;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/e;->a()I

    move-result p1

    return p1
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/tagmanager/s0$b;

    check-cast p2, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/Runtime$1;->sizeOf(Lcom/google/tagmanager/s0$b;Lcom/google/tagmanager/ObjectAndStatic;)I

    move-result p1

    return p1
.end method
