.class public final Lcom/google/tagmanager/protobuf/nano/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->o(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/b;->b(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static c(IF)I
    .locals 0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->o(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/b;->d(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static e(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->o(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/b;->f(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->k(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static g(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->o(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/tagmanager/protobuf/nano/b;->h(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/tagmanager/protobuf/nano/b;->l(J)I

    move-result p0

    return p0
.end method

.method public static i(ILcom/google/tagmanager/protobuf/nano/e;)I
    .locals 0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->o(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/b;->j(Lcom/google/tagmanager/protobuf/nano/e;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(Lcom/google/tagmanager/protobuf/nano/e;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/nano/e;->b()I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->k(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static k(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static l(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static m(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->o(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/nano/b;->n(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static n(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/nano/b;->k(I)I

    move-result v0

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p0

    return v0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/tagmanager/protobuf/nano/h;->f(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/nano/b;->k(I)I

    move-result p0

    return p0
.end method
