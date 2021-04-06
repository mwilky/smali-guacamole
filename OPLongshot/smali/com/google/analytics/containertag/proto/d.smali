.class public final Lcom/google/analytics/containertag/proto/d;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# instance fields
.field public c:[Lb/a/a/a/a/a/a;

.field public d:[Lb/a/a/a/a/a/a;

.field public e:[Lcom/google/analytics/containertag/proto/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    sget-object v0, Lb/a/a/a/a/a/a;->p:[Lb/a/a/a/a/a/a;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    sget-object v0, Lcom/google/analytics/containertag/proto/c;->h:[Lcom/google/analytics/containertag/proto/c;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 7

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    const/4 v6, 0x1

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    if-eqz v0, :cond_2

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    if-eqz v0, :cond_3

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    const/4 v5, 0x3

    invoke-static {v5, v3}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v4
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/d;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/d;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/d;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

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
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/c;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    if-eqz v3, :cond_4

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    :goto_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    new-instance v2, Lcom/google/analytics/containertag/proto/c;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/c;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/google/analytics/containertag/proto/c;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/c;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    aget-object v0, v0, v1

    goto/16 :goto_7

    :cond_6
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_3

    :cond_7
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lb/a/a/a/a/a/a;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    if-eqz v3, :cond_8

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    :goto_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    new-instance v2, Lb/a/a/a/a/a/a;

    invoke-direct {v2}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    new-instance v2, Lb/a/a/a/a/a/a;

    invoke-direct {v2}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v1

    goto :goto_7

    :cond_a
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_5

    :cond_b
    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    new-array v0, v0, [Lb/a/a/a/a/a/a;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    if-eqz v3, :cond_c

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    :goto_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    new-instance v2, Lb/a/a/a/a/a/a;

    invoke-direct {v2}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    new-instance v2, Lb/a/a/a/a/a/a;

    invoke-direct {v2}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    goto/16 :goto_0

    :cond_e
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/d;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

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

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    goto :goto_2

    :cond_0
    const/16 v0, 0x11

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/d;->c:[Lb/a/a/a/a/a/a;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    aget-object v4, v3, v2

    if-nez v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lb/a/a/a/a/a/a;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    if-nez v2, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_5

    :cond_3
    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/d;->d:[Lb/a/a/a/a/a/a;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    mul-int/lit8 v0, v0, 0x1f

    aget-object v4, v3, v2

    if-nez v4, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lb/a/a/a/a/a/a;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    if-nez v2, :cond_6

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_8

    :cond_6
    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/d;->e:[Lcom/google/analytics/containertag/proto/c;

    array-length v4, v3

    if-ge v2, v4, :cond_8

    mul-int/lit8 v0, v0, 0x1f

    aget-object v4, v3, v2

    if-nez v4, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/c;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    :goto_8
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method
