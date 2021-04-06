.class public final Lcom/google/analytics/containertag/proto/g;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# static fields
.field public static final m:[Lcom/google/analytics/containertag/proto/g;


# instance fields
.field public c:[I

.field public d:[I

.field public e:[I

.field public f:[I

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[I

.field public l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/g;

    sput-object v0, Lcom/google/analytics/containertag/proto/g;->m:[Lcom/google/analytics/containertag/proto/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    sget-object v0, Lcom/google/tagmanager/protobuf/nano/h;->a:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 7

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

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

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

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

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

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

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    if-eqz v0, :cond_7

    array-length v2, v0

    if-lez v2, :cond_7

    array-length v2, v0

    move v3, v1

    move v5, v3

    :goto_4
    if-ge v3, v2, :cond_6

    aget v6, v0, v3

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    add-int/2addr v4, v5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    if-eqz v0, :cond_9

    array-length v2, v0

    if-lez v2, :cond_9

    array-length v2, v0

    move v3, v1

    move v5, v3

    :goto_5
    if-ge v3, v2, :cond_8

    aget v6, v0, v3

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    add-int/2addr v4, v5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_9
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    if-eqz v0, :cond_b

    array-length v2, v0

    if-lez v2, :cond_b

    array-length v2, v0

    move v3, v1

    move v5, v3

    :goto_6
    if-ge v3, v2, :cond_a

    aget v6, v0, v3

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/2addr v4, v5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_b
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    if-eqz v0, :cond_d

    array-length v2, v0

    if-lez v2, :cond_d

    array-length v2, v0

    move v3, v1

    move v5, v3

    :goto_7
    if-ge v3, v2, :cond_c

    aget v6, v0, v3

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    add-int/2addr v4, v5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    if-eqz v0, :cond_f

    array-length v2, v0

    if-lez v2, :cond_f

    array-length v2, v0

    move v3, v1

    move v5, v3

    :goto_8
    if-ge v3, v2, :cond_e

    aget v6, v0, v3

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    add-int/2addr v4, v5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_f
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    if-eqz v0, :cond_11

    array-length v2, v0

    if-lez v2, :cond_11

    array-length v2, v0

    move v3, v1

    move v5, v3

    :goto_9
    if-ge v3, v2, :cond_10

    aget v6, v0, v3

    invoke-static {v6}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    add-int/2addr v4, v5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_11
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    if-eqz v0, :cond_13

    array-length v2, v0

    if-lez v2, :cond_13

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v1, v2, :cond_12

    aget v5, v0, v1

    invoke-static {v5}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    add-int/2addr v4, v3

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v0

    :cond_13
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v4
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/g;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/g;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/analytics/containertag/proto/g;
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    goto/16 :goto_b

    :sswitch_0
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    :goto_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x48

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    :goto_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    :goto_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    :goto_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    :goto_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    :goto_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    :goto_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_7

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    :goto_8
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_8

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    :goto_9
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_9

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    :goto_a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_a

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_a
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v3

    goto/16 :goto_0

    :sswitch_a
    return-object p0

    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->h(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/g;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->c:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->d:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->e:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->f:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->g:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->h:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->i:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->j:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->k:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/g;->l:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

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

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    if-nez v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    if-nez v2, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_5

    :cond_4
    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    if-nez v2, :cond_6

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_6
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    if-nez v2, :cond_8

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_8
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    array-length v4, v3

    if-ge v2, v4, :cond_9

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    if-nez v2, :cond_a

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_a
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    array-length v4, v3

    if-ge v2, v4, :cond_b

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    if-nez v2, :cond_c

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_c
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    if-nez v2, :cond_e

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_e
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    array-length v4, v3

    if-ge v2, v4, :cond_f

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    if-nez v2, :cond_10

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_10
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    array-length v4, v3

    if-ge v2, v4, :cond_11

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_11
    :goto_11
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    if-nez v2, :cond_12

    mul-int/lit8 v0, v0, 0x1f

    goto :goto_13

    :cond_12
    move v2, v1

    :goto_12
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    array-length v4, v3

    if-ge v2, v4, :cond_13

    mul-int/lit8 v0, v0, 0x1f

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_13
    :goto_13
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v2, :cond_14

    goto :goto_14

    :cond_14
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    return v0
.end method
