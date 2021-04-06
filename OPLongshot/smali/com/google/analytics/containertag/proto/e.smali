.class public final Lcom/google/analytics/containertag/proto/e;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# static fields
.field public static final e:[Lcom/google/analytics/containertag/proto/e;


# instance fields
.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/e;

    sput-object v0, Lcom/google/analytics/containertag/proto/e;->e:[Lcom/google/analytics/containertag/proto/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/e;->c:I

    iput v0, p0, Lcom/google/analytics/containertag/proto/e;->d:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 3

    iget v0, p0, Lcom/google/analytics/containertag/proto/e;->c:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget v1, p0, Lcom/google/analytics/containertag/proto/e;->d:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v0
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/e;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/e;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/e;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

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

    iput v0, p0, Lcom/google/analytics/containertag/proto/e;->d:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/e;->c:I

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/e;

    iget v1, p0, Lcom/google/analytics/containertag/proto/e;->c:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/e;->c:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/google/analytics/containertag/proto/e;->d:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/e;->d:I

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

    iget v0, p0, Lcom/google/analytics/containertag/proto/e;->c:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/analytics/containertag/proto/e;->d:I

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
