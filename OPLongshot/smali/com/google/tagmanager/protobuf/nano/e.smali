.class public abstract Lcom/google/tagmanager/protobuf/nano/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/e;->b()I

    :cond_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v0
.end method

.method public abstract c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/f;->c(Lcom/google/tagmanager/protobuf/nano/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
