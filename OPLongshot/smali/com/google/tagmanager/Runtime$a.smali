.class Lcom/google/tagmanager/Runtime$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/tagmanager/ObjectAndStatic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lb/a/a/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lb/a/a/a/a/a/a;


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/Runtime$a;->a:Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/a/a;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/nano/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/tagmanager/Runtime$a;->b:Lb/a/a/a/a/a/a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/nano/e;->a()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
