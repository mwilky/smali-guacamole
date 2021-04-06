.class public final Lcom/google/analytics/containertag/proto/Serving$ServingValue;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# static fields
.field public static final j:Lcom/google/tagmanager/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/nano/Extension<",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:[I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:[I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$1;-><init>()V

    const/16 v1, 0x65

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/Extension;->create(ILcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Lcom/google/tagmanager/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->j:Lcom/google/tagmanager/protobuf/nano/Extension;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    sget-object v0, Lcom/google/tagmanager/protobuf/nano/h;->a:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->f:I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->h:I

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->i:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 7

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget v5, v0, v3

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v4, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    array-length v2, v0

    move v3, v1

    move v5, v3

    :goto_2
    if-ge v3, v2, :cond_2

    aget v6, v0, v3

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v4, v5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    if-eqz v0, :cond_5

    array-length v2, v0

    if-lez v2, :cond_5

    array-length v2, v0

    move v3, v1

    move v5, v3

    :goto_3
    if-ge v3, v2, :cond_4

    aget v6, v0, v3

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v4, v5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_5
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->f:I

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v0

    add-int/2addr v4, v0

    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    array-length v2, v0

    move v3, v1

    :goto_4
    if-ge v1, v2, :cond_7

    aget v5, v0, v1

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v4, v3

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_8
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->h:I

    if-eqz v0, :cond_9

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v0

    add-int/2addr v4, v0

    :cond_9
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->i:I

    if-eqz v0, :cond_a

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v0

    add-int/2addr v4, v0

    :cond_a
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v4
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    if-eq v0, v1, :cond_7

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->h(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->i:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->h:I

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    :goto_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->f:I

    goto :goto_0

    :cond_7
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    :goto_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_8

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :cond_9
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    :goto_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_a

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :cond_b
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    :goto_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_c

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :cond_d
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->f:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->f:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->h:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->h:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->i:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->i:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v1, :cond_2

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    if-nez v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    if-nez v2, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_5

    :cond_4
    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->f:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    if-nez v2, :cond_6

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method
