.class public final Lcom/google/analytics/containertag/proto/a;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# instance fields
.field public c:I

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/a;->d:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/a;->e:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 3

    iget v0, p0, Lcom/google/analytics/containertag/proto/a;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/a;->d:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/a;->e:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v2
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/a;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/a;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/a;
    .locals 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

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

    iput v0, p0, Lcom/google/analytics/containertag/proto/a;->e:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/a;->d:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    iput v1, p0, Lcom/google/analytics/containertag/proto/a;->c:I

    goto :goto_0

    :cond_6
    :goto_1
    iput v0, p0, Lcom/google/analytics/containertag/proto/a;->c:I

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/a;

    iget v1, p0, Lcom/google/analytics/containertag/proto/a;->c:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/a;->c:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/google/analytics/containertag/proto/a;->d:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/a;->d:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/google/analytics/containertag/proto/a;->e:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/a;->e:I

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
    .locals 2

    iget v0, p0, Lcom/google/analytics/containertag/proto/a;->c:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/analytics/containertag/proto/a;->d:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/analytics/containertag/proto/a;->e:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method
