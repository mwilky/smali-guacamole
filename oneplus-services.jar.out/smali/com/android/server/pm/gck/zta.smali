.class public abstract Lcom/android/server/pm/gck/zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/gck/zta$zta;
    }
.end annotation


# instance fields
.field private final rtg:I

.field private final sis:I

.field private final tsu:I

.field protected final you:I

.field protected final zta:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IIII)V
    .locals 6

    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/gck/zta;-><init>(IIIIB)V

    return-void
.end method

.method protected constructor <init>(IIIIB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/gck/zta;->sis:I

    iput p2, p0, Lcom/android/server/pm/gck/zta;->tsu:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz v0, :cond_1

    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lcom/android/server/pm/gck/zta;->you:I

    iput p4, p0, Lcom/android/server/pm/gck/zta;->rtg:I

    iput-byte p5, p0, Lcom/android/server/pm/gck/zta;->zta:B

    return-void
.end method

.method private oif(Lcom/android/server/pm/gck/zta$zta;)[B
    .locals 3

    iget-object v0, p1, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/gck/zta;->wtn()I

    move-result p0

    new-array p0, p0, [B

    iput-object p0, p1, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    iput v1, p1, Lcom/android/server/pm/gck/zta$zta;->tsu:I

    iput v1, p1, Lcom/android/server/pm/gck/zta$zta;->rtg:I

    goto :goto_0

    :cond_0
    array-length p0, v0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [B

    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p0, p1, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    :goto_0
    iget-object p0, p1, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    return-object p0
.end method

.method public static ywr(B)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bio([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/gck/zta;->cno([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public cno([B)[B
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/pm/gck/zta$zta;

    invoke-direct {v0}, Lcom/android/server/pm/gck/zta$zta;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/pm/gck/zta;->ssp([BIILcom/android/server/pm/gck/zta$zta;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/pm/gck/zta;->ssp([BIILcom/android/server/pm/gck/zta$zta;)V

    iget p1, v0, Lcom/android/server/pm/gck/zta$zta;->tsu:I

    iget v1, v0, Lcom/android/server/pm/gck/zta$zta;->rtg:I

    sub-int/2addr p1, v1

    new-array v1, p1, [B

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/pm/gck/zta;->qbh([BIILcom/android/server/pm/gck/zta$zta;)I

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected abstract dma(B)Z
.end method

.method public gck([B)J
    .locals 6

    array-length p1, p1

    iget v0, p0, Lcom/android/server/pm/gck/zta;->sis:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lcom/android/server/pm/gck/zta;->tsu:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/android/server/pm/gck/zta;->you:I

    if-lez p1, :cond_0

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, p1

    div-long/2addr v2, v4

    iget p0, p0, Lcom/android/server/pm/gck/zta;->rtg:I

    int-to-long p0, p0

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected igw(ILcom/android/server/pm/gck/zta$zta;)[B
    .locals 3

    iget-object v0, p2, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    iget v2, p2, Lcom/android/server/pm/gck/zta$zta;->tsu:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/gck/zta;->oif(Lcom/android/server/pm/gck/zta$zta;)[B

    move-result-object p0

    return-object p0
.end method

.method public kth([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/gck/zta;->cno([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method qbh([BIILcom/android/server/pm/gck/zta$zta;)I
    .locals 1

    iget-object v0, p4, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    if-eqz v0, :cond_1

    invoke-virtual {p0, p4}, Lcom/android/server/pm/gck/zta;->zta(Lcom/android/server/pm/gck/zta$zta;)I

    move-result p0

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget-object p3, p4, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    iget v0, p4, Lcom/android/server/pm/gck/zta$zta;->rtg:I

    invoke-static {p3, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p4, Lcom/android/server/pm/gck/zta$zta;->rtg:I

    add-int/2addr p1, p0

    iput p1, p4, Lcom/android/server/pm/gck/zta$zta;->rtg:I

    iget p2, p4, Lcom/android/server/pm/gck/zta$zta;->tsu:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p4, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    :cond_0
    return p0

    :cond_1
    iget-boolean p0, p4, Lcom/android/server/pm/gck/zta$zta;->ssp:Z

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public rtg(Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/gck/zta;->tsu([B)[B

    move-result-object p0

    return-object p0
.end method

.method abstract sis([BIILcom/android/server/pm/gck/zta$zta;)V
.end method

.method abstract ssp([BIILcom/android/server/pm/gck/zta$zta;)V
.end method

.method public tsu([B)[B
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/pm/gck/zta$zta;

    invoke-direct {v0}, Lcom/android/server/pm/gck/zta$zta;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/pm/gck/zta;->sis([BIILcom/android/server/pm/gck/zta$zta;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/pm/gck/zta;->sis([BIILcom/android/server/pm/gck/zta$zta;)V

    iget p1, v0, Lcom/android/server/pm/gck/zta$zta;->tsu:I

    new-array v1, p1, [B

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/pm/gck/zta;->qbh([BIILcom/android/server/pm/gck/zta$zta;)I

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected wtn()I
    .locals 0

    const/16 p0, 0x2000

    return p0
.end method

.method public you([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    iget-byte v4, p0, Lcom/android/server/pm/gck/zta;->zta:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/pm/gck/zta;->dma(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method zta(Lcom/android/server/pm/gck/zta$zta;)I
    .locals 0

    iget-object p0, p1, Lcom/android/server/pm/gck/zta$zta;->sis:[B

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/server/pm/gck/zta$zta;->tsu:I

    iget p1, p1, Lcom/android/server/pm/gck/zta$zta;->rtg:I

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
