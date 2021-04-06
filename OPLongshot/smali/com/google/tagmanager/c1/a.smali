.class public final Lcom/google/tagmanager/c1/a;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# instance fields
.field public c:J

.field public d:Lcom/google/analytics/containertag/proto/f;

.field public e:Lcom/google/analytics/containertag/proto/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tagmanager/c1/a;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    iput-object v0, p0, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 3

    iget-wide v0, p0, Lcom/google/tagmanager/c1/a;->c:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/tagmanager/protobuf/nano/b;->g(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v0
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/c1/a;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/c1/a;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/c1/a;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

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
    new-instance v0, Lcom/google/analytics/containertag/proto/i;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/i;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/analytics/containertag/proto/f;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/f;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/tagmanager/c1/a;->c:J

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/tagmanager/c1/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/tagmanager/c1/a;

    iget-wide v3, p0, Lcom/google/tagmanager/c1/a;->c:J

    iget-wide v5, p1, Lcom/google/tagmanager/c1/a;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    invoke-virtual {v1, v3}, Lcom/google/analytics/containertag/proto/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    invoke-virtual {v1, v3}, Lcom/google/analytics/containertag/proto/i;->equals(Ljava/lang/Object;)Z

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
    .locals 4

    iget-wide v0, p0, Lcom/google/tagmanager/c1/a;->c:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/f;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/i;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    return v1
.end method
