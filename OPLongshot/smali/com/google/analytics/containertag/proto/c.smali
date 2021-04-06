.class public final Lcom/google/analytics/containertag/proto/c;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# static fields
.field public static final h:[Lcom/google/analytics/containertag/proto/c;


# instance fields
.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Z

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/c;

    sput-object v0, Lcom/google/analytics/containertag/proto/c;->h:[Lcom/google/analytics/containertag/proto/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/c;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/c;->d:J

    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Lcom/google/analytics/containertag/proto/c;->e:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/containertag/proto/c;->f:Z

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/c;->g:J

    return-void
.end method


# virtual methods
.method public b()I
    .locals 8

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/c;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/c;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/tagmanager/protobuf/nano/b;->m(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/c;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0, v2, v3}, Lcom/google/tagmanager/protobuf/nano/b;->g(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/c;->e:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0, v2, v3}, Lcom/google/tagmanager/protobuf/nano/b;->g(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/c;->f:Z

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/google/tagmanager/protobuf/nano/b;->a(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iget-wide v2, p0, Lcom/google/analytics/containertag/proto/c;->g:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-static {v0, v2, v3}, Lcom/google/tagmanager/protobuf/nano/b;->g(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v1
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/c;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/c;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/c;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

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
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/c;->g:J

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/c;->f:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/c;->e:J

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/containertag/proto/c;->d:J

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/c;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/c;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/c;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/analytics/containertag/proto/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/c;->d:J

    iget-wide v5, p1, Lcom/google/analytics/containertag/proto/c;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/c;->e:J

    iget-wide v5, p1, Lcom/google/analytics/containertag/proto/c;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/c;->f:Z

    iget-boolean v3, p1, Lcom/google/analytics/containertag/proto/c;->f:Z

    if-ne v1, v3, :cond_4

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/c;->g:J

    iget-wide v5, p1, Lcom/google/analytics/containertag/proto/c;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v1, :cond_3

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/c;->d:J

    const/16 v0, 0x20

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/c;->e:J

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/c;->f:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v3, p0, Lcom/google/analytics/containertag/proto/c;->g:J

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method
