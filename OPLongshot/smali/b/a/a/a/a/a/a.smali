.class public final Lb/a/a/a/a/a/a;
.super Lcom/google/tagmanager/protobuf/nano/c;
.source ""


# static fields
.field public static final p:[Lb/a/a/a/a/a/a;


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:[Lb/a/a/a/a/a/a;

.field public f:[Lb/a/a/a/a/a/a;

.field public g:[Lb/a/a/a/a/a/a;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Z

.field public l:[Lb/a/a/a/a/a/a;

.field public m:Ljava/lang/String;

.field public n:[I

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lb/a/a/a/a/a/a;

    sput-object v0, Lb/a/a/a/a/a/a;->p:[Lb/a/a/a/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/c;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lb/a/a/a/a/a/a;->c:I

    const-string v0, ""

    iput-object v0, p0, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    sget-object v1, Lb/a/a/a/a/a/a;->p:[Lb/a/a/a/a/a/a;

    iput-object v1, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    iput-object v1, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    iput-object v1, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    iput-object v0, p0, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/a/a/a;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lb/a/a/a/a/a/a;->j:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lb/a/a/a/a/a/a;->k:Z

    iput-object v1, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    iput-object v0, p0, Lb/a/a/a/a/a/a;->m:Ljava/lang/String;

    sget-object v0, Lcom/google/tagmanager/protobuf/nano/h;->a:[I

    iput-object v0, p0, Lb/a/a/a/a/a/a;->n:[I

    iput-boolean v2, p0, Lb/a/a/a/a/a/a;->o:Z

    return-void
.end method


# virtual methods
.method public b()I
    .locals 9

    iget v0, p0, Lb/a/a/a/a/a/a;->c:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/nano/b;->e(II)I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    iget-object v3, p0, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    iget-object v5, p0, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/tagmanager/protobuf/nano/b;->m(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    iget-object v3, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    if-eqz v3, :cond_1

    array-length v5, v3

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    const/4 v8, 0x3

    invoke-static {v8, v7}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    if-eqz v3, :cond_2

    array-length v5, v3

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    const/4 v8, 0x4

    invoke-static {v8, v7}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    if-eqz v3, :cond_3

    array-length v5, v3

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    const/4 v8, 0x5

    invoke-static {v8, v7}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x6

    iget-object v5, p0, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/tagmanager/protobuf/nano/b;->m(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    iget-object v3, p0, Lb/a/a/a/a/a/a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x7

    iget-object v5, p0, Lb/a/a/a/a/a/a;->i:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/tagmanager/protobuf/nano/b;->m(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    iget-wide v5, p0, Lb/a/a/a/a/a/a;->j:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    invoke-static {v3, v5, v6}, Lcom/google/tagmanager/protobuf/nano/b;->g(IJ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    iget-boolean v3, p0, Lb/a/a/a/a/a/a;->o:Z

    if-eqz v3, :cond_7

    const/16 v5, 0x9

    invoke-static {v5, v3}, Lcom/google/tagmanager/protobuf/nano/b;->a(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    iget-object v3, p0, Lb/a/a/a/a/a/a;->n:[I

    if-eqz v3, :cond_9

    array-length v5, v3

    if-lez v5, :cond_9

    array-length v5, v3

    move v6, v2

    move v7, v6

    :goto_3
    if-ge v6, v5, :cond_8

    aget v8, v3, v6

    invoke-static {v8}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    add-int/2addr v0, v7

    iget-object v3, p0, Lb/a/a/a/a/a/a;->n:[I

    array-length v3, v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    :cond_9
    iget-object v1, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    if-eqz v1, :cond_a

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_a

    aget-object v5, v1, v2

    const/16 v6, 0xb

    invoke-static {v6, v5}, Lcom/google/tagmanager/protobuf/nano/b;->i(ILcom/google/tagmanager/protobuf/nano/e;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    iget-boolean v1, p0, Lb/a/a/a/a/a/a;->k:Z

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/google/tagmanager/protobuf/nano/b;->a(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lb/a/a/a/a/a/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lb/a/a/a/a/a/a;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/b;->m(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/h;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/nano/e;->a:I

    return v0
.end method

.method public bridge synthetic c(Lcom/google/tagmanager/protobuf/nano/a;)Lcom/google/tagmanager/protobuf/nano/e;
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/a;->e(Lcom/google/tagmanager/protobuf/nano/a;)Lb/a/a/a/a/a/a;

    return-object p0
.end method

.method public e(Lcom/google/tagmanager/protobuf/nano/a;)Lb/a/a/a/a/a/a;
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v1, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    goto/16 :goto_c

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/a;->m:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->j()Z

    move-result v0

    iput-boolean v0, p0, Lb/a/a/a/a/a/a;->k:Z

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v3, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    add-int/2addr v0, v3

    new-array v0, v0, [Lb/a/a/a/a/a/a;

    iget-object v4, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    if-eqz v4, :cond_2

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v0, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    :goto_2
    iget-object v0, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_3

    new-instance v2, Lb/a/a/a/a/a/a;

    invoke-direct {v2}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v2, v0, v3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lb/a/a/a/a/a/a;

    invoke-direct {v1}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v1, v0, v3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v3

    goto/16 :goto_a

    :sswitch_3
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v3, p0, Lb/a/a/a/a/a/a;->n:[I

    array-length v4, v3

    add-int/2addr v0, v4

    new-array v0, v0, [I

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lb/a/a/a/a/a/a;->n:[I

    :goto_3
    iget-object v0, p0, Lb/a/a/a/a/a/a;->n:[I

    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v4, v2, :cond_4

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v2

    aput v2, v0, v4

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v1

    aput v1, v0, v4

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->j()Z

    move-result v0

    iput-boolean v0, p0, Lb/a/a/a/a/a/a;->o:Z

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/a/a/a/a;->j:J

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/a;->i:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v3, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    array-length v3, v3

    :goto_4
    add-int/2addr v0, v3

    new-array v0, v0, [Lb/a/a/a/a/a/a;

    iget-object v4, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    if-eqz v4, :cond_6

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iput-object v0, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    :goto_5
    iget-object v0, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_7

    new-instance v2, Lb/a/a/a/a/a/a;

    invoke-direct {v2}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v2, v0, v3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    new-instance v1, Lb/a/a/a/a/a/a;

    invoke-direct {v1}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v1, v0, v3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v3

    goto/16 :goto_a

    :sswitch_9
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v3, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_6

    :cond_8
    array-length v3, v3

    :goto_6
    add-int/2addr v0, v3

    new-array v0, v0, [Lb/a/a/a/a/a/a;

    iget-object v4, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    if-eqz v4, :cond_9

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iput-object v0, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    :goto_7
    iget-object v0, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_a

    new-instance v2, Lb/a/a/a/a/a/a;

    invoke-direct {v2}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v2, v0, v3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    new-instance v1, Lb/a/a/a/a/a/a;

    invoke-direct {v1}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v1, v0, v3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v3

    goto :goto_a

    :sswitch_a
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->c(Lcom/google/tagmanager/protobuf/nano/a;I)I

    move-result v0

    iget-object v3, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_8

    :cond_b
    array-length v3, v3

    :goto_8
    add-int/2addr v0, v3

    new-array v0, v0, [Lb/a/a/a/a/a/a;

    iget-object v4, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    if-eqz v4, :cond_c

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    iput-object v0, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    :goto_9
    iget-object v0, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_d

    new-instance v2, Lb/a/a/a/a/a/a;

    invoke-direct {v2}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v2, v0, v3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->x()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_d
    new-instance v1, Lb/a/a/a/a/a/a;

    invoke-direct {v1}, Lb/a/a/a/a/a/a;-><init>()V

    aput-object v1, v0, v3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    aget-object v0, v0, v3

    :goto_a
    invoke-virtual {p1, v0}, Lcom/google/tagmanager/protobuf/nano/a;->p(Lcom/google/tagmanager/protobuf/nano/e;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/a;->n()I

    move-result v0

    if-eq v0, v1, :cond_f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f

    const/4 v2, 0x5

    if-eq v0, v2, :cond_f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_f

    const/4 v2, 0x7

    if-eq v0, v2, :cond_f

    const/16 v2, 0x8

    if-eq v0, v2, :cond_f

    const/16 v2, 0x9

    if-ne v0, v2, :cond_e

    goto :goto_b

    :cond_e
    iput v1, p0, Lb/a/a/a/a/a/a;->c:I

    goto/16 :goto_0

    :cond_f
    :goto_b
    iput v0, p0, Lb/a/a/a/a/a/a;->c:I

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    :cond_10
    :goto_c
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->h(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x5a -> :sswitch_2
        0x60 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/a/a/a/a/a/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb/a/a/a/a/a/a;

    iget v1, p0, Lb/a/a/a/a/a/a;->c:I

    iget v3, p1, Lb/a/a/a/a/a/a;->c:I

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    iget-object v3, p1, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    iget-object v3, p1, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    iget-object v3, p1, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lb/a/a/a/a/a/a;->i:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lb/a/a/a/a/a/a;->i:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lb/a/a/a/a/a/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-wide v3, p0, Lb/a/a/a/a/a/a;->j:J

    iget-wide v5, p1, Lb/a/a/a/a/a/a;->j:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lb/a/a/a/a/a/a;->k:Z

    iget-boolean v3, p1, Lb/a/a/a/a/a/a;->k:Z

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    iget-object v3, p1, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/a/a/a/a/a/a;->m:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lb/a/a/a/a/a/a;->m:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_5
    iget-object v3, p1, Lb/a/a/a/a/a/a;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lb/a/a/a/a/a/a;->n:[I

    iget-object v3, p1, Lb/a/a/a/a/a/a;->n:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lb/a/a/a/a/a/a;->o:Z

    iget-boolean v3, p1, Lb/a/a/a/a/a/a;->o:Z

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v1, :cond_6

    if-nez p1, :cond_7

    goto :goto_4

    :cond_6
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lb/a/a/a/a/a/a;->c:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    iget-object v0, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    if-nez v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_3

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    aget-object v4, v3, v0

    if-nez v4, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lb/a/a/a/a/a/a;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v0, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    if-nez v0, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_6

    :cond_4
    move v0, v2

    :goto_4
    iget-object v3, p0, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    array-length v4, v3

    if-ge v0, v4, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    aget-object v4, v3, v0

    if-nez v4, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lb/a/a/a/a/a/a;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    iget-object v0, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    if-nez v0, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_9

    :cond_7
    move v0, v2

    :goto_7
    iget-object v3, p0, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    array-length v4, v3

    if-ge v0, v4, :cond_9

    mul-int/lit8 v1, v1, 0x1f

    aget-object v4, v3, v0

    if-nez v4, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lb/a/a/a/a/a/a;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    :goto_9
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb/a/a/a/a/a/a;->i:Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lb/a/a/a/a/a/a;->j:J

    const/16 v0, 0x20

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lb/a/a/a/a/a/a;->k:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_c

    :cond_c
    move v0, v3

    :goto_c
    add-int/2addr v1, v0

    iget-object v0, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    if-nez v0, :cond_d

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_f

    :cond_d
    move v0, v2

    :goto_d
    iget-object v5, p0, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    array-length v6, v5

    if-ge v0, v6, :cond_f

    mul-int/lit8 v1, v1, 0x1f

    aget-object v6, v5, v0

    if-nez v6, :cond_e

    move v5, v2

    goto :goto_e

    :cond_e
    aget-object v5, v5, v0

    invoke-virtual {v5}, Lb/a/a/a/a/a/a;->hashCode()I

    move-result v5

    :goto_e
    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_f
    :goto_f
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lb/a/a/a/a/a/a;->m:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v1, v0

    iget-object v0, p0, Lb/a/a/a/a/a/a;->n:[I

    if-nez v0, :cond_11

    mul-int/lit8 v1, v1, 0x1f

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_11
    iget-object v5, p0, Lb/a/a/a/a/a/a;->n:[I

    array-length v6, v5

    if-ge v0, v6, :cond_12

    mul-int/lit8 v1, v1, 0x1f

    aget v5, v5, v0

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_12
    :goto_12
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lb/a/a/a/a/a/a;->o:Z

    if-eqz v0, :cond_13

    move v3, v4

    :cond_13
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    if-nez v0, :cond_14

    goto :goto_13

    :cond_14
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v1, v2

    return v1
.end method
