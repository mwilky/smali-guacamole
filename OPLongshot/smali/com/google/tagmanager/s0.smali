.class Lcom/google/tagmanager/s0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/s0$d;,
        Lcom/google/tagmanager/s0$e;,
        Lcom/google/tagmanager/s0$f;,
        Lcom/google/tagmanager/s0$g;,
        Lcom/google/tagmanager/s0$b;,
        Lcom/google/tagmanager/s0$c;,
        Lcom/google/tagmanager/s0$h;
    }
.end annotation


# direct methods
.method private static a(Lcom/google/analytics/containertag/proto/b;Lcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;I)Lcom/google/tagmanager/s0$b;
    .locals 6

    invoke-static {}, Lcom/google/tagmanager/s0$b;->b()Lcom/google/tagmanager/s0$c;

    move-result-object p3

    iget-object p0, p0, Lcom/google/analytics/containertag/proto/b;->c:[I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/f;->f:[Lcom/google/analytics/containertag/proto/e;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "properties"

    invoke-static {v3, v2, v4}, Lcom/google/tagmanager/s0;->f([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/analytics/containertag/proto/e;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/f;->d:[Ljava/lang/String;

    iget v4, v2, Lcom/google/analytics/containertag/proto/e;->c:I

    const-string v5, "keys"

    invoke-static {v3, v4, v5}, Lcom/google/tagmanager/s0;->f([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Lcom/google/analytics/containertag/proto/e;->d:I

    const-string v4, "values"

    invoke-static {p2, v2, v4}, Lcom/google/tagmanager/s0;->f([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/a/a/a;

    sget-object v4, Lcom/google/analytics/containertag/common/Key;->PUSH_AFTER_EVALUATE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v4}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3, v2}, Lcom/google/tagmanager/s0$c;->c(Lb/a/a/a/a/a/a;)Lcom/google/tagmanager/s0$c;

    goto :goto_1

    :cond_0
    invoke-virtual {p3, v3, v2}, Lcom/google/tagmanager/s0$c;->a(Ljava/lang/String;Lb/a/a/a/a/a/a;)Lcom/google/tagmanager/s0$c;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/tagmanager/s0$c;->b()Lcom/google/tagmanager/s0$b;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/analytics/containertag/proto/g;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/analytics/containertag/proto/f;)Lcom/google/tagmanager/s0$f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/containertag/proto/g;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/s0$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/s0$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/s0$b;",
            ">;",
            "Lcom/google/analytics/containertag/proto/f;",
            ")",
            "Lcom/google/tagmanager/s0$f;"
        }
    .end annotation

    invoke-static {}, Lcom/google/tagmanager/s0$f;->k()Lcom/google/tagmanager/s0$g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->c:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/s0$b;

    invoke-virtual {v0, v5}, Lcom/google/tagmanager/s0$g;->f(Lcom/google/tagmanager/s0$b;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/g;->d:[I

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/s0$b;

    invoke-virtual {v0, v5}, Lcom/google/tagmanager/s0$g;->e(Lcom/google/tagmanager/s0$b;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/google/analytics/containertag/proto/g;->e:[I

    array-length v1, p3

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_2

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/s0$b;

    invoke-virtual {v0, v4}, Lcom/google/tagmanager/s0$g;->c(Lcom/google/tagmanager/s0$b;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/google/analytics/containertag/proto/g;->g:[I

    array-length v1, p3

    move v2, v3

    :goto_3
    if-ge v2, v1, :cond_3

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p4, Lcom/google/analytics/containertag/proto/f;->e:[Lb/a/a/a/a/a/a;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v5, v4

    iget-object v4, v4, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/tagmanager/s0$g;->d(Ljava/lang/String;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lcom/google/analytics/containertag/proto/g;->f:[I

    array-length v1, p3

    move v2, v3

    :goto_4
    if-ge v2, v1, :cond_4

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/s0$b;

    invoke-virtual {v0, v4}, Lcom/google/tagmanager/s0$g;->i(Lcom/google/tagmanager/s0$b;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/g;->h:[I

    array-length p3, p1

    move v1, v3

    :goto_5
    if-ge v1, p3, :cond_5

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p4, Lcom/google/analytics/containertag/proto/f;->e:[Lb/a/a/a/a/a/a;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v4, v2

    iget-object v2, v2, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/tagmanager/s0$g;->j(Ljava/lang/String;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/g;->i:[I

    array-length p3, p1

    move v1, v3

    :goto_6
    if-ge v1, p3, :cond_6

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/s0$b;

    invoke-virtual {v0, v2}, Lcom/google/tagmanager/s0$g;->a(Lcom/google/tagmanager/s0$b;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/g;->k:[I

    array-length p3, p1

    move v1, v3

    :goto_7
    if-ge v1, p3, :cond_7

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p4, Lcom/google/analytics/containertag/proto/f;->e:[Lb/a/a/a/a/a/a;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v4, v2

    iget-object v2, v2, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/tagmanager/s0$g;->b(Ljava/lang/String;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lcom/google/analytics/containertag/proto/g;->j:[I

    array-length p3, p1

    move v1, v3

    :goto_8
    if-ge v1, p3, :cond_8

    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/s0$b;

    invoke-virtual {v0, v2}, Lcom/google/tagmanager/s0$g;->g(Lcom/google/tagmanager/s0$b;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    iget-object p0, p0, Lcom/google/analytics/containertag/proto/g;->l:[I

    array-length p1, p0

    :goto_9
    if-ge v3, p1, :cond_9

    aget p2, p0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p4, Lcom/google/analytics/containertag/proto/f;->e:[Lb/a/a/a/a/a/a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p2, p3, p2

    iget-object p2, p2, Lb/a/a/a/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/google/tagmanager/s0$g;->h(Ljava/lang/String;)Lcom/google/tagmanager/s0$g;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lcom/google/tagmanager/s0$g;->k()Lcom/google/tagmanager/s0$f;

    move-result-object p0

    return-object p0
.end method

.method private static c(ILcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;Ljava/util/Set;)Lb/a/a/a/a/a/a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/analytics/containertag/proto/f;",
            "[",
            "Lb/a/a/a/a/a/a;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lb/a/a/a/a/a/a;"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/f;->e:[Lb/a/a/a/a/a/a;

    const-string v2, "values"

    invoke-static {v0, p0, v2}, Lcom/google/tagmanager/s0;->f([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/a/a;

    aget-object v2, p2, p0

    if-eqz v2, :cond_0

    aget-object p0, p2, p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lb/a/a/a/a/a/a;->c:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    move-object v2, v1

    goto/16 :goto_4

    :pswitch_0
    invoke-static {v0}, Lcom/google/tagmanager/s0;->h(Lb/a/a/a/a/a/a;)Lb/a/a/a/a/a/a;

    move-result-object v2

    invoke-static {v0}, Lcom/google/tagmanager/s0;->e(Lb/a/a/a/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v4

    iget-object v4, v4, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->g:[I

    array-length v5, v4

    new-array v5, v5, [Lb/a/a/a/a/a/a;

    iput-object v5, v2, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v3, v5, :cond_4

    aget v7, v4, v3

    iget-object v8, v2, Lb/a/a/a/a/a/a;->l:[Lb/a/a/a/a/a/a;

    add-int/lit8 v9, v6, 0x1

    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/s0;->c(ILcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;Ljava/util/Set;)Lb/a/a/a/a/a/a;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v9

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/google/tagmanager/s0;->h(Lb/a/a/a/a/a/a;)Lb/a/a/a/a/a/a;

    move-result-object v2

    invoke-static {v0}, Lcom/google/tagmanager/s0;->e(Lb/a/a/a/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v3

    iget v3, v3, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->h:I

    invoke-static {v3, p1, p2, p3}, Lcom/google/tagmanager/s0;->c(ILcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;Ljava/util/Set;)Lb/a/a/a/a/a/a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/a1;->k(Lb/a/a/a/a/a/a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lb/a/a/a/a/a/a;->h:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_2
    invoke-static {v0}, Lcom/google/tagmanager/s0;->h(Lb/a/a/a/a/a/a;)Lb/a/a/a/a/a/a;

    move-result-object v2

    invoke-static {v0}, Lcom/google/tagmanager/s0;->e(Lb/a/a/a/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v4

    iget-object v5, v4, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    array-length v6, v5

    iget-object v7, v4, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    array-length v7, v7

    if-ne v6, v7, :cond_2

    array-length v6, v5

    new-array v6, v6, [Lb/a/a/a/a/a/a;

    iput-object v6, v2, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    array-length v6, v5

    new-array v6, v6, [Lb/a/a/a/a/a/a;

    iput-object v6, v2, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    array-length v6, v5

    move v7, v3

    move v8, v7

    :goto_1
    if-ge v7, v6, :cond_1

    aget v9, v5, v7

    iget-object v10, v2, Lb/a/a/a/a/a/a;->f:[Lb/a/a/a/a/a/a;

    add-int/lit8 v11, v8, 0x1

    invoke-static {v9, p1, p2, p3}, Lcom/google/tagmanager/s0;->c(ILcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;Ljava/util/Set;)Lb/a/a/a/a/a/a;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v11

    goto :goto_1

    :cond_1
    iget-object v4, v4, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v3, v5, :cond_4

    aget v7, v4, v3

    iget-object v8, v2, Lb/a/a/a/a/a/a;->g:[Lb/a/a/a/a/a/a;

    add-int/lit8 v9, v6, 0x1

    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/s0;->c(ILcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;Ljava/util/Set;)Lb/a/a/a/a/a/a;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v9

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Uneven map keys ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->d:[I

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and map values ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->e:[I

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/s0;->g(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    invoke-static {v0}, Lcom/google/tagmanager/s0;->e(Lb/a/a/a/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    invoke-static {v0}, Lcom/google/tagmanager/s0;->h(Lb/a/a/a/a/a/a;)Lb/a/a/a/a/a/a;

    move-result-object v4

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->c:[I

    array-length v5, v2

    new-array v5, v5, [Lb/a/a/a/a/a/a;

    iput-object v5, v4, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    array-length v5, v2

    move v6, v3

    :goto_3
    if-ge v3, v5, :cond_3

    aget v7, v2, v3

    iget-object v8, v4, Lb/a/a/a/a/a/a;->e:[Lb/a/a/a/a/a/a;

    add-int/lit8 v9, v6, 0x1

    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/s0;->c(ILcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;Ljava/util/Set;)Lb/a/a/a/a/a/a;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v9

    goto :goto_3

    :cond_3
    move-object v2, v4

    goto :goto_4

    :pswitch_4
    move-object v2, v0

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    aput-object v2, p2, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/s0;->g(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Value cycle detected.  Current value reference: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  Previous value references: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/s0;->g(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static d(Lcom/google/analytics/containertag/proto/f;)Lcom/google/tagmanager/s0$d;
    .locals 9

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/f;->e:[Lb/a/a/a/a/a/a;

    array-length v0, v0

    new-array v0, v0, [Lb/a/a/a/a/a/a;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/f;->e:[Lb/a/a/a/a/a/a;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p0, v0, v3}, Lcom/google/tagmanager/s0;->c(ILcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;Ljava/util/Set;)Lb/a/a/a/a/a/a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/tagmanager/s0$d;->e()Lcom/google/tagmanager/s0$e;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/f;->h:[Lcom/google/analytics/containertag/proto/b;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    invoke-static {v5, p0, v0, v4}, Lcom/google/tagmanager/s0;->a(Lcom/google/analytics/containertag/proto/b;Lcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;I)Lcom/google/tagmanager/s0$b;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_2
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/f;->i:[Lcom/google/analytics/containertag/proto/b;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    aget-object v6, v6, v5

    invoke-static {v6, p0, v0, v5}, Lcom/google/tagmanager/s0;->a(Lcom/google/analytics/containertag/proto/b;Lcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;I)Lcom/google/tagmanager/s0$b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_3
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/f;->g:[Lcom/google/analytics/containertag/proto/b;

    array-length v8, v7

    if-ge v6, v8, :cond_3

    aget-object v7, v7, v6

    invoke-static {v7, p0, v0, v6}, Lcom/google/tagmanager/s0;->a(Lcom/google/analytics/containertag/proto/b;Lcom/google/analytics/containertag/proto/f;[Lb/a/a/a/a/a/a;I)Lcom/google/tagmanager/s0$b;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/tagmanager/s0$e;->a(Lcom/google/tagmanager/s0$b;)Lcom/google/tagmanager/s0$e;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/f;->j:[Lcom/google/analytics/containertag/proto/g;

    array-length v6, v0

    :goto_4
    if-ge v1, v6, :cond_4

    aget-object v7, v0, v1

    invoke-static {v7, v3, v5, v4, p0}, Lcom/google/tagmanager/s0;->b(Lcom/google/analytics/containertag/proto/g;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/analytics/containertag/proto/f;)Lcom/google/tagmanager/s0$f;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/tagmanager/s0$e;->b(Lcom/google/tagmanager/s0$f;)Lcom/google/tagmanager/s0$e;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/f;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/tagmanager/s0$e;->e(Ljava/lang/String;)Lcom/google/tagmanager/s0$e;

    iget p0, p0, Lcom/google/analytics/containertag/proto/f;->s:I

    invoke-virtual {v2, p0}, Lcom/google/tagmanager/s0$e;->d(I)Lcom/google/tagmanager/s0$e;

    invoke-virtual {v2}, Lcom/google/tagmanager/s0$e;->c()Lcom/google/tagmanager/s0$d;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lb/a/a/a/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 2

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->j:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/c;->d(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->j:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/nano/c;->d(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/s0;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static f([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Index out of bounds detected: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/s0;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/google/tagmanager/i0;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/tagmanager/s0$h;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/s0$h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Lb/a/a/a/a/a/a;)Lb/a/a/a/a/a/a;
    .locals 2

    new-instance v0, Lb/a/a/a/a/a/a;

    invoke-direct {v0}, Lb/a/a/a/a/a/a;-><init>()V

    iget v1, p0, Lb/a/a/a/a/a/a;->c:I

    iput v1, v0, Lb/a/a/a/a/a/a;->c:I

    iget-object v1, p0, Lb/a/a/a/a/a/a;->n:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lb/a/a/a/a/a/a;->n:[I

    iget-boolean p0, p0, Lb/a/a/a/a/a/a;->o:Z

    if-eqz p0, :cond_0

    iput-boolean p0, v0, Lb/a/a/a/a/a/a;->o:Z

    :cond_0
    return-object v0
.end method
