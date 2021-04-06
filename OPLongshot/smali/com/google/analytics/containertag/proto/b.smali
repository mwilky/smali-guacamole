.class public final Lcom/google/analytics/containertag/proto/b;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# static fields
.field public static final h:[Lcom/google/analytics/containertag/proto/b;


# instance fields
.field public c:[I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/b;

    sput-object v0, Lcom/google/analytics/containertag/proto/b;->h:[Lcom/google/analytics/containertag/proto/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    sget-object v0, Lcom/google/tagmanager/protobuf/nano/h;->a:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/b;->d:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/b;->e:I

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/b;->f:Z

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/b;->g:Z

    return-void
.end method


# virtual methods
.method public b()I
    .locals 7

    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/b;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/b;->a(IZ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/analytics/containertag/proto/b;->d:I

    invoke-static {v3, v4}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v2, v4, :cond_1

    aget v6, v3, v2

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v5

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    array-length v2, v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/b;->e:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/b;->f:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/b;->a(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v0
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/b;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/b;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/b;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

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
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/b;->f:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/b;->e:I

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    :goto_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/b;->d:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/b;->g:Z

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/b;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/b;->c:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/analytics/containertag/proto/b;->d:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/b;->d:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/google/analytics/containertag/proto/b;->e:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/b;->e:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/b;->f:Z

    iget-boolean v3, p1, Lcom/google/analytics/containertag/proto/b;->f:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/b;->g:Z

    iget-boolean v3, p1, Lcom/google/analytics/containertag/proto/b;->g:Z

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

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/b;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/b;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/b;->f:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/b;->g:Z

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method
