.class public final Lcom/google/analytics/containertag/proto/i;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# instance fields
.field public c:[Lcom/google/analytics/containertag/proto/h;

.field public d:Lcom/google/analytics/containertag/proto/f;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    sget-object v0, Lcom/google/analytics/containertag/proto/h;->f:[Lcom/google/analytics/containertag/proto/h;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 6

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/tagmanager/protobuf/nano/b;->m(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v1
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/i;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/i;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/i;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

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
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/analytics/containertag/proto/f;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/f;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    array-length v1, v1

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/h;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    if-eqz v3, :cond_6

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    :goto_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    new-instance v2, Lcom/google/analytics/containertag/proto/h;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/h;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    new-instance v2, Lcom/google/analytics/containertag/proto/h;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/h;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    aget-object v0, v0, v1

    goto :goto_1

    :cond_8
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/i;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    invoke-virtual {v1, v3}, Lcom/google/analytics/containertag/proto/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v1, :cond_4

    if-nez p1, :cond_5

    goto :goto_2

    :cond_4
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    goto :goto_2

    :cond_0
    const/16 v0, 0x11

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    aget-object v4, v3, v2

    if-nez v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/analytics/containertag/proto/h;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/f;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method
