.class public final Lcom/google/tagmanager/protobuf/nano/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:I

.field final b:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/tagmanager/protobuf/nano/g;->a:I

    iput-object p2, p0, Lcom/google/tagmanager/protobuf/nano/g;->b:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/tagmanager/protobuf/nano/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/tagmanager/protobuf/nano/g;

    iget v1, p0, Lcom/google/tagmanager/protobuf/nano/g;->a:I

    iget v3, p1, Lcom/google/tagmanager/protobuf/nano/g;->a:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/g;->b:[B

    iget-object p1, p1, Lcom/google/tagmanager/protobuf/nano/g;->b:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/tagmanager/protobuf/nano/g;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/g;->b:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
