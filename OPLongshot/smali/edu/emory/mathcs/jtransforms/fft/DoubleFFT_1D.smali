.class public Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;
    }
.end annotation


# static fields
.field private static final PI:D = 3.141592653589793

.field private static final TWO_PI:D = 6.283185307179586

.field private static final factors:[I


# instance fields
.field private bk1:[D

.field private bk2:[D

.field private ip:[I

.field private n:I

.field private nBluestein:I

.field private nc:I

.field private nw:I

.field private plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

.field private w:[D

.field private wtable:[D

.field private wtable_r:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-nez v1, :cond_3

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    invoke-static {p1, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->getReminder(I[I)I

    move-result v1

    const/16 v7, 0xd3

    if-lt v1, v7, :cond_2

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v0

    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->nextPow2(I)I

    move-result p1

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    int-to-double v7, p1

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    double-to-int p1, v5

    div-int/lit8 p1, p1, 0x2

    shl-int p1, v0, p1

    add-int/lit8 p1, p1, 0x2

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    new-array v3, v1, [D

    iput-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    mul-int/lit8 v1, v1, 0x2

    aget p1, p1, v2

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/lit8 p1, p1, 0x2

    if-le v1, p1, :cond_0

    shr-int/lit8 p1, v1, 0x2

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    :cond_0
    iget-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget p1, p1, v0

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    shl-int/lit8 p1, p1, 0x2

    if-le v0, p1, :cond_1

    shr-int/lit8 p1, v0, 0x2

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, p1, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    :cond_1
    invoke-direct {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluesteini()V

    goto :goto_0

    :cond_2
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0xf

    new-array p1, p1, [D

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cffti()V

    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rffti()V

    goto :goto_0

    :cond_3
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    int-to-double v7, p1

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v5, v3

    double-to-int v1, v5

    div-int/lit8 v1, v1, 0x2

    shl-int v1, v0, v1

    add-int/lit8 v1, v1, 0x2

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    new-array v3, p1, [D

    iput-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    mul-int/lit8 v3, p1, 0x2

    aget v1, v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_4

    shr-int/lit8 v1, v3, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    :cond_4
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v0, v1, v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_5

    shr-int/lit8 p1, p1, 0x2

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, p1, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .locals 0

    iget-object p0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    return-object p0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .locals 0

    iget-object p0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    return-object p0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    return-void
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    return-void
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I
    .locals 0

    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    return-void
.end method

.method private bitrv2(I[I[DI)V
    .locals 22

    shr-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-le v0, v3, :cond_0

    shl-int/lit8 v2, v2, 0x1

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, p1, 0x1

    mul-int/lit8 v4, v2, 0x4

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    move v0, v5

    :goto_1
    if-ge v0, v2, :cond_4

    mul-int/lit8 v3, v0, 0x4

    move v6, v5

    :goto_2
    if-ge v6, v0, :cond_1

    mul-int/lit8 v7, v6, 0x4

    add-int v8, v2, v0

    aget v8, p2, v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int v8, v2, v6

    aget v8, p2, v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v3

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, p3, v18

    aput-wide v16, p3, v9

    aput-wide v19, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    add-int/2addr v7, v4

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    add-int/2addr v7, v4

    sub-int/2addr v8, v4

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    add-int/2addr v7, v4

    add-int/2addr v8, v9

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    add-int/2addr v7, v1

    add-int/lit8 v8, v8, 0x2

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    sub-int/2addr v7, v4

    sub-int/2addr v8, v9

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    sub-int/2addr v7, v4

    add-int/2addr v8, v4

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    sub-int/2addr v7, v4

    sub-int/2addr v8, v9

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v8, v1

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    add-int/2addr v7, v4

    add-int/2addr v8, v9

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    add-int/2addr v7, v4

    sub-int/2addr v8, v4

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    add-int/2addr v7, v4

    add-int/2addr v8, v9

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    sub-int/2addr v7, v1

    add-int/lit8 v8, v8, -0x2

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    sub-int/2addr v7, v4

    sub-int/2addr v8, v9

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    sub-int/2addr v7, v4

    add-int/2addr v8, v4

    add-int v10, p4, v7

    add-int v11, p4, v8

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v15, p3, v14

    aget-wide v17, p3, v11

    add-int/lit8 v19, v11, 0x1

    aget-wide v20, p3, v19

    aput-wide v17, p3, v10

    aput-wide v20, p3, v14

    aput-wide v12, p3, v11

    aput-wide v15, p3, v19

    sub-int/2addr v7, v4

    sub-int/2addr v8, v9

    add-int v7, p4, v7

    add-int v8, p4, v8

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, p3, v11

    aget-wide v14, p3, v8

    add-int/lit8 v16, v8, 0x1

    aget-wide v17, p3, v16

    aput-wide v14, p3, v7

    aput-wide v17, p3, v11

    aput-wide v9, p3, v8

    aput-wide v12, p3, v16

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_1
    add-int v6, v2, v0

    aget v6, p2, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v3, v1

    add-int v7, p4, v6

    add-int v8, p4, v3

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, p3, v11

    aget-wide v14, p3, v8

    add-int/lit8 v16, v8, 0x1

    aget-wide v17, p3, v16

    aput-wide v14, p3, v7

    aput-wide v17, p3, v11

    aput-wide v9, p3, v8

    aput-wide v12, p3, v16

    add-int/2addr v6, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v3, v7

    add-int v8, p4, v6

    add-int v9, p4, v3

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, p3, v12

    aget-wide v15, p3, v9

    add-int/lit8 v17, v9, 0x1

    aget-wide v18, p3, v17

    aput-wide v15, p3, v8

    aput-wide v18, p3, v12

    aput-wide v10, p3, v9

    aput-wide v13, p3, v17

    add-int/2addr v6, v4

    sub-int/2addr v3, v4

    add-int v8, p4, v6

    add-int v9, p4, v3

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, p3, v12

    aget-wide v15, p3, v9

    add-int/lit8 v17, v9, 0x1

    aget-wide v18, p3, v17

    aput-wide v15, p3, v8

    aput-wide v18, p3, v12

    aput-wide v10, p3, v9

    aput-wide v13, p3, v17

    add-int/lit8 v6, v6, -0x2

    sub-int/2addr v3, v1

    add-int v8, p4, v6

    add-int v9, p4, v3

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, p3, v12

    aget-wide v15, p3, v9

    add-int/lit8 v17, v9, 0x1

    aget-wide v18, p3, v17

    aput-wide v15, p3, v8

    aput-wide v18, p3, v12

    aput-wide v10, p3, v9

    aput-wide v13, p3, v17

    add-int/lit8 v8, v1, 0x2

    add-int/2addr v6, v8

    add-int/2addr v3, v8

    add-int v8, p4, v6

    add-int v9, p4, v3

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v13, p3, v12

    aget-wide v15, p3, v9

    add-int/lit8 v17, v9, 0x1

    aget-wide v18, p3, v17

    aput-wide v15, p3, v8

    aput-wide v18, p3, v12

    aput-wide v10, p3, v9

    aput-wide v13, p3, v17

    sub-int v8, v1, v4

    sub-int/2addr v6, v8

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v3, v7

    add-int v6, p4, v6

    add-int v3, p4, v3

    aget-wide v7, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget-wide v10, p3, v9

    aget-wide v12, p3, v3

    add-int/lit8 v14, v3, 0x1

    aget-wide v15, p3, v14

    aput-wide v12, p3, v6

    aput-wide v15, p3, v9

    aput-wide v7, p3, v3

    aput-wide v10, p3, v14

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    move v0, v5

    :goto_3
    if-ge v0, v2, :cond_4

    mul-int/lit8 v3, v0, 0x4

    move v6, v5

    :goto_4
    if-ge v6, v0, :cond_3

    mul-int/lit8 v7, v6, 0x4

    add-int v8, v2, v0

    aget v8, p2, v8

    add-int/2addr v7, v8

    add-int v8, v2, v6

    aget v8, p2, v8

    add-int/2addr v8, v3

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, p3, v18

    aput-wide v16, p3, v9

    aput-wide v19, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    add-int/2addr v7, v4

    add-int/2addr v8, v4

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, p3, v18

    aput-wide v16, p3, v9

    aput-wide v19, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    add-int/2addr v7, v1

    add-int/lit8 v8, v8, 0x2

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, p3, v18

    aput-wide v16, p3, v9

    aput-wide v19, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    sub-int/2addr v7, v4

    sub-int/2addr v8, v4

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, p3, v18

    aput-wide v16, p3, v9

    aput-wide v19, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v8, v1

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, p3, v18

    aput-wide v16, p3, v9

    aput-wide v19, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    add-int/2addr v7, v4

    add-int/2addr v8, v4

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, p3, v18

    aput-wide v16, p3, v9

    aput-wide v19, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    sub-int/2addr v7, v1

    add-int/lit8 v8, v8, -0x2

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    aget-wide v19, p3, v18

    aput-wide v16, p3, v9

    aput-wide v19, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    sub-int/2addr v7, v4

    sub-int/2addr v8, v4

    add-int v7, p4, v7

    add-int v8, p4, v8

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, p3, v11

    aget-wide v14, p3, v8

    add-int/lit8 v16, v8, 0x1

    aget-wide v17, p3, v16

    aput-wide v14, p3, v7

    aput-wide v17, p3, v11

    aput-wide v9, p3, v8

    aput-wide v12, p3, v16

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_3
    add-int v6, v2, v0

    aget v6, p2, v6

    add-int/2addr v3, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v3, v1

    add-int v7, p4, v6

    add-int v8, p4, v3

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, p3, v11

    aget-wide v14, p3, v8

    add-int/lit8 v16, v8, 0x1

    aget-wide v17, p3, v16

    aput-wide v14, p3, v7

    aput-wide v17, p3, v11

    aput-wide v9, p3, v8

    aput-wide v12, p3, v16

    add-int/2addr v6, v4

    add-int/2addr v3, v4

    add-int v6, p4, v6

    add-int v3, p4, v3

    aget-wide v7, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget-wide v10, p3, v9

    aget-wide v12, p3, v3

    add-int/lit8 v14, v3, 0x1

    aget-wide v15, p3, v14

    aput-wide v12, p3, v6

    aput-wide v15, p3, v9

    aput-wide v7, p3, v3

    aput-wide v10, p3, v14

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_4
    return-void
.end method

.method private bitrv208([DI)V
    .locals 24

    add-int/lit8 v0, p2, 0x2

    aget-wide v1, p1, v0

    add-int/lit8 v3, p2, 0x3

    aget-wide v4, p1, v3

    add-int/lit8 v6, p2, 0x6

    aget-wide v7, p1, v6

    add-int/lit8 v9, p2, 0x7

    aget-wide v10, p1, v9

    add-int/lit8 v12, p2, 0x8

    aget-wide v13, p1, v12

    add-int/lit8 v15, p2, 0x9

    aget-wide v16, p1, v15

    add-int/lit8 v18, p2, 0xc

    aget-wide v19, p1, v18

    add-int/lit8 v21, p2, 0xd

    aget-wide v22, p1, v21

    aput-wide v13, p1, v0

    aput-wide v16, p1, v3

    aput-wide v19, p1, v6

    aput-wide v22, p1, v9

    aput-wide v1, p1, v12

    aput-wide v4, p1, v15

    aput-wide v7, p1, v18

    aput-wide v10, p1, v21

    return-void
.end method

.method private bitrv208neg([DI)V
    .locals 42

    add-int/lit8 v0, p2, 0x2

    aget-wide v1, p1, v0

    add-int/lit8 v3, p2, 0x3

    aget-wide v4, p1, v3

    add-int/lit8 v6, p2, 0x4

    aget-wide v7, p1, v6

    add-int/lit8 v9, p2, 0x5

    aget-wide v10, p1, v9

    add-int/lit8 v12, p2, 0x6

    aget-wide v13, p1, v12

    add-int/lit8 v15, p2, 0x7

    aget-wide v16, p1, v15

    add-int/lit8 v18, p2, 0x8

    aget-wide v19, p1, v18

    add-int/lit8 v21, p2, 0x9

    aget-wide v22, p1, v21

    add-int/lit8 v24, p2, 0xa

    aget-wide v25, p1, v24

    add-int/lit8 v27, p2, 0xb

    aget-wide v28, p1, v27

    add-int/lit8 v30, p2, 0xc

    aget-wide v31, p1, v30

    add-int/lit8 v33, p2, 0xd

    aget-wide v34, p1, v33

    add-int/lit8 v36, p2, 0xe

    aget-wide v37, p1, v36

    add-int/lit8 v39, p2, 0xf

    aget-wide v40, p1, v39

    aput-wide v37, p1, v0

    aput-wide v40, p1, v3

    aput-wide v13, p1, v6

    aput-wide v16, p1, v9

    aput-wide v25, p1, v12

    aput-wide v28, p1, v15

    aput-wide v1, p1, v18

    aput-wide v4, p1, v21

    aput-wide v31, p1, v24

    aput-wide v34, p1, v27

    aput-wide v7, p1, v30

    aput-wide v10, p1, v33

    aput-wide v19, p1, v36

    aput-wide v22, p1, v39

    return-void
.end method

.method private bitrv216([DI)V
    .locals 72

    add-int/lit8 v0, p2, 0x2

    aget-wide v1, p1, v0

    add-int/lit8 v3, p2, 0x3

    aget-wide v4, p1, v3

    add-int/lit8 v6, p2, 0x4

    aget-wide v7, p1, v6

    add-int/lit8 v9, p2, 0x5

    aget-wide v10, p1, v9

    add-int/lit8 v12, p2, 0x6

    aget-wide v13, p1, v12

    add-int/lit8 v15, p2, 0x7

    aget-wide v16, p1, v15

    add-int/lit8 v18, p2, 0x8

    aget-wide v19, p1, v18

    add-int/lit8 v21, p2, 0x9

    aget-wide v22, p1, v21

    add-int/lit8 v24, p2, 0xa

    aget-wide v25, p1, v24

    add-int/lit8 v27, p2, 0xb

    aget-wide v28, p1, v27

    add-int/lit8 v30, p2, 0xe

    aget-wide v31, p1, v30

    add-int/lit8 v33, p2, 0xf

    aget-wide v34, p1, v33

    add-int/lit8 v36, p2, 0x10

    aget-wide v37, p1, v36

    add-int/lit8 v39, p2, 0x11

    aget-wide v40, p1, v39

    add-int/lit8 v42, p2, 0x14

    aget-wide v43, p1, v42

    add-int/lit8 v45, p2, 0x15

    aget-wide v46, p1, v45

    add-int/lit8 v48, p2, 0x16

    aget-wide v49, p1, v48

    add-int/lit8 v51, p2, 0x17

    aget-wide v52, p1, v51

    add-int/lit8 v54, p2, 0x18

    aget-wide v55, p1, v54

    add-int/lit8 v57, p2, 0x19

    aget-wide v58, p1, v57

    add-int/lit8 v60, p2, 0x1a

    aget-wide v61, p1, v60

    add-int/lit8 v63, p2, 0x1b

    aget-wide v64, p1, v63

    add-int/lit8 v66, p2, 0x1c

    aget-wide v67, p1, v66

    add-int/lit8 v69, p2, 0x1d

    aget-wide v70, p1, v69

    aput-wide v37, p1, v0

    aput-wide v40, p1, v3

    aput-wide v19, p1, v6

    aput-wide v22, p1, v9

    aput-wide v55, p1, v12

    aput-wide v58, p1, v15

    aput-wide v7, p1, v18

    aput-wide v10, p1, v21

    aput-wide v43, p1, v24

    aput-wide v46, p1, v27

    aput-wide v67, p1, v30

    aput-wide v70, p1, v33

    aput-wide v1, p1, v36

    aput-wide v4, p1, v39

    aput-wide v25, p1, v42

    aput-wide v28, p1, v45

    aput-wide v61, p1, v48

    aput-wide v64, p1, v51

    aput-wide v13, p1, v54

    aput-wide v16, p1, v57

    aput-wide v49, p1, v60

    aput-wide v52, p1, v63

    aput-wide v31, p1, v66

    aput-wide v34, p1, v69

    return-void
.end method

.method private bitrv216neg([DI)V
    .locals 90

    add-int/lit8 v0, p2, 0x2

    aget-wide v1, p1, v0

    add-int/lit8 v3, p2, 0x3

    aget-wide v4, p1, v3

    add-int/lit8 v6, p2, 0x4

    aget-wide v7, p1, v6

    add-int/lit8 v9, p2, 0x5

    aget-wide v10, p1, v9

    add-int/lit8 v12, p2, 0x6

    aget-wide v13, p1, v12

    add-int/lit8 v15, p2, 0x7

    aget-wide v16, p1, v15

    add-int/lit8 v18, p2, 0x8

    aget-wide v19, p1, v18

    add-int/lit8 v21, p2, 0x9

    aget-wide v22, p1, v21

    add-int/lit8 v24, p2, 0xa

    aget-wide v25, p1, v24

    add-int/lit8 v27, p2, 0xb

    aget-wide v28, p1, v27

    add-int/lit8 v30, p2, 0xc

    aget-wide v31, p1, v30

    add-int/lit8 v33, p2, 0xd

    aget-wide v34, p1, v33

    add-int/lit8 v36, p2, 0xe

    aget-wide v37, p1, v36

    add-int/lit8 v39, p2, 0xf

    aget-wide v40, p1, v39

    add-int/lit8 v42, p2, 0x10

    aget-wide v43, p1, v42

    add-int/lit8 v45, p2, 0x11

    aget-wide v46, p1, v45

    add-int/lit8 v48, p2, 0x12

    aget-wide v49, p1, v48

    add-int/lit8 v51, p2, 0x13

    aget-wide v52, p1, v51

    add-int/lit8 v54, p2, 0x14

    aget-wide v55, p1, v54

    add-int/lit8 v57, p2, 0x15

    aget-wide v58, p1, v57

    add-int/lit8 v60, p2, 0x16

    aget-wide v61, p1, v60

    add-int/lit8 v63, p2, 0x17

    aget-wide v64, p1, v63

    add-int/lit8 v66, p2, 0x18

    aget-wide v67, p1, v66

    add-int/lit8 v69, p2, 0x19

    aget-wide v70, p1, v69

    add-int/lit8 v72, p2, 0x1a

    aget-wide v73, p1, v72

    add-int/lit8 v75, p2, 0x1b

    aget-wide v76, p1, v75

    add-int/lit8 v78, p2, 0x1c

    aget-wide v79, p1, v78

    add-int/lit8 v81, p2, 0x1d

    aget-wide v82, p1, v81

    add-int/lit8 v84, p2, 0x1e

    aget-wide v85, p1, v84

    add-int/lit8 v87, p2, 0x1f

    aget-wide v88, p1, v87

    aput-wide v85, p1, v0

    aput-wide v88, p1, v3

    aput-wide v37, p1, v6

    aput-wide v40, p1, v9

    aput-wide v61, p1, v12

    aput-wide v64, p1, v15

    aput-wide v13, p1, v18

    aput-wide v16, p1, v21

    aput-wide v73, p1, v24

    aput-wide v76, p1, v27

    aput-wide v25, p1, v30

    aput-wide v28, p1, v33

    aput-wide v49, p1, v36

    aput-wide v52, p1, v39

    aput-wide v1, p1, v42

    aput-wide v4, p1, v45

    aput-wide v79, p1, v48

    aput-wide v82, p1, v51

    aput-wide v31, p1, v54

    aput-wide v34, p1, v57

    aput-wide v55, p1, v60

    aput-wide v58, p1, v63

    aput-wide v7, p1, v66

    aput-wide v10, p1, v69

    aput-wide v67, p1, v72

    aput-wide v70, p1, v75

    aput-wide v19, p1, v78

    aput-wide v22, p1, v81

    aput-wide v43, p1, v84

    aput-wide v46, p1, v87

    return-void
.end method

.method private bitrv2conj(I[I[DI)V
    .locals 21

    shr-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-le v0, v3, :cond_0

    shl-int/lit8 v2, v2, 0x1

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, p1, 0x1

    mul-int/lit8 v4, v2, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    mul-int/lit8 v3, v0, 0x4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_1

    mul-int/lit8 v7, v6, 0x4

    add-int v8, v2, v0

    aget v8, p2, v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int v8, v2, v6

    aget v8, p2, v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v3

    add-int v9, p4, v7

    add-int v10, p4, v8

    aget-wide v11, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aget-wide v16, p3, v10

    add-int/lit8 v18, v10, 0x1

    move/from16 v19, v6

    aget-wide v5, p3, v18

    neg-double v5, v5

    aput-wide v16, p3, v9

    aput-wide v5, p3, v13

    aput-wide v11, p3, v10

    aput-wide v14, p3, v18

    add-int/2addr v7, v4

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v8, v5

    add-int v6, p4, v7

    add-int v9, p4, v8

    aget-wide v10, p3, v6

    add-int/lit8 v12, v6, 0x1

    aget-wide v13, p3, v12

    neg-double v13, v13

    aget-wide v15, p3, v9

    add-int/lit8 v17, v9, 0x1

    move/from16 v18, v2

    move/from16 v20, v3

    aget-wide v2, p3, v17

    neg-double v2, v2

    aput-wide v15, p3, v6

    aput-wide v2, p3, v12

    aput-wide v10, p3, v9

    aput-wide v13, p3, v17

    add-int/2addr v7, v4

    sub-int/2addr v8, v4

    add-int v2, p4, v7

    add-int v3, p4, v8

    aget-wide v9, p3, v2

    add-int/lit8 v6, v2, 0x1

    aget-wide v11, p3, v6

    neg-double v11, v11

    aget-wide v13, p3, v3

    add-int/lit8 v15, v3, 0x1

    move/from16 v17, v0

    move/from16 v16, v1

    aget-wide v0, p3, v15

    neg-double v0, v0

    aput-wide v13, p3, v2

    aput-wide v0, p3, v6

    aput-wide v9, p3, v3

    aput-wide v11, p3, v15

    add-int/2addr v7, v4

    add-int/2addr v8, v5

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    add-int v7, v7, v16

    add-int/lit8 v8, v8, 0x2

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    sub-int/2addr v7, v4

    sub-int/2addr v8, v5

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    sub-int/2addr v7, v4

    add-int/2addr v8, v4

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    sub-int/2addr v7, v4

    sub-int/2addr v8, v5

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    add-int/lit8 v7, v7, 0x2

    add-int v8, v8, v16

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    add-int/2addr v7, v4

    add-int/2addr v8, v5

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    add-int/2addr v7, v4

    sub-int/2addr v8, v4

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    add-int/2addr v7, v4

    add-int/2addr v8, v5

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    sub-int v7, v7, v16

    add-int/lit8 v8, v8, -0x2

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    sub-int/2addr v7, v4

    sub-int/2addr v8, v5

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    sub-int/2addr v7, v4

    add-int/2addr v8, v4

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v9, p3, v6

    neg-double v9, v9

    aget-wide v11, p3, v1

    add-int/lit8 v13, v1, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v0

    aput-wide v14, p3, v6

    aput-wide v2, p3, v1

    aput-wide v9, p3, v13

    sub-int/2addr v7, v4

    sub-int/2addr v8, v5

    add-int v0, p4, v7

    add-int v1, p4, v8

    aget-wide v2, p3, v0

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, p3, v5

    neg-double v6, v6

    aget-wide v8, p3, v1

    add-int/lit8 v10, v1, 0x1

    aget-wide v11, p3, v10

    neg-double v11, v11

    aput-wide v8, p3, v0

    aput-wide v11, p3, v5

    aput-wide v2, p3, v1

    aput-wide v6, p3, v10

    add-int/lit8 v6, v19, 0x1

    move/from16 v1, v16

    move/from16 v0, v17

    move/from16 v2, v18

    move/from16 v3, v20

    goto/16 :goto_2

    :cond_1
    move/from16 v17, v0

    move/from16 v16, v1

    move/from16 v18, v2

    move/from16 v20, v3

    add-int v2, v18, v17

    aget v0, p2, v2

    mul-int/lit8 v0, v0, 0x2

    add-int v3, v20, v0

    add-int/lit8 v0, v3, 0x2

    add-int v3, v3, v16

    add-int v1, p4, v0

    add-int v2, p4, v3

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, p3, v5

    neg-double v6, v6

    aput-wide v6, p3, v5

    aget-wide v5, p3, v1

    add-int/lit8 v7, v1, 0x1

    aget-wide v8, p3, v7

    neg-double v8, v8

    aget-wide v10, p3, v2

    add-int/lit8 v12, v2, 0x1

    aget-wide v13, p3, v12

    neg-double v13, v13

    aput-wide v10, p3, v1

    aput-wide v13, p3, v7

    aput-wide v5, p3, v2

    aput-wide v8, p3, v12

    add-int/lit8 v2, v2, 0x3

    aget-wide v5, p3, v2

    neg-double v5, v5

    aput-wide v5, p3, v2

    add-int/2addr v0, v4

    mul-int/lit8 v1, v4, 0x2

    add-int/2addr v3, v1

    add-int v2, p4, v0

    add-int v5, p4, v3

    aget-wide v6, p3, v2

    add-int/lit8 v8, v2, 0x1

    aget-wide v9, p3, v8

    neg-double v9, v9

    aget-wide v11, p3, v5

    add-int/lit8 v13, v5, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v2

    aput-wide v14, p3, v8

    aput-wide v6, p3, v5

    aput-wide v9, p3, v13

    add-int/2addr v0, v4

    sub-int/2addr v3, v4

    add-int v2, p4, v0

    add-int v5, p4, v3

    aget-wide v6, p3, v2

    add-int/lit8 v8, v2, 0x1

    aget-wide v9, p3, v8

    neg-double v9, v9

    aget-wide v11, p3, v5

    add-int/lit8 v13, v5, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v2

    aput-wide v14, p3, v8

    aput-wide v6, p3, v5

    aput-wide v9, p3, v13

    add-int/lit8 v0, v0, -0x2

    sub-int v3, v3, v16

    add-int v2, p4, v0

    add-int v5, p4, v3

    aget-wide v6, p3, v2

    add-int/lit8 v8, v2, 0x1

    aget-wide v9, p3, v8

    neg-double v9, v9

    aget-wide v11, p3, v5

    add-int/lit8 v13, v5, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v2

    aput-wide v14, p3, v8

    aput-wide v6, p3, v5

    aput-wide v9, p3, v13

    add-int/lit8 v2, v16, 0x2

    add-int/2addr v0, v2

    add-int/2addr v3, v2

    add-int v2, p4, v0

    add-int v5, p4, v3

    aget-wide v6, p3, v2

    add-int/lit8 v8, v2, 0x1

    aget-wide v9, p3, v8

    neg-double v9, v9

    aget-wide v11, p3, v5

    add-int/lit8 v13, v5, 0x1

    aget-wide v14, p3, v13

    neg-double v14, v14

    aput-wide v11, p3, v2

    aput-wide v14, p3, v8

    aput-wide v6, p3, v5

    aput-wide v9, p3, v13

    sub-int v2, v16, v4

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v3, v1

    add-int v0, p4, v0

    add-int v1, p4, v3

    add-int/lit8 v2, v0, -0x1

    aget-wide v5, p3, v2

    neg-double v5, v5

    aput-wide v5, p3, v2

    aget-wide v2, p3, v0

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, p3, v5

    neg-double v6, v6

    aget-wide v8, p3, v1

    add-int/lit8 v10, v1, 0x1

    aget-wide v11, p3, v10

    neg-double v11, v11

    aput-wide v8, p3, v0

    aput-wide v11, p3, v5

    aput-wide v2, p3, v1

    aput-wide v6, p3, v10

    add-int/lit8 v1, v1, 0x3

    aget-wide v2, p3, v1

    neg-double v2, v2

    aput-wide v2, p3, v1

    add-int/lit8 v0, v17, 0x1

    move/from16 v1, v16

    move/from16 v2, v18

    goto/16 :goto_1

    :cond_2
    move/from16 v16, v1

    move v1, v2

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    mul-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_3

    mul-int/lit8 v5, v3, 0x4

    add-int v6, v1, v0

    aget v6, p2, v6

    add-int/2addr v5, v6

    add-int v6, v1, v3

    aget v6, p2, v6

    add-int/2addr v6, v2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v12, p3, v11

    neg-double v12, v12

    aget-wide v14, p3, v8

    add-int/lit8 v17, v8, 0x1

    move/from16 v19, v0

    move/from16 v18, v1

    aget-wide v0, p3, v17

    neg-double v0, v0

    aput-wide v14, p3, v7

    aput-wide v0, p3, v11

    aput-wide v9, p3, v8

    aput-wide v12, p3, v17

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v0, p4, v5

    add-int v1, p4, v6

    aget-wide v7, p3, v0

    add-int/lit8 v9, v0, 0x1

    aget-wide v10, p3, v9

    neg-double v10, v10

    aget-wide v12, p3, v1

    add-int/lit8 v14, v1, 0x1

    move v15, v2

    move/from16 v17, v3

    aget-wide v2, p3, v14

    neg-double v2, v2

    aput-wide v12, p3, v0

    aput-wide v2, p3, v9

    aput-wide v7, p3, v1

    aput-wide v10, p3, v14

    add-int v5, v5, v16

    add-int/lit8 v6, v6, 0x2

    add-int v0, p4, v5

    add-int v1, p4, v6

    aget-wide v2, p3, v0

    add-int/lit8 v7, v0, 0x1

    aget-wide v8, p3, v7

    neg-double v8, v8

    aget-wide v10, p3, v1

    add-int/lit8 v12, v1, 0x1

    aget-wide v13, p3, v12

    neg-double v13, v13

    aput-wide v10, p3, v0

    aput-wide v13, p3, v7

    aput-wide v2, p3, v1

    aput-wide v8, p3, v12

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v0, p4, v5

    add-int v1, p4, v6

    aget-wide v2, p3, v0

    add-int/lit8 v7, v0, 0x1

    aget-wide v8, p3, v7

    neg-double v8, v8

    aget-wide v10, p3, v1

    add-int/lit8 v12, v1, 0x1

    aget-wide v13, p3, v12

    neg-double v13, v13

    aput-wide v10, p3, v0

    aput-wide v13, p3, v7

    aput-wide v2, p3, v1

    aput-wide v8, p3, v12

    add-int/lit8 v5, v5, 0x2

    add-int v6, v6, v16

    add-int v0, p4, v5

    add-int v1, p4, v6

    aget-wide v2, p3, v0

    add-int/lit8 v7, v0, 0x1

    aget-wide v8, p3, v7

    neg-double v8, v8

    aget-wide v10, p3, v1

    add-int/lit8 v12, v1, 0x1

    aget-wide v13, p3, v12

    neg-double v13, v13

    aput-wide v10, p3, v0

    aput-wide v13, p3, v7

    aput-wide v2, p3, v1

    aput-wide v8, p3, v12

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v0, p4, v5

    add-int v1, p4, v6

    aget-wide v2, p3, v0

    add-int/lit8 v7, v0, 0x1

    aget-wide v8, p3, v7

    neg-double v8, v8

    aget-wide v10, p3, v1

    add-int/lit8 v12, v1, 0x1

    aget-wide v13, p3, v12

    neg-double v13, v13

    aput-wide v10, p3, v0

    aput-wide v13, p3, v7

    aput-wide v2, p3, v1

    aput-wide v8, p3, v12

    sub-int v5, v5, v16

    add-int/lit8 v6, v6, -0x2

    add-int v0, p4, v5

    add-int v1, p4, v6

    aget-wide v2, p3, v0

    add-int/lit8 v7, v0, 0x1

    aget-wide v8, p3, v7

    neg-double v8, v8

    aget-wide v10, p3, v1

    add-int/lit8 v12, v1, 0x1

    aget-wide v13, p3, v12

    neg-double v13, v13

    aput-wide v10, p3, v0

    aput-wide v13, p3, v7

    aput-wide v2, p3, v1

    aput-wide v8, p3, v12

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v0, p4, v5

    add-int v1, p4, v6

    aget-wide v2, p3, v0

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, p3, v5

    neg-double v6, v6

    aget-wide v8, p3, v1

    add-int/lit8 v10, v1, 0x1

    aget-wide v11, p3, v10

    neg-double v11, v11

    aput-wide v8, p3, v0

    aput-wide v11, p3, v5

    aput-wide v2, p3, v1

    aput-wide v6, p3, v10

    add-int/lit8 v3, v17, 0x1

    move v2, v15

    move/from16 v1, v18

    move/from16 v0, v19

    goto/16 :goto_4

    :cond_3
    move/from16 v19, v0

    move/from16 v18, v1

    move v15, v2

    add-int v2, v18, v19

    aget v0, p2, v2

    add-int v2, v15, v0

    add-int/lit8 v0, v2, 0x2

    add-int v2, v2, v16

    add-int v1, p4, v0

    add-int v3, p4, v2

    add-int/lit8 v5, v1, -0x1

    aget-wide v6, p3, v5

    neg-double v6, v6

    aput-wide v6, p3, v5

    aget-wide v5, p3, v1

    add-int/lit8 v7, v1, 0x1

    aget-wide v8, p3, v7

    neg-double v8, v8

    aget-wide v10, p3, v3

    add-int/lit8 v12, v3, 0x1

    aget-wide v13, p3, v12

    neg-double v13, v13

    aput-wide v10, p3, v1

    aput-wide v13, p3, v7

    aput-wide v5, p3, v3

    aput-wide v8, p3, v12

    add-int/lit8 v3, v3, 0x3

    aget-wide v5, p3, v3

    neg-double v5, v5

    aput-wide v5, p3, v3

    add-int/2addr v0, v4

    add-int/2addr v2, v4

    add-int v0, p4, v0

    add-int v1, p4, v2

    add-int/lit8 v2, v0, -0x1

    aget-wide v5, p3, v2

    neg-double v5, v5

    aput-wide v5, p3, v2

    aget-wide v2, p3, v0

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, p3, v5

    neg-double v6, v6

    aget-wide v8, p3, v1

    add-int/lit8 v10, v1, 0x1

    aget-wide v11, p3, v10

    neg-double v11, v11

    aput-wide v8, p3, v0

    aput-wide v11, p3, v5

    aput-wide v2, p3, v1

    aput-wide v6, p3, v10

    add-int/lit8 v1, v1, 0x3

    aget-wide v2, p3, v1

    neg-double v2, v2

    aput-wide v2, p3, v1

    add-int/lit8 v0, v19, 0x1

    move/from16 v1, v18

    goto/16 :goto_3

    :cond_4
    return-void
.end method

.method private bluestein_complex([DII)V
    .locals 17

    move-object/from16 v8, p0

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v9, 0x2

    mul-int/2addr v0, v9

    new-array v10, v0, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v11, 0x0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v0, v2, :cond_0

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v9

    :goto_0
    new-array v13, v12, [Ljava/util/concurrent/Future;

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v14, v0, v12

    move v15, v11

    :goto_1
    if-ge v15, v12, :cond_2

    mul-int v3, v15, v14

    add-int/lit8 v0, v12, -0x1

    if-ne v15, v0, :cond_1

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v0, v3, v14

    :goto_2
    move v4, v0

    new-instance v16, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v5, p2

    move-object v6, v10

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v6, v0, v12

    move v7, v11

    :goto_3
    if-ge v7, v12, :cond_4

    mul-int v3, v7, v6

    add-int/lit8 v0, v12, -0x1

    if-ne v7, v0, :cond_3

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_4

    :cond_3
    add-int v0, v3, v6

    :goto_4
    move v4, v0

    new-instance v14, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static {v14}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v9, v0, v12

    :goto_5
    if-ge v11, v12, :cond_6

    mul-int v3, v11, v9

    add-int/lit8 v0, v12, -0x1

    if-ne v11, v0, :cond_5

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_6

    :cond_5
    add-int v0, v3, v9

    :goto_6
    move v4, v0

    new-instance v14, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v5, p2

    move-object/from16 v6, p1

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static {v14}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_d

    :cond_7
    move v0, v11

    if-lez p3, :cond_8

    :goto_7
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    aget-wide v5, p1, v3

    iget-object v7, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v7, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    aget-wide v14, v7, v2

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, v10, v1

    aget-wide v5, p1, v3

    aget-wide v12, v7, v2

    mul-double/2addr v5, v12

    aget-wide v3, p1, v4

    aget-wide v12, v7, v1

    mul-double/2addr v3, v12

    add-double/2addr v5, v3

    aput-wide v5, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    aget-wide v5, p1, v3

    iget-object v7, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v7, v1

    mul-double/2addr v5, v12

    aget-wide v12, p1, v4

    aget-wide v14, v7, v2

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, v10, v1

    aget-wide v5, p1, v3

    neg-double v5, v5

    aget-wide v12, v7, v2

    mul-double/2addr v5, v12

    aget-wide v3, p1, v4

    aget-wide v12, v7, v1

    mul-double/2addr v3, v12

    add-double/2addr v5, v3

    aput-wide v5, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    move v0, v11

    if-lez p3, :cond_a

    :goto_9
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v10, v1

    neg-double v3, v3

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v5, v2

    mul-double/2addr v3, v6

    aget-wide v6, v10, v2

    aget-wide v12, v5, v1

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    aget-wide v6, v10, v1

    aget-wide v12, v5, v1

    mul-double/2addr v6, v12

    aget-wide v12, v10, v2

    aget-wide v14, v5, v2

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    aput-wide v6, v10, v1

    aput-wide v3, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v10, v1

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v5, v2

    mul-double/2addr v3, v6

    aget-wide v6, v10, v2

    aget-wide v12, v5, v1

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    aget-wide v6, v10, v1

    aget-wide v12, v5, v1

    mul-double/2addr v6, v12

    aget-wide v12, v10, v2

    aget-wide v14, v5, v2

    mul-double/2addr v12, v14

    sub-double/2addr v6, v12

    aput-wide v6, v10, v1

    aput-wide v3, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    if-lez p3, :cond_c

    :goto_b
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v11, v0, :cond_d

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    add-int v3, p2, v1

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v0

    aget-wide v12, v10, v0

    mul-double/2addr v5, v12

    aget-wide v12, v4, v1

    aget-wide v14, v10, v1

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, p1, v2

    aget-wide v5, v4, v1

    aget-wide v12, v10, v0

    mul-double/2addr v5, v12

    aget-wide v12, v4, v0

    aget-wide v0, v10, v1

    mul-double/2addr v12, v0

    add-double/2addr v5, v12

    aput-wide v5, p1, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_c
    :goto_c
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v11, v0, :cond_d

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    add-int v3, p2, v1

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v0

    aget-wide v12, v10, v0

    mul-double/2addr v5, v12

    aget-wide v12, v4, v1

    aget-wide v14, v10, v1

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, p1, v2

    aget-wide v5, v4, v1

    neg-double v5, v5

    aget-wide v12, v10, v0

    mul-double/2addr v5, v12

    aget-wide v12, v4, v0

    aget-wide v0, v10, v1

    mul-double/2addr v12, v0

    add-double/2addr v5, v12

    aput-wide v5, p1, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    return-void
.end method

.method private bluestein_real_forward([DI)V
    .locals 18

    move-object/from16 v7, p0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-le v0, v11, :cond_5

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v0, v2, :cond_0

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v8

    :goto_0
    new-array v13, v12, [Ljava/util/concurrent/Future;

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v14, v0, v12

    move v15, v10

    :goto_1
    if-ge v15, v12, :cond_2

    mul-int v2, v15, v14

    add-int/lit8 v0, v12, -0x1

    if-ne v15, v0, :cond_1

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v0, v2, v14

    :goto_2
    move v3, v0

    new-instance v16, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v4, p2

    move-object v5, v9

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v12

    move v1, v10

    :goto_3
    if-ge v1, v12, :cond_4

    mul-int v2, v1, v0

    add-int/lit8 v3, v12, -0x1

    if-ne v1, v3, :cond_3

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_4

    :cond_3
    add-int v3, v2, v0

    :goto_4
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;

    invoke-direct {v4, v7, v2, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_7

    :cond_5
    move v0, v10

    :goto_5
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v4, p1, v3

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    mul-double/2addr v4, v12

    aput-wide v4, v9, v1

    aget-wide v3, p1, v3

    neg-double v3, v3

    aget-wide v5, v6, v2

    mul-double/2addr v3, v5

    aput-wide v3, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    move v0, v10

    :goto_6
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v9, v1

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v5, v2

    mul-double/2addr v3, v12

    aget-wide v12, v9, v2

    aget-wide v14, v5, v1

    mul-double/2addr v12, v14

    add-double/2addr v3, v12

    aget-wide v12, v9, v1

    aget-wide v14, v5, v1

    mul-double/2addr v12, v14

    aget-wide v14, v9, v2

    aget-wide v16, v5, v2

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    aput-wide v12, v9, v1

    aput-wide v3, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v1, v10

    aget-wide v4, v9, v10

    mul-double/2addr v2, v4

    aget-wide v4, v1, v11

    aget-wide v12, v9, v11

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, v1, v0

    aget-wide v5, v9, v0

    mul-double/2addr v3, v5

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v1, v5

    add-int/2addr v0, v11

    aget-wide v0, v9, v0

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    :goto_8
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v8

    if-ge v11, v0, :cond_a

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v12, v9, v0

    mul-double/2addr v4, v12

    aget-wide v12, v3, v1

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p1, v2

    add-int v2, p2, v1

    aget-wide v4, v3, v1

    neg-double v4, v4

    aget-wide v12, v9, v0

    mul-double/2addr v4, v12

    aget-wide v12, v3, v0

    aget-wide v0, v9, v1

    mul-double/2addr v12, v0

    add-double/2addr v4, v12

    aput-wide v4, p1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_8
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v1, v10

    aget-wide v4, v9, v10

    mul-double/2addr v2, v4

    aget-wide v4, v1, v11

    aget-wide v12, v9, v11

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, v1, v0

    neg-double v3, v3

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v9, v5

    mul-double/2addr v3, v5

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v1, v5

    aget-wide v0, v9, v0

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    move v0, v11

    :goto_9
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v1, -0x1

    div-int/2addr v2, v8

    if-ge v0, v2, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v1

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    aget-wide v12, v4, v2

    aget-wide v14, v9, v2

    mul-double/2addr v12, v14

    add-double/2addr v5, v12

    aput-wide v5, p1, v3

    add-int v3, p2, v2

    aget-wide v5, v4, v2

    neg-double v5, v5

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    aget-wide v12, v4, v1

    aget-wide v1, v9, v2

    mul-double/2addr v12, v1

    add-double/2addr v5, v12

    aput-wide v5, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    add-int v0, p2, v1

    sub-int/2addr v0, v11

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v9, v5

    mul-double/2addr v3, v5

    aget-wide v5, v2, v1

    aget-wide v1, v9, v1

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, p1, v0

    :cond_a
    return-void
.end method

.method private bluestein_real_full([DII)V
    .locals 17

    move-object/from16 v8, p0

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v9, 0x2

    mul-int/2addr v0, v9

    new-array v10, v0, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v11, 0x0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_7

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v0, v2, :cond_0

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v9

    :goto_0
    new-array v13, v12, [Ljava/util/concurrent/Future;

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v14, v0, v12

    move v15, v11

    :goto_1
    if-ge v15, v12, :cond_2

    mul-int v3, v15, v14

    add-int/lit8 v0, v12, -0x1

    if-ne v15, v0, :cond_1

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v0, v3, v14

    :goto_2
    move v4, v0

    new-instance v16, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v5, p2

    move-object v6, v10

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v6, v0, v12

    move v7, v11

    :goto_3
    if-ge v7, v12, :cond_4

    mul-int v3, v7, v6

    add-int/lit8 v0, v12, -0x1

    if-ne v7, v0, :cond_3

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_4

    :cond_3
    add-int v0, v3, v6

    :goto_4
    move v4, v0

    new-instance v14, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

    invoke-static {v14}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v9, v0, v12

    :goto_5
    if-ge v11, v12, :cond_6

    mul-int v3, v11, v9

    add-int/lit8 v0, v12, -0x1

    if-ne v11, v0, :cond_5

    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_6

    :cond_5
    add-int v0, v3, v9

    :goto_6
    move v4, v0

    new-instance v14, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DI[D)V

    invoke-static {v14}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_d

    :cond_7
    move v0, v11

    if-lez p3, :cond_8

    :goto_7
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v4, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    mul-double/2addr v4, v12

    aput-wide v4, v10, v1

    aget-wide v3, p1, v3

    aget-wide v5, v6, v2

    mul-double/2addr v3, v5

    aput-wide v3, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v4, p1, v3

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    mul-double/2addr v4, v12

    aput-wide v4, v10, v1

    aget-wide v3, p1, v3

    neg-double v3, v3

    aget-wide v5, v6, v2

    mul-double/2addr v3, v5

    aput-wide v3, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    move v0, v11

    if-lez p3, :cond_a

    :goto_9
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v10, v1

    neg-double v3, v3

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v5, v2

    mul-double/2addr v3, v6

    aget-wide v6, v10, v2

    aget-wide v12, v5, v1

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    aget-wide v6, v10, v1

    aget-wide v12, v5, v1

    mul-double/2addr v6, v12

    aget-wide v12, v10, v2

    aget-wide v14, v5, v2

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    aput-wide v6, v10, v1

    aput-wide v3, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    iget v1, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_b

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v10, v1

    iget-object v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v5, v2

    mul-double/2addr v3, v6

    aget-wide v6, v10, v2

    aget-wide v12, v5, v1

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    aget-wide v6, v10, v1

    aget-wide v12, v5, v1

    mul-double/2addr v6, v12

    aget-wide v12, v10, v2

    aget-wide v14, v5, v2

    mul-double/2addr v12, v14

    sub-double/2addr v6, v12

    aput-wide v6, v10, v1

    aput-wide v3, v10, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    if-lez p3, :cond_c

    :goto_b
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v11, v0, :cond_d

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    iget-object v3, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v6, v10, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v1

    aget-wide v12, v10, v1

    mul-double/2addr v6, v12

    sub-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int v2, p2, v1

    aget-wide v4, v3, v1

    aget-wide v6, v10, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v0

    aget-wide v0, v10, v1

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_c
    :goto_c
    iget v0, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v11, v0, :cond_d

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    iget-object v3, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v6, v10, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v1

    aget-wide v12, v10, v1

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int v2, p2, v1

    aget-wide v4, v3, v1

    neg-double v4, v4

    aget-wide v6, v10, v0

    mul-double/2addr v4, v6

    aget-wide v6, v3, v0

    aget-wide v0, v10, v1

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    return-void
.end method

.method private bluestein_real_inverse([DI)V
    .locals 17

    move-object/from16 v7, p0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/2addr v0, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_1

    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v2, v10

    mul-double/2addr v0, v3

    aput-wide v0, v9, v10

    aget-wide v0, p1, p2

    aget-wide v3, v2, v11

    mul-double/2addr v0, v3

    aput-wide v0, v9, v11

    move v0, v11

    :goto_0
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    aget-wide v5, p1, v3

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v12, v1

    mul-double/2addr v5, v13

    aget-wide v13, p1, v4

    aget-wide v15, v12, v2

    mul-double/2addr v13, v15

    sub-double/2addr v5, v13

    aput-wide v5, v9, v1

    aget-wide v5, p1, v3

    aget-wide v13, v12, v2

    mul-double/2addr v5, v13

    aget-wide v3, p1, v4

    aget-wide v13, v12, v1

    mul-double/2addr v3, v13

    add-double/2addr v5, v3

    aput-wide v5, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    aget-wide v2, p1, v0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v1

    mul-double/2addr v2, v5

    aput-wide v2, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v5, p1, v0

    add-int/lit8 v0, v1, 0x1

    aget-wide v3, v4, v0

    mul-double/2addr v5, v3

    aput-wide v5, v9, v2

    div-int/2addr v1, v8

    add-int/2addr v1, v11

    :goto_1
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v0, :cond_3

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int v0, p2, v0

    sub-int/2addr v0, v2

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, p1, v0

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v12, v2

    mul-double/2addr v5, v13

    aget-wide v13, p1, v4

    aget-wide v15, v12, v3

    mul-double/2addr v13, v15

    add-double/2addr v5, v13

    aput-wide v5, v9, v2

    aget-wide v5, p1, v0

    aget-wide v13, v12, v3

    mul-double/2addr v5, v13

    aget-wide v13, p1, v4

    aget-wide v15, v12, v2

    mul-double/2addr v13, v15

    sub-double/2addr v5, v13

    aput-wide v5, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget-wide v0, p1, p2

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v3, v2, v10

    mul-double/2addr v0, v3

    aput-wide v0, v9, v10

    aget-wide v0, p1, p2

    aget-wide v3, v2, v11

    mul-double/2addr v0, v3

    aput-wide v0, v9, v11

    move v0, v11

    :goto_2
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v1, -0x1

    div-int/2addr v2, v8

    if-ge v0, v2, :cond_2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    add-int v4, p2, v2

    aget-wide v5, p1, v3

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v12, v1

    mul-double/2addr v5, v13

    aget-wide v13, p1, v4

    aget-wide v15, v12, v2

    mul-double/2addr v13, v15

    sub-double/2addr v5, v13

    aput-wide v5, v9, v1

    aget-wide v5, p1, v3

    aget-wide v13, v12, v2

    mul-double/2addr v5, v13

    aget-wide v3, p1, v4

    aget-wide v13, v12, v1

    mul-double/2addr v3, v13

    add-double/2addr v5, v3

    aput-wide v5, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, -0x1

    add-int v2, p2, v1

    sub-int/2addr v2, v11

    aget-wide v2, p1, v2

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v4, v5

    mul-double/2addr v2, v5

    add-int/lit8 v5, p2, 0x1

    aget-wide v12, p1, v5

    aget-wide v14, v4, v1

    mul-double/2addr v12, v14

    sub-double/2addr v2, v12

    aput-wide v2, v9, v0

    add-int v0, p2, v1

    sub-int/2addr v0, v11

    aget-wide v2, p1, v0

    aget-wide v12, v4, v1

    mul-double/2addr v2, v12

    aget-wide v12, p1, v5

    add-int/lit8 v0, v1, -0x1

    aget-wide v14, v4, v0

    mul-double/2addr v12, v14

    add-double/2addr v2, v12

    aput-wide v2, v9, v1

    add-int/lit8 v0, v1, 0x1

    add-int v2, p2, v1

    sub-int/2addr v2, v11

    aget-wide v2, p1, v2

    add-int/lit8 v6, v1, 0x1

    aget-wide v12, v4, v6

    mul-double/2addr v2, v12

    aget-wide v12, p1, v5

    add-int/lit8 v6, v1, 0x2

    aget-wide v14, v4, v6

    mul-double/2addr v12, v14

    add-double/2addr v2, v12

    aput-wide v2, v9, v0

    add-int/lit8 v0, v1, 0x2

    add-int v2, p2, v1

    sub-int/2addr v2, v11

    aget-wide v2, p1, v2

    add-int/lit8 v6, v1, 0x2

    aget-wide v12, v4, v6

    mul-double/2addr v2, v12

    aget-wide v5, p1, v5

    add-int/lit8 v12, v1, 0x1

    aget-wide v12, v4, v12

    mul-double/2addr v5, v12

    sub-double/2addr v2, v5

    aput-wide v2, v9, v0

    sub-int/2addr v1, v11

    div-int/2addr v1, v8

    add-int/2addr v1, v8

    :goto_3
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v0, :cond_3

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int v0, p2, v0

    sub-int/2addr v0, v2

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, p1, v0

    iget-object v12, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v13, v12, v2

    mul-double/2addr v5, v13

    aget-wide v13, p1, v4

    aget-wide v15, v12, v3

    mul-double/2addr v13, v15

    add-double/2addr v5, v13

    aput-wide v5, v9, v2

    aget-wide v5, p1, v0

    aget-wide v13, v12, v3

    mul-double/2addr v5, v13

    aget-wide v13, p1, v4

    aget-wide v15, v12, v2

    mul-double/2addr v13, v15

    sub-double/2addr v5, v13

    aput-wide v5, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v11, :cond_9

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_9

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v0, v2, :cond_4

    move v11, v1

    goto :goto_4

    :cond_4
    move v11, v8

    :goto_4
    new-array v12, v11, [Ljava/util/concurrent/Future;

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v11

    move v1, v10

    :goto_5
    if-ge v1, v11, :cond_6

    mul-int v2, v1, v0

    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_5

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_6

    :cond_5
    add-int v3, v2, v0

    :goto_6
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;

    invoke-direct {v4, v7, v2, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v8, v0, v11

    :goto_7
    if-ge v10, v11, :cond_8

    mul-int v2, v10, v8

    add-int/lit8 v0, v11, -0x1

    if-ne v10, v0, :cond_7

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_8

    :cond_7
    add-int v0, v2, v8

    :goto_8
    move v3, v0

    new-instance v13, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DI[D)V

    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_8
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_b

    :cond_9
    move v0, v10

    :goto_9
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_a

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v9, v1

    neg-double v3, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v11, v5, v2

    mul-double/2addr v3, v11

    aget-wide v11, v9, v2

    aget-wide v13, v5, v1

    mul-double/2addr v11, v13

    add-double/2addr v3, v11

    aget-wide v11, v9, v1

    aget-wide v13, v5, v1

    mul-double/2addr v11, v13

    aget-wide v13, v9, v2

    aget-wide v15, v5, v2

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    aput-wide v11, v9, v1

    aput-wide v3, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    mul-int/2addr v1, v8

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    :goto_a
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v10, v0, :cond_b

    mul-int/lit8 v0, v10, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v10

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v11, v9, v0

    mul-double/2addr v4, v11

    aget-wide v11, v3, v1

    aget-wide v0, v9, v1

    mul-double/2addr v11, v0

    sub-double/2addr v4, v11

    aput-wide v4, p1, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    return-void
.end method

.method private bluestein_real_inverse2([DI)V
    .locals 18

    move-object/from16 v7, p0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    const/4 v8, 0x2

    mul-int/2addr v0, v8

    new-array v9, v0, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-le v0, v11, :cond_5

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_5

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v2

    if-le v0, v2, :cond_0

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v8

    :goto_0
    new-array v13, v12, [Ljava/util/concurrent/Future;

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v14, v0, v12

    move v15, v10

    :goto_1
    if-ge v15, v12, :cond_2

    mul-int v2, v15, v14

    add-int/lit8 v0, v12, -0x1

    if-ne v15, v0, :cond_1

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    goto :goto_2

    :cond_1
    add-int v0, v2, v14

    :goto_2
    move v3, v0

    new-instance v16, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v4, p2

    move-object v5, v9

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int/2addr v0, v12

    move v1, v10

    :goto_3
    if-ge v1, v12, :cond_4

    mul-int v2, v1, v0

    add-int/lit8 v3, v12, -0x1

    if-ne v1, v3, :cond_3

    iget v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    goto :goto_4

    :cond_3
    add-int v3, v2, v0

    :goto_4
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;

    invoke-direct {v4, v7, v2, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_7

    :cond_5
    move v0, v10

    :goto_5
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_6

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v4, p1, v3

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v1

    mul-double/2addr v4, v12

    aput-wide v4, v9, v1

    aget-wide v3, p1, v3

    aget-wide v5, v6, v2

    mul-double/2addr v3, v5

    aput-wide v3, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    move v0, v10

    :goto_6
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v9, v1

    neg-double v3, v3

    iget-object v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v5, v2

    mul-double/2addr v3, v12

    aget-wide v12, v9, v2

    aget-wide v14, v5, v1

    mul-double/2addr v12, v14

    add-double/2addr v3, v12

    aget-wide v12, v9, v1

    aget-wide v14, v5, v1

    mul-double/2addr v12, v14

    aget-wide v14, v9, v2

    aget-wide v16, v5, v2

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v9, v1

    aput-wide v3, v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v0, p0

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v1, v10

    aget-wide v4, v9, v10

    mul-double/2addr v2, v4

    aget-wide v4, v1, v11

    aget-wide v12, v9, v11

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, v1, v0

    aget-wide v5, v9, v0

    mul-double/2addr v3, v5

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v1, v5

    add-int/2addr v0, v11

    aget-wide v0, v9, v0

    mul-double/2addr v5, v0

    sub-double/2addr v3, v5

    aput-wide v3, p1, v2

    :goto_8
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v8

    if-ge v11, v0, :cond_a

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v2, p2, v0

    iget-object v3, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v4, v3, v0

    aget-wide v12, v9, v0

    mul-double/2addr v4, v12

    aget-wide v12, v3, v1

    aget-wide v14, v9, v1

    mul-double/2addr v12, v14

    sub-double/2addr v4, v12

    aput-wide v4, p1, v2

    add-int v2, p2, v1

    aget-wide v4, v3, v1

    aget-wide v12, v9, v0

    mul-double/2addr v4, v12

    aget-wide v12, v3, v0

    aget-wide v0, v9, v1

    mul-double/2addr v12, v0

    add-double/2addr v4, v12

    aput-wide v4, p1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_8
    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v2, v1, v10

    aget-wide v4, v9, v10

    mul-double/2addr v2, v4

    aget-wide v4, v1, v11

    aget-wide v12, v9, v11

    mul-double/2addr v4, v12

    sub-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, v1, v0

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v9, v5

    mul-double/2addr v3, v5

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v1, v5

    aget-wide v0, v9, v0

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    move v0, v11

    :goto_9
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v1, -0x1

    div-int/2addr v2, v8

    if-ge v0, v2, :cond_9

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v4, v1

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    aget-wide v12, v4, v2

    aget-wide v14, v9, v2

    mul-double/2addr v12, v14

    sub-double/2addr v5, v12

    aput-wide v5, p1, v3

    add-int v3, p2, v2

    aget-wide v5, v4, v2

    aget-wide v12, v9, v1

    mul-double/2addr v5, v12

    aget-wide v12, v4, v1

    aget-wide v1, v9, v2

    mul-double/2addr v12, v1

    add-double/2addr v5, v12

    aput-wide v5, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    add-int v0, p2, v1

    sub-int/2addr v0, v11

    iget-object v2, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v9, v5

    mul-double/2addr v3, v5

    aget-wide v5, v2, v1

    aget-wide v1, v9, v1

    mul-double/2addr v5, v1

    sub-double/2addr v3, v5

    aput-wide v3, p1, v0

    :cond_a
    return-void
.end method

.method private bluesteini()V
    .locals 14

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v0, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    aput-wide v6, v0, v8

    move v6, v1

    move v0, v8

    :goto_0
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v7, :cond_1

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v10, v9, -0x1

    add-int/2addr v6, v10

    mul-int/lit8 v10, v7, 0x2

    if-lt v6, v10, :cond_0

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    :cond_0
    int-to-double v10, v6

    mul-double/2addr v10, v2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    aput-wide v12, v7, v9

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v9, v9, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    aput-wide v10, v7, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v2, v0

    div-double/2addr v4, v2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v2, v1

    mul-double/2addr v6, v4

    aput-wide v6, v0, v1

    aget-wide v1, v2, v8

    mul-double/2addr v1, v4

    aput-wide v1, v0, v8

    const/4 v0, 0x2

    move v1, v0

    :goto_1
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v3, v1

    mul-double/2addr v6, v4

    aput-wide v6, v2, v1

    add-int/lit8 v6, v1, 0x1

    aget-wide v9, v3, v6

    mul-double/2addr v9, v4

    aput-wide v9, v2, v6

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v7, v1

    aget-wide v9, v2, v1

    aput-wide v9, v2, v7

    mul-int/2addr v3, v0

    sub-int/2addr v3, v1

    add-int/2addr v3, v8

    aget-wide v6, v2, v6

    aput-wide v6, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    return-void
.end method

.method private cftb040([DI)V
    .locals 25

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x4

    aget-wide v3, p1, v2

    add-double/2addr v0, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v4, p1, v3

    add-int/lit8 v6, p2, 0x5

    aget-wide v7, p1, v6

    add-double/2addr v4, v7

    aget-wide v7, p1, p2

    aget-wide v9, p1, v2

    sub-double/2addr v7, v9

    aget-wide v9, p1, v3

    aget-wide v11, p1, v6

    sub-double/2addr v9, v11

    add-int/lit8 v11, p2, 0x2

    aget-wide v12, p1, v11

    add-int/lit8 v14, p2, 0x6

    aget-wide v15, p1, v14

    add-double/2addr v12, v15

    add-int/lit8 v15, p2, 0x3

    aget-wide v16, p1, v15

    add-int/lit8 v18, p2, 0x7

    aget-wide v19, p1, v18

    add-double v16, v16, v19

    aget-wide v19, p1, v11

    aget-wide v21, p1, v14

    sub-double v19, v19, v21

    aget-wide v21, p1, v15

    aget-wide v23, p1, v18

    sub-double v21, v21, v23

    add-double v23, v0, v12

    aput-wide v23, p1, p2

    add-double v23, v4, v16

    aput-wide v23, p1, v3

    add-double v23, v7, v21

    aput-wide v23, p1, v11

    sub-double v23, v9, v19

    aput-wide v23, p1, v15

    sub-double/2addr v0, v12

    aput-wide v0, p1, v2

    sub-double v4, v4, v16

    aput-wide v4, p1, v6

    sub-double v7, v7, v21

    aput-wide v7, p1, v14

    add-double v9, v9, v19

    aput-wide v9, p1, v18

    return-void
.end method

.method private cftb1st(I[DI[DI)V
    .locals 75

    shr-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v1, v1

    add-int v3, v2, v1

    add-int v4, p3, v1

    add-int v2, p3, v2

    add-int v3, p3, v3

    aget-wide v5, p2, p3

    aget-wide v7, p2, v2

    add-double/2addr v5, v7

    add-int/lit8 v7, p3, 0x1

    aget-wide v8, p2, v7

    neg-double v8, v8

    add-int/lit8 v10, v2, 0x1

    aget-wide v11, p2, v10

    sub-double/2addr v8, v11

    aget-wide v11, p2, p3

    aget-wide v13, p2, v2

    sub-double/2addr v11, v13

    aget-wide v13, p2, v7

    neg-double v13, v13

    aget-wide v15, p2, v10

    add-double/2addr v13, v15

    aget-wide v15, p2, v4

    aget-wide v17, p2, v3

    add-double v15, v15, v17

    add-int/lit8 v17, v4, 0x1

    aget-wide v18, p2, v17

    add-int/lit8 v20, v3, 0x1

    aget-wide v21, p2, v20

    add-double v18, v18, v21

    aget-wide v21, p2, v4

    aget-wide v23, p2, v3

    sub-double v21, v21, v23

    aget-wide v23, p2, v17

    aget-wide v25, p2, v20

    sub-double v23, v23, v25

    add-double v25, v5, v15

    aput-wide v25, p2, p3

    sub-double v25, v8, v18

    aput-wide v25, p2, v7

    sub-double/2addr v5, v15

    aput-wide v5, p2, v4

    add-double v8, v8, v18

    aput-wide v8, p2, v17

    add-double v4, v11, v23

    aput-wide v4, p2, v2

    add-double v4, v13, v21

    aput-wide v4, p2, v10

    sub-double v11, v11, v23

    aput-wide v11, p2, v3

    sub-double v13, v13, v21

    aput-wide v13, p2, v20

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    add-int/lit8 v4, p5, 0x2

    aget-wide v4, p4, v4

    add-int/lit8 v6, p5, 0x3

    aget-wide v6, p4, v6

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-wide/from16 v16, v2

    move-wide v14, v10

    move v2, v12

    move v3, v13

    move-wide v12, v14

    move-wide v10, v8

    :goto_0
    move/from16 p1, v1

    add-int/lit8 v1, v0, -0x2

    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v3, 0x4

    add-int v1, p5, v3

    aget-wide v18, p4, v1

    add-double v12, v12, v18

    mul-double/2addr v12, v4

    add-int/lit8 v18, v1, 0x1

    aget-wide v19, p4, v18

    add-double v8, v8, v19

    mul-double/2addr v8, v4

    add-int/lit8 v19, v1, 0x2

    aget-wide v20, p4, v19

    add-double v14, v14, v20

    mul-double/2addr v14, v6

    add-int/lit8 v20, v1, 0x3

    aget-wide v21, p4, v20

    add-double v10, v10, v21

    mul-double/2addr v10, v6

    aget-wide v21, p4, v1

    aget-wide v23, p4, v18

    aget-wide v18, p4, v19

    aget-wide v25, p4, v20

    add-int v1, v2, p1

    add-int v20, v1, p1

    add-int v27, v20, p1

    add-int v1, p3, v1

    add-int v20, p3, v20

    add-int v27, p3, v27

    add-int v28, p3, v2

    aget-wide v29, p2, v28

    aget-wide v31, p2, v20

    add-double v29, v29, v31

    add-int/lit8 v31, v28, 0x1

    move-wide/from16 v32, v6

    aget-wide v6, p2, v31

    neg-double v6, v6

    add-int/lit8 v34, v20, 0x1

    aget-wide v35, p2, v34

    sub-double v6, v6, v35

    aget-wide v35, p2, v28

    aget-wide v37, p2, v20

    sub-double v35, v35, v37

    move-wide/from16 v37, v4

    move v5, v3

    aget-wide v3, p2, v31

    neg-double v3, v3

    aget-wide v39, p2, v34

    add-double v3, v3, v39

    add-int/lit8 v39, v28, 0x2

    aget-wide v40, p2, v39

    add-int/lit8 v42, v20, 0x2

    aget-wide v43, p2, v42

    add-double v40, v40, v43

    add-int/lit8 v43, v28, 0x3

    move-wide/from16 v44, v10

    aget-wide v10, p2, v43

    neg-double v10, v10

    add-int/lit8 v46, v20, 0x3

    aget-wide v47, p2, v46

    sub-double v10, v10, v47

    aget-wide v47, p2, v39

    aget-wide v49, p2, v42

    sub-double v47, v47, v49

    move-wide/from16 v49, v14

    aget-wide v14, p2, v43

    neg-double v14, v14

    aget-wide v51, p2, v46

    add-double v14, v14, v51

    aget-wide v51, p2, v1

    aget-wide v53, p2, v27

    add-double v51, v51, v53

    add-int/lit8 v53, v1, 0x1

    aget-wide v54, p2, v53

    add-int/lit8 v56, v27, 0x1

    aget-wide v57, p2, v56

    add-double v54, v54, v57

    aget-wide v57, p2, v1

    aget-wide v59, p2, v27

    sub-double v57, v57, v59

    aget-wide v59, p2, v53

    aget-wide v61, p2, v56

    sub-double v59, v59, v61

    add-int/lit8 v61, v1, 0x2

    aget-wide v62, p2, v61

    add-int/lit8 v64, v27, 0x2

    aget-wide v65, p2, v64

    add-double v62, v62, v65

    add-int/lit8 v65, v1, 0x3

    aget-wide v66, p2, v65

    add-int/lit8 v68, v27, 0x3

    aget-wide v69, p2, v68

    add-double v66, v66, v69

    aget-wide v69, p2, v61

    aget-wide v71, p2, v64

    sub-double v69, v69, v71

    aget-wide v71, p2, v65

    aget-wide v73, p2, v68

    sub-double v71, v71, v73

    add-double v73, v29, v51

    aput-wide v73, p2, v28

    sub-double v73, v6, v54

    aput-wide v73, p2, v31

    add-double v73, v40, v62

    aput-wide v73, p2, v39

    sub-double v73, v10, v66

    aput-wide v73, p2, v43

    sub-double v29, v29, v51

    aput-wide v29, p2, v1

    add-double v6, v6, v54

    aput-wide v6, p2, v53

    sub-double v40, v40, v62

    aput-wide v40, p2, v61

    add-double v10, v10, v66

    aput-wide v10, p2, v65

    add-double v6, v35, v59

    add-double v10, v3, v57

    mul-double v28, v12, v6

    mul-double v30, v8, v10

    sub-double v28, v28, v30

    aput-wide v28, p2, v20

    mul-double/2addr v10, v12

    mul-double/2addr v6, v8

    add-double/2addr v10, v6

    aput-wide v10, p2, v34

    add-double v6, v47, v71

    add-double v10, v14, v69

    mul-double v28, v21, v6

    mul-double v30, v23, v10

    sub-double v28, v28, v30

    aput-wide v28, p2, v42

    mul-double v10, v10, v21

    mul-double v6, v6, v23

    add-double/2addr v10, v6

    aput-wide v10, p2, v46

    sub-double v35, v35, v59

    sub-double v3, v3, v57

    mul-double v6, v49, v35

    mul-double v10, v44, v3

    add-double/2addr v6, v10

    aput-wide v6, p2, v27

    mul-double v3, v3, v49

    mul-double v10, v44, v35

    sub-double/2addr v3, v10

    aput-wide v3, p2, v56

    sub-double v47, v47, v71

    sub-double v14, v14, v69

    mul-double v3, v18, v47

    mul-double v6, v25, v14

    add-double/2addr v3, v6

    aput-wide v3, p2, v64

    mul-double v14, v14, v18

    mul-double v47, v47, v25

    sub-double v14, v14, v47

    aput-wide v14, p2, v68

    sub-int v1, p1, v2

    add-int v3, v1, p1

    add-int v4, v3, p1

    add-int v6, v4, p1

    add-int v1, p3, v1

    add-int v3, p3, v3

    add-int v4, p3, v4

    add-int v6, p3, v6

    aget-wide v10, p2, v1

    aget-wide v14, p2, v4

    add-double/2addr v10, v14

    add-int/lit8 v7, v1, 0x1

    aget-wide v14, p2, v7

    neg-double v14, v14

    add-int/lit8 v20, v4, 0x1

    aget-wide v27, p2, v20

    sub-double v14, v14, v27

    aget-wide v27, p2, v1

    aget-wide v29, p2, v4

    sub-double v27, v27, v29

    move-wide/from16 v29, v12

    aget-wide v12, p2, v7

    neg-double v12, v12

    aget-wide v34, p2, v20

    add-double v12, v12, v34

    add-int/lit8 v31, v1, -0x2

    aget-wide v34, p2, v31

    add-int/lit8 v36, v4, -0x2

    aget-wide v39, p2, v36

    add-double v34, v34, v39

    add-int/lit8 v39, v1, -0x1

    move-wide/from16 v40, v8

    aget-wide v8, p2, v39

    neg-double v8, v8

    add-int/lit8 v42, v4, -0x1

    aget-wide v46, p2, v42

    sub-double v8, v8, v46

    aget-wide v46, p2, v31

    aget-wide v51, p2, v36

    sub-double v46, v46, v51

    move/from16 v48, v4

    move/from16 v43, v5

    aget-wide v4, p2, v39

    neg-double v4, v4

    aget-wide v51, p2, v42

    add-double v4, v4, v51

    aget-wide v51, p2, v3

    aget-wide v53, p2, v6

    add-double v51, v51, v53

    add-int/lit8 v53, v3, 0x1

    aget-wide v54, p2, v53

    add-int/lit8 v56, v6, 0x1

    aget-wide v57, p2, v56

    add-double v54, v54, v57

    aget-wide v57, p2, v3

    aget-wide v59, p2, v6

    sub-double v57, v57, v59

    aget-wide v59, p2, v53

    aget-wide v61, p2, v56

    sub-double v59, v59, v61

    add-int/lit8 v61, v3, -0x2

    aget-wide v62, p2, v61

    add-int/lit8 v64, v6, -0x2

    aget-wide v65, p2, v64

    add-double v62, v62, v65

    add-int/lit8 v65, v3, -0x1

    aget-wide v66, p2, v65

    add-int/lit8 v68, v6, -0x1

    aget-wide v69, p2, v68

    add-double v66, v66, v69

    aget-wide v69, p2, v61

    aget-wide v71, p2, v64

    sub-double v69, v69, v71

    aget-wide v71, p2, v65

    aget-wide v73, p2, v68

    sub-double v71, v71, v73

    add-double v73, v10, v51

    aput-wide v73, p2, v1

    sub-double v73, v14, v54

    aput-wide v73, p2, v7

    add-double v73, v34, v62

    aput-wide v73, p2, v31

    sub-double v73, v8, v66

    aput-wide v73, p2, v39

    sub-double v10, v10, v51

    aput-wide v10, p2, v3

    add-double v14, v14, v54

    aput-wide v14, p2, v53

    sub-double v34, v34, v62

    aput-wide v34, p2, v61

    add-double v8, v8, v66

    aput-wide v8, p2, v65

    add-double v7, v27, v59

    add-double v9, v12, v57

    mul-double v14, v40, v7

    mul-double v34, v29, v9

    sub-double v14, v14, v34

    aput-wide v14, p2, v48

    mul-double v9, v9, v40

    mul-double v7, v7, v29

    add-double/2addr v9, v7

    aput-wide v9, p2, v20

    add-double v7, v46, v71

    add-double v9, v4, v69

    mul-double v14, v23, v7

    mul-double v29, v21, v9

    sub-double v14, v14, v29

    aput-wide v14, p2, v36

    mul-double v9, v9, v23

    mul-double v7, v7, v21

    add-double/2addr v9, v7

    aput-wide v9, p2, v42

    sub-double v27, v27, v59

    sub-double v12, v12, v57

    mul-double v10, v44, v27

    mul-double v14, v49, v12

    add-double/2addr v10, v14

    aput-wide v10, p2, v6

    mul-double v10, v44, v12

    mul-double v14, v49, v27

    sub-double/2addr v10, v14

    aput-wide v10, p2, v56

    sub-double v46, v46, v71

    sub-double v4, v4, v69

    mul-double v6, v25, v46

    mul-double v8, v18, v4

    add-double/2addr v6, v8

    aput-wide v6, p2, v64

    mul-double v4, v4, v25

    mul-double v46, v46, v18

    sub-double v4, v4, v46

    aput-wide v4, p2, v68

    add-int/lit8 v2, v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v14, v18

    move-wide/from16 v12, v21

    move-wide/from16 v8, v23

    move-wide/from16 v10, v25

    move-wide/from16 v6, v32

    move-wide/from16 v4, v37

    move/from16 v3, v43

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v37, v4

    move-wide/from16 v32, v6

    add-double v12, v12, v16

    mul-double v4, v37, v12

    add-double v8, v8, v16

    mul-double v1, v37, v8

    sub-double v14, v14, v16

    mul-double v6, v32, v14

    sub-double v10, v10, v16

    mul-double v8, v32, v10

    add-int v3, v0, p1

    add-int v10, v3, p1

    add-int v11, v10, p1

    add-int v0, p3, v0

    add-int v3, p3, v3

    add-int v10, p3, v10

    add-int v11, p3, v11

    add-int/lit8 v12, v0, -0x2

    aget-wide v13, p2, v12

    add-int/lit8 v15, v10, -0x2

    aget-wide v18, p2, v15

    add-double v13, v13, v18

    add-int/lit8 v18, v0, -0x1

    move-wide/from16 p4, v8

    aget-wide v8, p2, v18

    neg-double v8, v8

    add-int/lit8 v19, v10, -0x1

    aget-wide v20, p2, v19

    sub-double v8, v8, v20

    aget-wide v20, p2, v12

    aget-wide v22, p2, v15

    sub-double v20, v20, v22

    move-wide/from16 v22, v6

    aget-wide v6, p2, v18

    neg-double v6, v6

    aget-wide v24, p2, v19

    add-double v6, v6, v24

    add-int/lit8 v24, v3, -0x2

    aget-wide v25, p2, v24

    add-int/lit8 v27, v11, -0x2

    aget-wide v28, p2, v27

    add-double v25, v25, v28

    add-int/lit8 v28, v3, -0x1

    aget-wide v29, p2, v28

    add-int/lit8 v31, v11, -0x1

    aget-wide v32, p2, v31

    add-double v29, v29, v32

    aget-wide v32, p2, v24

    aget-wide v34, p2, v27

    sub-double v32, v32, v34

    aget-wide v34, p2, v28

    aget-wide v36, p2, v31

    sub-double v34, v34, v36

    add-double v36, v13, v25

    aput-wide v36, p2, v12

    sub-double v36, v8, v29

    aput-wide v36, p2, v18

    sub-double v13, v13, v25

    aput-wide v13, p2, v24

    add-double v8, v8, v29

    aput-wide v8, p2, v28

    add-double v8, v20, v34

    add-double v12, v6, v32

    mul-double v24, v4, v8

    mul-double v28, v1, v12

    sub-double v24, v24, v28

    aput-wide v24, p2, v15

    mul-double/2addr v12, v4

    mul-double/2addr v8, v1

    add-double/2addr v12, v8

    aput-wide v12, p2, v19

    sub-double v20, v20, v34

    sub-double v6, v6, v32

    mul-double v8, v22, v20

    mul-double v12, p4, v6

    add-double/2addr v8, v12

    aput-wide v8, p2, v27

    mul-double v6, v6, v22

    mul-double v8, p4, v20

    sub-double/2addr v6, v8

    aput-wide v6, p2, v31

    aget-wide v6, p2, v0

    aget-wide v8, p2, v10

    add-double/2addr v6, v8

    add-int/lit8 v8, v0, 0x1

    aget-wide v12, p2, v8

    neg-double v12, v12

    add-int/lit8 v9, v10, 0x1

    aget-wide v14, p2, v9

    sub-double/2addr v12, v14

    aget-wide v14, p2, v0

    aget-wide v18, p2, v10

    sub-double v14, v14, v18

    move-wide/from16 v18, v4

    aget-wide v4, p2, v8

    neg-double v4, v4

    aget-wide v20, p2, v9

    add-double v4, v4, v20

    aget-wide v20, p2, v3

    aget-wide v24, p2, v11

    add-double v20, v20, v24

    add-int/lit8 v24, v3, 0x1

    aget-wide v25, p2, v24

    add-int/lit8 v27, v11, 0x1

    aget-wide v28, p2, v27

    add-double v25, v25, v28

    aget-wide v28, p2, v3

    aget-wide v30, p2, v11

    sub-double v28, v28, v30

    aget-wide v30, p2, v24

    aget-wide v32, p2, v27

    sub-double v30, v30, v32

    add-double v32, v6, v20

    aput-wide v32, p2, v0

    sub-double v32, v12, v25

    aput-wide v32, p2, v8

    sub-double v6, v6, v20

    aput-wide v6, p2, v3

    add-double v12, v12, v25

    aput-wide v12, p2, v24

    add-double v6, v14, v30

    add-double v12, v4, v28

    sub-double v20, v6, v12

    mul-double v20, v20, v16

    aput-wide v20, p2, v10

    add-double/2addr v12, v6

    mul-double v6, v16, v12

    aput-wide v6, p2, v9

    sub-double v14, v14, v30

    sub-double v4, v4, v28

    move-wide/from16 v6, v16

    neg-double v6, v6

    add-double v8, v14, v4

    mul-double/2addr v8, v6

    aput-wide v8, p2, v11

    sub-double/2addr v4, v14

    mul-double/2addr v6, v4

    aput-wide v6, p2, v27

    add-int/lit8 v4, v0, 0x2

    aget-wide v5, p2, v4

    add-int/lit8 v7, v10, 0x2

    aget-wide v8, p2, v7

    add-double/2addr v5, v8

    add-int/lit8 v0, v0, 0x3

    aget-wide v8, p2, v0

    neg-double v8, v8

    add-int/lit8 v10, v10, 0x3

    aget-wide v12, p2, v10

    sub-double/2addr v8, v12

    aget-wide v12, p2, v4

    aget-wide v14, p2, v7

    sub-double/2addr v12, v14

    aget-wide v14, p2, v0

    neg-double v14, v14

    aget-wide v16, p2, v10

    add-double v14, v14, v16

    add-int/lit8 v16, v3, 0x2

    aget-wide v20, p2, v16

    add-int/lit8 v17, v11, 0x2

    aget-wide v24, p2, v17

    add-double v20, v20, v24

    add-int/lit8 v3, v3, 0x3

    aget-wide v24, p2, v3

    add-int/lit8 v11, v11, 0x3

    aget-wide v26, p2, v11

    add-double v24, v24, v26

    aget-wide v26, p2, v16

    aget-wide v28, p2, v17

    sub-double v26, v26, v28

    aget-wide v28, p2, v3

    aget-wide v30, p2, v11

    sub-double v28, v28, v30

    add-double v30, v5, v20

    aput-wide v30, p2, v4

    sub-double v30, v8, v24

    aput-wide v30, p2, v0

    sub-double v5, v5, v20

    aput-wide v5, p2, v16

    add-double v8, v8, v24

    aput-wide v8, p2, v3

    add-double v3, v12, v28

    add-double v5, v14, v26

    mul-double v8, v1, v3

    mul-double v20, v18, v5

    sub-double v8, v8, v20

    aput-wide v8, p2, v7

    mul-double/2addr v1, v5

    mul-double v4, v18, v3

    add-double/2addr v1, v4

    aput-wide v1, p2, v10

    sub-double v12, v12, v28

    sub-double v14, v14, v26

    mul-double v8, p4, v12

    mul-double v6, v22, v14

    add-double/2addr v8, v6

    aput-wide v8, p2, v17

    mul-double v8, p4, v14

    mul-double v6, v22, v12

    sub-double/2addr v8, v6

    aput-wide v8, p2, v11

    return-void
.end method

.method private cftbsub(I[DI[II[D)V
    .locals 8

    const/16 v0, 0x8

    if-le p1, v0, :cond_5

    const/16 v1, 0x20

    if-le p1, v1, :cond_3

    shr-int/lit8 v0, p1, 0x2

    sub-int v6, p5, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb1st(I[DI[DI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    if-le p1, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    if-le p1, v0, :cond_2

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    :goto_0
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2conj(I[I[DI)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    sub-int/2addr p5, v0

    invoke-direct {p0, p2, p3, p6, p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216neg([DI)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p6, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208neg([DI)V

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb040([DI)V

    goto :goto_1

    :cond_6
    const/4 p4, 0x4

    if-ne p1, p4, :cond_7

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    :cond_7
    :goto_1
    return-void
.end method

.method private cftf040([DI)V
    .locals 25

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x4

    aget-wide v3, p1, v2

    add-double/2addr v0, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v4, p1, v3

    add-int/lit8 v6, p2, 0x5

    aget-wide v7, p1, v6

    add-double/2addr v4, v7

    aget-wide v7, p1, p2

    aget-wide v9, p1, v2

    sub-double/2addr v7, v9

    aget-wide v9, p1, v3

    aget-wide v11, p1, v6

    sub-double/2addr v9, v11

    add-int/lit8 v11, p2, 0x2

    aget-wide v12, p1, v11

    add-int/lit8 v14, p2, 0x6

    aget-wide v15, p1, v14

    add-double/2addr v12, v15

    add-int/lit8 v15, p2, 0x3

    aget-wide v16, p1, v15

    add-int/lit8 v18, p2, 0x7

    aget-wide v19, p1, v18

    add-double v16, v16, v19

    aget-wide v19, p1, v11

    aget-wide v21, p1, v14

    sub-double v19, v19, v21

    aget-wide v21, p1, v15

    aget-wide v23, p1, v18

    sub-double v21, v21, v23

    add-double v23, v0, v12

    aput-wide v23, p1, p2

    add-double v23, v4, v16

    aput-wide v23, p1, v3

    sub-double v23, v7, v21

    aput-wide v23, p1, v11

    add-double v23, v9, v19

    aput-wide v23, p1, v15

    sub-double/2addr v0, v12

    aput-wide v0, p1, v2

    sub-double v4, v4, v16

    aput-wide v4, p1, v6

    add-double v7, v7, v21

    aput-wide v7, p1, v14

    sub-double v9, v9, v19

    aput-wide v9, p1, v18

    return-void
.end method

.method private cftf081([DI[DI)V
    .locals 53

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x8

    aget-wide v5, p1, v4

    add-double/2addr v2, v5

    add-int/lit8 v5, p2, 0x1

    aget-wide v6, p1, v5

    add-int/lit8 v8, p2, 0x9

    aget-wide v9, p1, v8

    add-double/2addr v6, v9

    aget-wide v9, p1, p2

    aget-wide v11, p1, v4

    sub-double/2addr v9, v11

    aget-wide v11, p1, v5

    aget-wide v13, p1, v8

    sub-double/2addr v11, v13

    add-int/lit8 v13, p2, 0x4

    aget-wide v14, p1, v13

    add-int/lit8 v16, p2, 0xc

    aget-wide v17, p1, v16

    add-double v14, v14, v17

    add-int/lit8 v17, p2, 0x5

    aget-wide v18, p1, v17

    add-int/lit8 v20, p2, 0xd

    aget-wide v21, p1, v20

    add-double v18, v18, v21

    aget-wide v21, p1, v13

    aget-wide v23, p1, v16

    sub-double v21, v21, v23

    aget-wide v23, p1, v17

    aget-wide v25, p1, v20

    sub-double v23, v23, v25

    add-double v25, v2, v14

    add-double v27, v6, v18

    sub-double/2addr v2, v14

    sub-double v6, v6, v18

    sub-double v14, v9, v23

    add-double v18, v11, v21

    add-double v9, v9, v23

    sub-double v11, v11, v21

    add-int/lit8 v21, p2, 0x2

    aget-wide v22, p1, v21

    add-int/lit8 v24, p2, 0xa

    aget-wide v29, p1, v24

    add-double v22, v22, v29

    add-int/lit8 v29, p2, 0x3

    aget-wide v30, p1, v29

    add-int/lit8 v32, p2, 0xb

    aget-wide v33, p1, v32

    add-double v30, v30, v33

    aget-wide v33, p1, v21

    aget-wide v35, p1, v24

    sub-double v33, v33, v35

    aget-wide v35, p1, v29

    aget-wide v37, p1, v32

    sub-double v35, v35, v37

    add-int/lit8 v37, p2, 0x6

    aget-wide v38, p1, v37

    add-int/lit8 v40, p2, 0xe

    aget-wide v41, p1, v40

    add-double v38, v38, v41

    add-int/lit8 v41, p2, 0x7

    aget-wide v42, p1, v41

    add-int/lit8 v44, p2, 0xf

    aget-wide v45, p1, v44

    add-double v42, v42, v45

    aget-wide v45, p1, v37

    aget-wide v47, p1, v40

    sub-double v45, v45, v47

    aget-wide v47, p1, v41

    aget-wide v49, p1, v44

    sub-double v47, v47, v49

    add-double v49, v22, v38

    add-double v51, v30, v42

    sub-double v22, v22, v38

    sub-double v30, v30, v42

    sub-double v38, v33, v47

    add-double v42, v35, v45

    add-double v33, v33, v47

    sub-double v35, v35, v45

    sub-double v45, v38, v42

    mul-double v45, v45, v0

    add-double v38, v38, v42

    mul-double v38, v38, v0

    sub-double v42, v33, v35

    mul-double v42, v42, v0

    add-double v33, v33, v35

    mul-double v0, v0, v33

    add-double v33, v14, v45

    aput-wide v33, p1, v4

    add-double v33, v18, v38

    aput-wide v33, p1, v8

    sub-double v14, v14, v45

    aput-wide v14, p1, v24

    sub-double v18, v18, v38

    aput-wide v18, p1, v32

    sub-double v14, v9, v0

    aput-wide v14, p1, v16

    add-double v14, v11, v42

    aput-wide v14, p1, v20

    add-double/2addr v9, v0

    aput-wide v9, p1, v40

    sub-double v11, v11, v42

    aput-wide v11, p1, v44

    add-double v0, v25, v49

    aput-wide v0, p1, p2

    add-double v0, v27, v51

    aput-wide v0, p1, v5

    sub-double v25, v25, v49

    aput-wide v25, p1, v21

    sub-double v27, v27, v51

    aput-wide v27, p1, v29

    sub-double v0, v2, v30

    aput-wide v0, p1, v13

    add-double v0, v6, v22

    aput-wide v0, p1, v17

    add-double v2, v2, v30

    aput-wide v2, p1, v37

    sub-double v6, v6, v22

    aput-wide v6, p1, v41

    return-void
.end method

.method private cftf082([DI[DI)V
    .locals 57

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x9

    aget-wide v9, p1, v8

    sub-double/2addr v6, v9

    add-int/lit8 v9, p2, 0x1

    aget-wide v10, p1, v9

    add-int/lit8 v12, p2, 0x8

    aget-wide v13, p1, v12

    add-double/2addr v10, v13

    aget-wide v13, p1, p2

    aget-wide v15, p1, v8

    add-double/2addr v13, v15

    aget-wide v15, p1, v9

    aget-wide v17, p1, v12

    sub-double v15, v15, v17

    add-int/lit8 v17, p2, 0x4

    aget-wide v18, p1, v17

    add-int/lit8 v20, p2, 0xd

    aget-wide v21, p1, v20

    sub-double v18, v18, v21

    add-int/lit8 v21, p2, 0x5

    aget-wide v22, p1, v21

    add-int/lit8 v24, p2, 0xc

    aget-wide v25, p1, v24

    add-double v22, v22, v25

    sub-double v25, v18, v22

    mul-double v25, v25, v0

    add-double v22, v22, v18

    mul-double v22, v22, v0

    aget-wide v18, p1, v17

    aget-wide v27, p1, v20

    add-double v18, v18, v27

    aget-wide v27, p1, v21

    aget-wide v29, p1, v24

    sub-double v27, v27, v29

    sub-double v29, v18, v27

    mul-double v29, v29, v0

    add-double v27, v27, v18

    mul-double v0, v0, v27

    add-int/lit8 v18, p2, 0x2

    aget-wide v27, p1, v18

    add-int/lit8 v19, p2, 0xb

    aget-wide v31, p1, v19

    sub-double v27, v27, v31

    add-int/lit8 v31, p2, 0x3

    aget-wide v32, p1, v31

    add-int/lit8 v34, p2, 0xa

    aget-wide v35, p1, v34

    add-double v32, v32, v35

    mul-double v35, v2, v27

    mul-double v37, v4, v32

    sub-double v35, v35, v37

    mul-double v32, v32, v2

    mul-double v27, v27, v4

    add-double v32, v32, v27

    aget-wide v27, p1, v18

    aget-wide v37, p1, v19

    add-double v27, v27, v37

    aget-wide v37, p1, v31

    aget-wide v39, p1, v34

    sub-double v37, v37, v39

    mul-double v39, v4, v27

    mul-double v41, v2, v37

    sub-double v39, v39, v41

    mul-double v37, v37, v4

    mul-double v27, v27, v2

    add-double v37, v37, v27

    add-int/lit8 v27, p2, 0x6

    aget-wide v41, p1, v27

    add-int/lit8 v28, p2, 0xf

    aget-wide v43, p1, v28

    sub-double v41, v41, v43

    add-int/lit8 v43, p2, 0x7

    aget-wide v44, p1, v43

    add-int/lit8 v46, p2, 0xe

    aget-wide v47, p1, v46

    add-double v44, v44, v47

    mul-double v47, v4, v41

    mul-double v49, v2, v44

    sub-double v47, v47, v49

    mul-double v44, v44, v4

    mul-double v41, v41, v2

    add-double v44, v44, v41

    aget-wide v41, p1, v27

    aget-wide v49, p1, v28

    add-double v41, v41, v49

    aget-wide v49, p1, v43

    aget-wide v51, p1, v46

    sub-double v49, v49, v51

    mul-double v51, v2, v41

    mul-double v53, v4, v49

    sub-double v51, v51, v53

    mul-double v2, v2, v49

    mul-double v4, v4, v41

    add-double/2addr v2, v4

    add-double v4, v6, v25

    add-double v41, v10, v22

    add-double v49, v35, v47

    add-double v53, v32, v44

    add-double v55, v4, v49

    aput-wide v55, p1, p2

    add-double v55, v41, v53

    aput-wide v55, p1, v9

    sub-double v4, v4, v49

    aput-wide v4, p1, v18

    sub-double v41, v41, v53

    aput-wide v41, p1, v31

    sub-double v6, v6, v25

    sub-double v10, v10, v22

    sub-double v35, v35, v47

    sub-double v32, v32, v44

    sub-double v4, v6, v32

    aput-wide v4, p1, v17

    add-double v4, v10, v35

    aput-wide v4, p1, v21

    add-double v6, v6, v32

    aput-wide v6, p1, v27

    sub-double v10, v10, v35

    aput-wide v10, p1, v43

    sub-double v4, v13, v0

    add-double v6, v15, v29

    sub-double v9, v39, v51

    sub-double v17, v37, v2

    add-double v21, v4, v9

    aput-wide v21, p1, v12

    add-double v11, v6, v17

    aput-wide v11, p1, v8

    sub-double/2addr v4, v9

    aput-wide v4, p1, v34

    sub-double v6, v6, v17

    aput-wide v6, p1, v19

    add-double/2addr v13, v0

    sub-double v15, v15, v29

    add-double v39, v39, v51

    add-double v37, v37, v2

    sub-double v0, v13, v37

    aput-wide v0, p1, v24

    add-double v0, v15, v39

    aput-wide v0, p1, v20

    add-double v13, v13, v37

    aput-wide v13, p1, v46

    sub-double v15, v15, v39

    aput-wide v15, p1, v28

    return-void
.end method

.method private cftf161([DI[DI)V
    .locals 109

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x10

    aget-wide v9, p1, v8

    add-double/2addr v6, v9

    add-int/lit8 v9, p2, 0x1

    aget-wide v10, p1, v9

    add-int/lit8 v12, p2, 0x11

    aget-wide v13, p1, v12

    add-double/2addr v10, v13

    aget-wide v13, p1, p2

    aget-wide v15, p1, v8

    sub-double/2addr v13, v15

    aget-wide v15, p1, v9

    aget-wide v17, p1, v12

    sub-double v15, v15, v17

    add-int/lit8 v17, p2, 0x8

    aget-wide v18, p1, v17

    add-int/lit8 v20, p2, 0x18

    aget-wide v21, p1, v20

    add-double v18, v18, v21

    add-int/lit8 v21, p2, 0x9

    aget-wide v22, p1, v21

    add-int/lit8 v24, p2, 0x19

    aget-wide v25, p1, v24

    add-double v22, v22, v25

    aget-wide v25, p1, v17

    aget-wide v27, p1, v20

    sub-double v25, v25, v27

    aget-wide v27, p1, v21

    aget-wide v29, p1, v24

    sub-double v27, v27, v29

    add-double v29, v6, v18

    add-double v31, v10, v22

    sub-double v6, v6, v18

    sub-double v10, v10, v22

    sub-double v18, v13, v27

    add-double v22, v15, v25

    add-double v13, v13, v27

    sub-double v15, v15, v25

    add-int/lit8 v25, p2, 0x2

    aget-wide v26, p1, v25

    add-int/lit8 v28, p2, 0x12

    aget-wide v33, p1, v28

    add-double v26, v26, v33

    add-int/lit8 v33, p2, 0x3

    aget-wide v34, p1, v33

    add-int/lit8 v36, p2, 0x13

    aget-wide v37, p1, v36

    add-double v34, v34, v37

    aget-wide v37, p1, v25

    aget-wide v39, p1, v28

    sub-double v37, v37, v39

    aget-wide v39, p1, v33

    aget-wide v41, p1, v36

    sub-double v39, v39, v41

    add-int/lit8 v41, p2, 0xa

    aget-wide v42, p1, v41

    add-int/lit8 v44, p2, 0x1a

    aget-wide v45, p1, v44

    add-double v42, v42, v45

    add-int/lit8 v45, p2, 0xb

    aget-wide v46, p1, v45

    add-int/lit8 v48, p2, 0x1b

    aget-wide v49, p1, v48

    add-double v46, v46, v49

    aget-wide v49, p1, v41

    aget-wide v51, p1, v44

    sub-double v49, v49, v51

    aget-wide v51, p1, v45

    aget-wide v53, p1, v48

    sub-double v51, v51, v53

    add-double v53, v26, v42

    add-double v55, v34, v46

    sub-double v26, v26, v42

    sub-double v34, v34, v46

    sub-double v42, v37, v51

    add-double v46, v39, v49

    mul-double v57, v2, v42

    mul-double v59, v4, v46

    sub-double v57, v57, v59

    mul-double v46, v46, v2

    mul-double v42, v42, v4

    add-double v46, v46, v42

    add-double v37, v37, v51

    sub-double v39, v39, v49

    mul-double v42, v4, v37

    mul-double v49, v2, v39

    sub-double v42, v42, v49

    mul-double v39, v39, v4

    mul-double v37, v37, v2

    add-double v39, v39, v37

    add-int/lit8 v37, p2, 0x4

    aget-wide v49, p1, v37

    add-int/lit8 v38, p2, 0x14

    aget-wide v51, p1, v38

    add-double v49, v49, v51

    add-int/lit8 v51, p2, 0x5

    aget-wide v59, p1, v51

    add-int/lit8 v52, p2, 0x15

    aget-wide v61, p1, v52

    add-double v59, v59, v61

    aget-wide v61, p1, v37

    aget-wide v63, p1, v38

    sub-double v61, v61, v63

    aget-wide v63, p1, v51

    aget-wide v65, p1, v52

    sub-double v63, v63, v65

    add-int/lit8 v65, p2, 0xc

    aget-wide v66, p1, v65

    add-int/lit8 v68, p2, 0x1c

    aget-wide v69, p1, v68

    add-double v66, v66, v69

    add-int/lit8 v69, p2, 0xd

    aget-wide v70, p1, v69

    add-int/lit8 v72, p2, 0x1d

    aget-wide v73, p1, v72

    add-double v70, v70, v73

    aget-wide v73, p1, v65

    aget-wide v75, p1, v68

    sub-double v73, v73, v75

    aget-wide v75, p1, v69

    aget-wide v77, p1, v72

    sub-double v75, v75, v77

    add-double v77, v49, v66

    add-double v79, v59, v70

    sub-double v49, v49, v66

    sub-double v59, v59, v70

    sub-double v66, v61, v75

    add-double v70, v63, v73

    sub-double v81, v66, v70

    mul-double v81, v81, v0

    add-double v70, v70, v66

    mul-double v70, v70, v0

    add-double v61, v61, v75

    sub-double v63, v63, v73

    add-double v66, v61, v63

    mul-double v66, v66, v0

    sub-double v63, v63, v61

    mul-double v63, v63, v0

    add-int/lit8 v61, p2, 0x6

    aget-wide v73, p1, v61

    add-int/lit8 v62, p2, 0x16

    aget-wide v75, p1, v62

    add-double v73, v73, v75

    add-int/lit8 v75, p2, 0x7

    aget-wide v83, p1, v75

    add-int/lit8 v76, p2, 0x17

    aget-wide v85, p1, v76

    add-double v83, v83, v85

    aget-wide v85, p1, v61

    aget-wide v87, p1, v62

    sub-double v85, v85, v87

    aget-wide v87, p1, v75

    aget-wide v89, p1, v76

    sub-double v87, v87, v89

    add-int/lit8 v89, p2, 0xe

    aget-wide v90, p1, v89

    add-int/lit8 v92, p2, 0x1e

    aget-wide v93, p1, v92

    add-double v90, v90, v93

    add-int/lit8 v93, p2, 0xf

    aget-wide v94, p1, v93

    add-int/lit8 v96, p2, 0x1f

    aget-wide v97, p1, v96

    add-double v94, v94, v97

    aget-wide v97, p1, v89

    aget-wide v99, p1, v92

    sub-double v97, v97, v99

    aget-wide v99, p1, v93

    aget-wide v101, p1, v96

    sub-double v99, v99, v101

    add-double v101, v73, v90

    add-double v103, v83, v94

    sub-double v73, v73, v90

    sub-double v83, v83, v94

    sub-double v90, v85, v99

    add-double v94, v87, v97

    mul-double v105, v4, v90

    mul-double v107, v2, v94

    sub-double v105, v105, v107

    mul-double v94, v94, v4

    mul-double v90, v90, v2

    add-double v94, v94, v90

    add-double v85, v85, v99

    sub-double v87, v87, v97

    mul-double v90, v2, v85

    mul-double v97, v4, v87

    sub-double v90, v90, v97

    mul-double v2, v2, v87

    mul-double v4, v4, v85

    add-double/2addr v2, v4

    sub-double v4, v13, v66

    sub-double v85, v15, v63

    add-double v13, v13, v66

    add-double v15, v15, v63

    sub-double v63, v42, v90

    sub-double v66, v39, v2

    add-double v42, v42, v90

    add-double v39, v39, v2

    add-double v2, v4, v63

    aput-wide v2, p1, v20

    add-double v2, v85, v66

    aput-wide v2, p1, v24

    sub-double v4, v4, v63

    aput-wide v4, p1, v44

    sub-double v85, v85, v66

    aput-wide v85, p1, v48

    sub-double v2, v13, v39

    aput-wide v2, p1, v68

    add-double v2, v15, v42

    aput-wide v2, p1, v72

    add-double v13, v13, v39

    aput-wide v13, p1, v92

    sub-double v15, v15, v42

    aput-wide v15, p1, v96

    add-double v2, v18, v81

    add-double v4, v22, v70

    sub-double v18, v18, v81

    sub-double v22, v22, v70

    add-double v13, v57, v105

    add-double v15, v46, v94

    sub-double v57, v57, v105

    sub-double v46, v46, v94

    add-double v39, v2, v13

    aput-wide v39, p1, v8

    add-double v39, v4, v15

    aput-wide v39, p1, v12

    sub-double/2addr v2, v13

    aput-wide v2, p1, v28

    sub-double/2addr v4, v15

    aput-wide v4, p1, v36

    sub-double v2, v18, v46

    aput-wide v2, p1, v38

    add-double v2, v22, v57

    aput-wide v2, p1, v52

    add-double v18, v18, v46

    aput-wide v18, p1, v62

    sub-double v22, v22, v57

    aput-wide v22, p1, v76

    sub-double v2, v26, v83

    add-double v4, v34, v73

    sub-double v12, v2, v4

    mul-double/2addr v12, v0

    add-double/2addr v4, v2

    mul-double/2addr v4, v0

    add-double v26, v26, v83

    sub-double v34, v34, v73

    sub-double v2, v26, v34

    mul-double/2addr v2, v0

    add-double v34, v34, v26

    mul-double v0, v0, v34

    sub-double v14, v6, v59

    add-double v18, v10, v49

    add-double v6, v6, v59

    sub-double v10, v10, v49

    add-double v22, v14, v12

    aput-wide v22, p1, v17

    add-double v16, v18, v4

    aput-wide v16, p1, v21

    sub-double/2addr v14, v12

    aput-wide v14, p1, v41

    sub-double v18, v18, v4

    aput-wide v18, p1, v45

    sub-double v4, v6, v0

    aput-wide v4, p1, v65

    add-double v4, v10, v2

    aput-wide v4, p1, v69

    add-double/2addr v6, v0

    aput-wide v6, p1, v89

    sub-double/2addr v10, v2

    aput-wide v10, p1, v93

    add-double v0, v29, v77

    add-double v2, v31, v79

    sub-double v29, v29, v77

    sub-double v31, v31, v79

    add-double v4, v53, v101

    add-double v6, v55, v103

    sub-double v53, v53, v101

    sub-double v55, v55, v103

    add-double v10, v0, v4

    aput-wide v10, p1, p2

    add-double v10, v2, v6

    aput-wide v10, p1, v9

    sub-double/2addr v0, v4

    aput-wide v0, p1, v25

    sub-double/2addr v2, v6

    aput-wide v2, p1, v33

    sub-double v0, v29, v55

    aput-wide v0, p1, v37

    add-double v0, v31, v53

    aput-wide v0, p1, v51

    add-double v29, v29, v55

    aput-wide v29, p1, v61

    sub-double v31, v31, v53

    aput-wide v31, p1, v75

    return-void
.end method

.method private cftf162([DI[DI)V
    .locals 107

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x4

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x5

    aget-wide v4, p3, v4

    add-int/lit8 v6, p4, 0x6

    aget-wide v6, p3, v6

    add-int/lit8 v8, p4, 0x7

    aget-wide v8, p3, v8

    neg-double v8, v8

    add-int/lit8 v10, p4, 0x8

    aget-wide v10, p3, v10

    add-int/lit8 v12, p4, 0x9

    aget-wide v12, p3, v12

    aget-wide v14, p1, p2

    add-int/lit8 v16, p2, 0x11

    aget-wide v17, p1, v16

    sub-double v14, v14, v17

    add-int/lit8 v17, p2, 0x1

    aget-wide v18, p1, v17

    add-int/lit8 v20, p2, 0x10

    aget-wide v21, p1, v20

    add-double v18, v18, v21

    add-int/lit8 v21, p2, 0x8

    aget-wide v22, p1, v21

    add-int/lit8 v24, p2, 0x19

    aget-wide v25, p1, v24

    sub-double v22, v22, v25

    add-int/lit8 v25, p2, 0x9

    aget-wide v26, p1, v25

    add-int/lit8 v28, p2, 0x18

    aget-wide v29, p1, v28

    add-double v26, v26, v29

    sub-double v29, v22, v26

    mul-double v29, v29, v0

    add-double v26, v26, v22

    mul-double v26, v26, v0

    add-double v22, v14, v29

    add-double v31, v18, v26

    sub-double v14, v14, v29

    sub-double v18, v18, v26

    aget-wide v26, p1, p2

    aget-wide v29, p1, v16

    add-double v26, v26, v29

    aget-wide v29, p1, v17

    aget-wide v33, p1, v20

    sub-double v29, v29, v33

    aget-wide v33, p1, v21

    aget-wide v35, p1, v24

    add-double v33, v33, v35

    aget-wide v35, p1, v25

    aget-wide v37, p1, v28

    sub-double v35, v35, v37

    sub-double v37, v33, v35

    mul-double v37, v37, v0

    add-double v35, v35, v33

    mul-double v35, v35, v0

    sub-double v33, v26, v35

    add-double v39, v29, v37

    add-double v26, v26, v35

    sub-double v29, v29, v37

    add-int/lit8 v35, p2, 0x2

    aget-wide v36, p1, v35

    add-int/lit8 v38, p2, 0x13

    aget-wide v41, p1, v38

    sub-double v36, v36, v41

    add-int/lit8 v41, p2, 0x3

    aget-wide v42, p1, v41

    add-int/lit8 v44, p2, 0x12

    aget-wide v45, p1, v44

    add-double v42, v42, v45

    mul-double v45, v2, v36

    mul-double v47, v4, v42

    sub-double v45, v45, v47

    mul-double v42, v42, v2

    mul-double v36, v36, v4

    add-double v42, v42, v36

    add-int/lit8 v36, p2, 0xa

    aget-wide v47, p1, v36

    add-int/lit8 v37, p2, 0x1b

    aget-wide v49, p1, v37

    sub-double v47, v47, v49

    add-int/lit8 v49, p2, 0xb

    aget-wide v50, p1, v49

    add-int/lit8 v52, p2, 0x1a

    aget-wide v53, p1, v52

    add-double v50, v50, v53

    mul-double v53, v8, v47

    mul-double v55, v6, v50

    sub-double v53, v53, v55

    mul-double v50, v50, v8

    mul-double v47, v47, v6

    add-double v50, v50, v47

    add-double v47, v45, v53

    add-double v55, v42, v50

    sub-double v45, v45, v53

    sub-double v42, v42, v50

    aget-wide v50, p1, v35

    aget-wide v53, p1, v38

    add-double v50, v50, v53

    aget-wide v53, p1, v41

    aget-wide v57, p1, v44

    sub-double v53, v53, v57

    mul-double v57, v6, v50

    mul-double v59, v8, v53

    sub-double v57, v57, v59

    mul-double v53, v53, v6

    mul-double v50, v50, v8

    add-double v53, v53, v50

    aget-wide v50, p1, v36

    aget-wide v59, p1, v37

    add-double v50, v50, v59

    aget-wide v59, p1, v49

    aget-wide v61, p1, v52

    sub-double v59, v59, v61

    mul-double v61, v2, v50

    mul-double v63, v4, v59

    add-double v61, v61, v63

    mul-double v59, v59, v2

    mul-double v50, v50, v4

    sub-double v59, v59, v50

    sub-double v50, v57, v61

    sub-double v63, v53, v59

    add-double v57, v57, v61

    add-double v53, v53, v59

    add-int/lit8 v59, p2, 0x4

    aget-wide v60, p1, v59

    add-int/lit8 v62, p2, 0x15

    aget-wide v65, p1, v62

    sub-double v60, v60, v65

    add-int/lit8 v65, p2, 0x5

    aget-wide v66, p1, v65

    add-int/lit8 v68, p2, 0x14

    aget-wide v69, p1, v68

    add-double v66, v66, v69

    mul-double v69, v10, v60

    mul-double v71, v12, v66

    sub-double v69, v69, v71

    mul-double v66, v66, v10

    mul-double v60, v60, v12

    add-double v66, v66, v60

    add-int/lit8 v60, p2, 0xc

    aget-wide v71, p1, v60

    add-int/lit8 v61, p2, 0x1d

    aget-wide v73, p1, v61

    sub-double v71, v71, v73

    add-int/lit8 v73, p2, 0xd

    aget-wide v74, p1, v73

    add-int/lit8 v76, p2, 0x1c

    aget-wide v77, p1, v76

    add-double v74, v74, v77

    mul-double v77, v12, v71

    mul-double v79, v10, v74

    sub-double v77, v77, v79

    mul-double v74, v74, v12

    mul-double v71, v71, v10

    add-double v74, v74, v71

    add-double v71, v69, v77

    add-double v79, v66, v74

    sub-double v69, v69, v77

    sub-double v66, v66, v74

    aget-wide v74, p1, v59

    aget-wide v77, p1, v62

    add-double v74, v74, v77

    aget-wide v77, p1, v65

    aget-wide v81, p1, v68

    sub-double v77, v77, v81

    mul-double v81, v12, v74

    mul-double v83, v10, v77

    sub-double v81, v81, v83

    mul-double v77, v77, v12

    mul-double v74, v74, v10

    add-double v77, v77, v74

    aget-wide v74, p1, v60

    aget-wide v83, p1, v61

    add-double v74, v74, v83

    aget-wide v83, p1, v73

    aget-wide v85, p1, v76

    sub-double v83, v83, v85

    mul-double v85, v10, v74

    mul-double v87, v12, v83

    sub-double v85, v85, v87

    mul-double v10, v10, v83

    mul-double v12, v12, v74

    add-double/2addr v10, v12

    sub-double v12, v81, v85

    sub-double v74, v77, v10

    add-double v81, v81, v85

    add-double v77, v77, v10

    add-int/lit8 v10, p2, 0x6

    aget-wide v83, p1, v10

    add-int/lit8 v11, p2, 0x17

    aget-wide v85, p1, v11

    sub-double v83, v83, v85

    add-int/lit8 v85, p2, 0x7

    aget-wide v86, p1, v85

    add-int/lit8 v88, p2, 0x16

    aget-wide v89, p1, v88

    add-double v86, v86, v89

    mul-double v89, v6, v83

    mul-double v91, v8, v86

    sub-double v89, v89, v91

    mul-double v86, v86, v6

    mul-double v83, v83, v8

    add-double v86, v86, v83

    add-int/lit8 v83, p2, 0xe

    aget-wide v91, p1, v83

    add-int/lit8 v84, p2, 0x1f

    aget-wide v93, p1, v84

    sub-double v91, v91, v93

    add-int/lit8 v93, p2, 0xf

    aget-wide v94, p1, v93

    add-int/lit8 v96, p2, 0x1e

    aget-wide v97, p1, v96

    add-double v94, v94, v97

    mul-double v97, v4, v91

    mul-double v99, v2, v94

    sub-double v97, v97, v99

    mul-double v94, v94, v4

    mul-double v91, v91, v2

    add-double v94, v94, v91

    add-double v91, v89, v97

    add-double v99, v86, v94

    sub-double v89, v89, v97

    sub-double v86, v86, v94

    aget-wide v94, p1, v10

    aget-wide v97, p1, v11

    add-double v94, v94, v97

    aget-wide v97, p1, v85

    aget-wide v101, p1, v88

    sub-double v97, v97, v101

    mul-double v101, v4, v94

    mul-double v103, v2, v97

    add-double v101, v101, v103

    mul-double v4, v4, v97

    mul-double v2, v2, v94

    sub-double/2addr v4, v2

    aget-wide v2, p1, v83

    aget-wide v94, p1, v84

    add-double v2, v2, v94

    aget-wide v94, p1, v93

    aget-wide v97, p1, v96

    sub-double v94, v94, v97

    mul-double v97, v8, v2

    mul-double v103, v6, v94

    sub-double v97, v97, v103

    mul-double v8, v8, v94

    mul-double/2addr v6, v2

    add-double/2addr v8, v6

    add-double v2, v101, v97

    add-double v6, v4, v8

    sub-double v101, v101, v97

    sub-double/2addr v4, v8

    add-double v8, v22, v71

    add-double v94, v31, v79

    add-double v97, v47, v91

    add-double v103, v55, v99

    add-double v105, v8, v97

    aput-wide v105, p1, p2

    add-double v105, v94, v103

    aput-wide v105, p1, v17

    sub-double v8, v8, v97

    aput-wide v8, p1, v35

    sub-double v94, v94, v103

    aput-wide v94, p1, v41

    sub-double v22, v22, v71

    sub-double v31, v31, v79

    sub-double v47, v47, v91

    sub-double v55, v55, v99

    sub-double v8, v22, v55

    aput-wide v8, p1, v59

    add-double v8, v31, v47

    aput-wide v8, p1, v65

    add-double v22, v22, v55

    aput-wide v22, p1, v10

    sub-double v31, v31, v47

    aput-wide v31, p1, v85

    sub-double v8, v14, v66

    add-double v22, v18, v69

    sub-double v31, v45, v86

    add-double v47, v42, v89

    sub-double v55, v31, v47

    mul-double v55, v55, v0

    add-double v47, v47, v31

    mul-double v47, v47, v0

    add-double v31, v8, v55

    aput-wide v31, p1, v21

    add-double v31, v22, v47

    aput-wide v31, p1, v25

    sub-double v8, v8, v55

    aput-wide v8, p1, v36

    sub-double v22, v22, v47

    aput-wide v22, p1, v49

    add-double v14, v14, v66

    sub-double v18, v18, v69

    add-double v45, v45, v86

    sub-double v42, v42, v89

    sub-double v8, v45, v42

    mul-double/2addr v8, v0

    add-double v42, v42, v45

    mul-double v42, v42, v0

    sub-double v21, v14, v42

    aput-wide v21, p1, v60

    add-double v21, v18, v8

    aput-wide v21, p1, v73

    add-double v14, v14, v42

    aput-wide v14, p1, v83

    sub-double v18, v18, v8

    aput-wide v18, p1, v93

    add-double v8, v33, v12

    add-double v14, v39, v74

    sub-double v17, v50, v2

    sub-double v21, v63, v6

    add-double v31, v8, v17

    aput-wide v31, p1, v20

    add-double v19, v14, v21

    aput-wide v19, p1, v16

    sub-double v8, v8, v17

    aput-wide v8, p1, v44

    sub-double v14, v14, v21

    aput-wide v14, p1, v38

    sub-double v33, v33, v12

    sub-double v39, v39, v74

    add-double v50, v50, v2

    add-double v63, v63, v6

    sub-double v2, v33, v63

    aput-wide v2, p1, v68

    add-double v2, v39, v50

    aput-wide v2, p1, v62

    add-double v33, v33, v63

    aput-wide v33, p1, v88

    sub-double v39, v39, v50

    aput-wide v39, p1, v11

    sub-double v2, v26, v77

    add-double v6, v29, v81

    add-double v8, v57, v4

    sub-double v10, v53, v101

    sub-double v12, v8, v10

    mul-double/2addr v12, v0

    add-double/2addr v10, v8

    mul-double/2addr v10, v0

    add-double v8, v2, v12

    aput-wide v8, p1, v28

    add-double v8, v6, v10

    aput-wide v8, p1, v24

    sub-double/2addr v2, v12

    aput-wide v2, p1, v52

    sub-double/2addr v6, v10

    aput-wide v6, p1, v37

    add-double v26, v26, v77

    sub-double v29, v29, v81

    sub-double v57, v57, v4

    add-double v53, v53, v101

    sub-double v2, v57, v53

    mul-double/2addr v2, v0

    add-double v53, v53, v57

    mul-double v0, v0, v53

    sub-double v4, v26, v0

    aput-wide v4, p1, v76

    add-double v4, v29, v2

    aput-wide v4, p1, v61

    add-double v26, v26, v0

    aput-wide v26, p1, v96

    sub-double v29, v29, v2

    aput-wide v29, p1, v84

    return-void
.end method

.method private cftf1st(I[DI[DI)V
    .locals 75

    shr-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v1, v1

    add-int v3, v2, v1

    add-int v4, p3, v1

    add-int v2, p3, v2

    add-int v3, p3, v3

    aget-wide v5, p2, p3

    aget-wide v7, p2, v2

    add-double/2addr v5, v7

    add-int/lit8 v7, p3, 0x1

    aget-wide v8, p2, v7

    add-int/lit8 v10, v2, 0x1

    aget-wide v11, p2, v10

    add-double/2addr v8, v11

    aget-wide v11, p2, p3

    aget-wide v13, p2, v2

    sub-double/2addr v11, v13

    aget-wide v13, p2, v7

    aget-wide v15, p2, v10

    sub-double/2addr v13, v15

    aget-wide v15, p2, v4

    aget-wide v17, p2, v3

    add-double v15, v15, v17

    add-int/lit8 v17, v4, 0x1

    aget-wide v18, p2, v17

    add-int/lit8 v20, v3, 0x1

    aget-wide v21, p2, v20

    add-double v18, v18, v21

    aget-wide v21, p2, v4

    aget-wide v23, p2, v3

    sub-double v21, v21, v23

    aget-wide v23, p2, v17

    aget-wide v25, p2, v20

    sub-double v23, v23, v25

    add-double v25, v5, v15

    aput-wide v25, p2, p3

    add-double v25, v8, v18

    aput-wide v25, p2, v7

    sub-double/2addr v5, v15

    aput-wide v5, p2, v4

    sub-double v8, v8, v18

    aput-wide v8, p2, v17

    sub-double v4, v11, v23

    aput-wide v4, p2, v2

    add-double v4, v13, v21

    aput-wide v4, p2, v10

    add-double v11, v11, v23

    aput-wide v11, p2, v3

    sub-double v13, v13, v21

    aput-wide v13, p2, v20

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    add-int/lit8 v4, p5, 0x2

    aget-wide v4, p4, v4

    add-int/lit8 v6, p5, 0x3

    aget-wide v6, p4, v6

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-wide/from16 v16, v2

    move-wide v14, v10

    move v2, v12

    move v3, v13

    move-wide v12, v14

    move-wide v10, v8

    :goto_0
    move/from16 p1, v1

    add-int/lit8 v1, v0, -0x2

    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v3, 0x4

    add-int v1, p5, v3

    aget-wide v18, p4, v1

    add-double v12, v12, v18

    mul-double/2addr v12, v4

    add-int/lit8 v18, v1, 0x1

    aget-wide v19, p4, v18

    add-double v8, v8, v19

    mul-double/2addr v8, v4

    add-int/lit8 v19, v1, 0x2

    aget-wide v20, p4, v19

    add-double v14, v14, v20

    mul-double/2addr v14, v6

    add-int/lit8 v20, v1, 0x3

    aget-wide v21, p4, v20

    add-double v10, v10, v21

    mul-double/2addr v10, v6

    aget-wide v21, p4, v1

    aget-wide v23, p4, v18

    aget-wide v18, p4, v19

    aget-wide v25, p4, v20

    add-int v1, v2, p1

    add-int v20, v1, p1

    add-int v27, v20, p1

    add-int v1, p3, v1

    add-int v20, p3, v20

    add-int v27, p3, v27

    add-int v28, p3, v2

    aget-wide v29, p2, v28

    aget-wide v31, p2, v20

    add-double v29, v29, v31

    add-int/lit8 v31, v28, 0x1

    aget-wide v32, p2, v31

    add-int/lit8 v34, v20, 0x1

    aget-wide v35, p2, v34

    add-double v32, v32, v35

    aget-wide v35, p2, v28

    aget-wide v37, p2, v20

    sub-double v35, v35, v37

    aget-wide v37, p2, v31

    aget-wide v39, p2, v34

    sub-double v37, v37, v39

    add-int/lit8 v39, v28, 0x2

    aget-wide v40, p2, v39

    add-int/lit8 v42, v20, 0x2

    aget-wide v43, p2, v42

    add-double v40, v40, v43

    add-int/lit8 v43, v28, 0x3

    aget-wide v44, p2, v43

    add-int/lit8 v46, v20, 0x3

    aget-wide v47, p2, v46

    add-double v44, v44, v47

    aget-wide v47, p2, v39

    aget-wide v49, p2, v42

    sub-double v47, v47, v49

    aget-wide v49, p2, v43

    aget-wide v51, p2, v46

    sub-double v49, v49, v51

    aget-wide v51, p2, v1

    aget-wide v53, p2, v27

    add-double v51, v51, v53

    add-int/lit8 v53, v1, 0x1

    aget-wide v54, p2, v53

    add-int/lit8 v56, v27, 0x1

    aget-wide v57, p2, v56

    add-double v54, v54, v57

    aget-wide v57, p2, v1

    aget-wide v59, p2, v27

    sub-double v57, v57, v59

    aget-wide v59, p2, v53

    aget-wide v61, p2, v56

    sub-double v59, v59, v61

    add-int/lit8 v61, v1, 0x2

    aget-wide v62, p2, v61

    add-int/lit8 v64, v27, 0x2

    aget-wide v65, p2, v64

    add-double v62, v62, v65

    add-int/lit8 v65, v1, 0x3

    aget-wide v66, p2, v65

    add-int/lit8 v68, v27, 0x3

    aget-wide v69, p2, v68

    add-double v66, v66, v69

    aget-wide v69, p2, v61

    aget-wide v71, p2, v64

    sub-double v69, v69, v71

    aget-wide v71, p2, v65

    aget-wide v73, p2, v68

    sub-double v71, v71, v73

    add-double v73, v29, v51

    aput-wide v73, p2, v28

    add-double v73, v32, v54

    aput-wide v73, p2, v31

    add-double v73, v40, v62

    aput-wide v73, p2, v39

    add-double v73, v44, v66

    aput-wide v73, p2, v43

    sub-double v29, v29, v51

    aput-wide v29, p2, v1

    sub-double v32, v32, v54

    aput-wide v32, p2, v53

    sub-double v40, v40, v62

    aput-wide v40, p2, v61

    sub-double v44, v44, v66

    aput-wide v44, p2, v65

    sub-double v28, v35, v59

    add-double v30, v37, v57

    mul-double v32, v12, v28

    mul-double v39, v8, v30

    sub-double v32, v32, v39

    aput-wide v32, p2, v20

    mul-double v30, v30, v12

    mul-double v28, v28, v8

    add-double v30, v30, v28

    aput-wide v30, p2, v34

    sub-double v28, v47, v71

    add-double v30, v49, v69

    mul-double v32, v21, v28

    mul-double v39, v23, v30

    sub-double v32, v32, v39

    aput-wide v32, p2, v42

    mul-double v30, v30, v21

    mul-double v28, v28, v23

    add-double v30, v30, v28

    aput-wide v30, p2, v46

    add-double v35, v35, v59

    sub-double v37, v37, v57

    mul-double v28, v14, v35

    mul-double v30, v10, v37

    add-double v28, v28, v30

    aput-wide v28, p2, v27

    mul-double v37, v37, v14

    mul-double v35, v35, v10

    sub-double v37, v37, v35

    aput-wide v37, p2, v56

    add-double v47, v47, v71

    sub-double v49, v49, v69

    mul-double v27, v18, v47

    mul-double v29, v25, v49

    add-double v27, v27, v29

    aput-wide v27, p2, v64

    mul-double v49, v49, v18

    mul-double v47, v47, v25

    sub-double v49, v49, v47

    aput-wide v49, p2, v68

    sub-int v1, p1, v2

    add-int v20, v1, p1

    add-int v27, v20, p1

    add-int v28, v27, p1

    add-int v1, p3, v1

    add-int v20, p3, v20

    add-int v27, p3, v27

    add-int v28, p3, v28

    aget-wide v29, p2, v1

    aget-wide v31, p2, v27

    add-double v29, v29, v31

    add-int/lit8 v31, v1, 0x1

    aget-wide v32, p2, v31

    add-int/lit8 v34, v27, 0x1

    aget-wide v35, p2, v34

    add-double v32, v32, v35

    aget-wide v35, p2, v1

    aget-wide v37, p2, v27

    sub-double v35, v35, v37

    aget-wide v37, p2, v31

    aget-wide v39, p2, v34

    sub-double v37, v37, v39

    add-int/lit8 v39, v1, -0x2

    aget-wide v40, p2, v39

    add-int/lit8 v42, v27, -0x2

    aget-wide v43, p2, v42

    add-double v40, v40, v43

    add-int/lit8 v43, v1, -0x1

    aget-wide v44, p2, v43

    add-int/lit8 v46, v27, -0x1

    aget-wide v47, p2, v46

    add-double v44, v44, v47

    aget-wide v47, p2, v39

    aget-wide v49, p2, v42

    sub-double v47, v47, v49

    aget-wide v49, p2, v43

    aget-wide v51, p2, v46

    sub-double v49, v49, v51

    aget-wide v51, p2, v20

    aget-wide v53, p2, v28

    add-double v51, v51, v53

    add-int/lit8 v53, v20, 0x1

    aget-wide v54, p2, v53

    add-int/lit8 v56, v28, 0x1

    aget-wide v57, p2, v56

    add-double v54, v54, v57

    aget-wide v57, p2, v20

    aget-wide v59, p2, v28

    sub-double v57, v57, v59

    aget-wide v59, p2, v53

    aget-wide v61, p2, v56

    sub-double v59, v59, v61

    add-int/lit8 v61, v20, -0x2

    aget-wide v62, p2, v61

    add-int/lit8 v64, v28, -0x2

    aget-wide v65, p2, v64

    add-double v62, v62, v65

    add-int/lit8 v65, v20, -0x1

    aget-wide v66, p2, v65

    add-int/lit8 v68, v28, -0x1

    aget-wide v69, p2, v68

    add-double v66, v66, v69

    aget-wide v69, p2, v61

    aget-wide v71, p2, v64

    sub-double v69, v69, v71

    aget-wide v71, p2, v65

    aget-wide v73, p2, v68

    sub-double v71, v71, v73

    add-double v73, v29, v51

    aput-wide v73, p2, v1

    add-double v73, v32, v54

    aput-wide v73, p2, v31

    add-double v73, v40, v62

    aput-wide v73, p2, v39

    add-double v73, v44, v66

    aput-wide v73, p2, v43

    sub-double v29, v29, v51

    aput-wide v29, p2, v20

    sub-double v32, v32, v54

    aput-wide v32, p2, v53

    sub-double v40, v40, v62

    aput-wide v40, p2, v61

    sub-double v44, v44, v66

    aput-wide v44, p2, v65

    sub-double v29, v35, v59

    add-double v31, v37, v57

    mul-double v39, v8, v29

    mul-double v43, v12, v31

    sub-double v39, v39, v43

    aput-wide v39, p2, v27

    mul-double v8, v8, v31

    mul-double v12, v12, v29

    add-double/2addr v8, v12

    aput-wide v8, p2, v34

    sub-double v8, v47, v71

    add-double v12, v49, v69

    mul-double v29, v23, v8

    mul-double v31, v21, v12

    sub-double v29, v29, v31

    aput-wide v29, p2, v42

    mul-double v12, v12, v23

    mul-double v8, v8, v21

    add-double/2addr v12, v8

    aput-wide v12, p2, v46

    add-double v35, v35, v59

    sub-double v37, v37, v57

    mul-double v8, v10, v35

    mul-double v12, v14, v37

    add-double/2addr v8, v12

    aput-wide v8, p2, v28

    mul-double v10, v10, v37

    mul-double v14, v14, v35

    sub-double/2addr v10, v14

    aput-wide v10, p2, v56

    add-double v47, v47, v71

    sub-double v49, v49, v69

    mul-double v8, v25, v47

    mul-double v10, v18, v49

    add-double/2addr v8, v10

    aput-wide v8, p2, v64

    mul-double v49, v49, v25

    mul-double v47, v47, v18

    sub-double v49, v49, v47

    aput-wide v49, p2, v68

    add-int/lit8 v2, v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v14, v18

    move-wide/from16 v12, v21

    move-wide/from16 v8, v23

    move-wide/from16 v10, v25

    goto/16 :goto_0

    :cond_0
    add-double v12, v12, v16

    mul-double/2addr v12, v4

    add-double v8, v8, v16

    mul-double/2addr v4, v8

    sub-double v14, v14, v16

    mul-double/2addr v14, v6

    sub-double v10, v10, v16

    mul-double/2addr v6, v10

    add-int v1, v0, p1

    add-int v2, v1, p1

    add-int v3, v2, p1

    add-int v0, p3, v0

    add-int v1, p3, v1

    add-int v2, p3, v2

    add-int v3, p3, v3

    add-int/lit8 v8, v0, -0x2

    aget-wide v9, p2, v8

    add-int/lit8 v11, v2, -0x2

    aget-wide v18, p2, v11

    add-double v9, v9, v18

    add-int/lit8 v18, v0, -0x1

    aget-wide v19, p2, v18

    add-int/lit8 v21, v2, -0x1

    aget-wide v22, p2, v21

    add-double v19, v19, v22

    aget-wide v22, p2, v8

    aget-wide v24, p2, v11

    sub-double v22, v22, v24

    aget-wide v24, p2, v18

    aget-wide v26, p2, v21

    sub-double v24, v24, v26

    add-int/lit8 v26, v1, -0x2

    aget-wide v27, p2, v26

    add-int/lit8 v29, v3, -0x2

    aget-wide v30, p2, v29

    add-double v27, v27, v30

    add-int/lit8 v30, v1, -0x1

    aget-wide v31, p2, v30

    add-int/lit8 v33, v3, -0x1

    aget-wide v34, p2, v33

    add-double v31, v31, v34

    aget-wide v34, p2, v26

    aget-wide v36, p2, v29

    sub-double v34, v34, v36

    aget-wide v36, p2, v30

    aget-wide v38, p2, v33

    sub-double v36, v36, v38

    add-double v38, v9, v27

    aput-wide v38, p2, v8

    add-double v38, v19, v31

    aput-wide v38, p2, v18

    sub-double v9, v9, v27

    aput-wide v9, p2, v26

    sub-double v19, v19, v31

    aput-wide v19, p2, v30

    sub-double v8, v22, v36

    add-double v18, v24, v34

    mul-double v26, v12, v8

    mul-double v30, v4, v18

    sub-double v26, v26, v30

    aput-wide v26, p2, v11

    mul-double v18, v18, v12

    mul-double/2addr v8, v4

    add-double v18, v18, v8

    aput-wide v18, p2, v21

    add-double v22, v22, v36

    sub-double v24, v24, v34

    mul-double v8, v14, v22

    mul-double v10, v6, v24

    add-double/2addr v8, v10

    aput-wide v8, p2, v29

    mul-double v24, v24, v14

    mul-double v22, v22, v6

    sub-double v24, v24, v22

    aput-wide v24, p2, v33

    aget-wide v8, p2, v0

    aget-wide v10, p2, v2

    add-double/2addr v8, v10

    add-int/lit8 v10, v0, 0x1

    aget-wide v18, p2, v10

    add-int/lit8 v11, v2, 0x1

    aget-wide v20, p2, v11

    add-double v18, v18, v20

    aget-wide v20, p2, v0

    aget-wide v22, p2, v2

    sub-double v20, v20, v22

    aget-wide v22, p2, v10

    aget-wide v24, p2, v11

    sub-double v22, v22, v24

    aget-wide v24, p2, v1

    aget-wide v26, p2, v3

    add-double v24, v24, v26

    add-int/lit8 v26, v1, 0x1

    aget-wide v27, p2, v26

    add-int/lit8 v29, v3, 0x1

    aget-wide v30, p2, v29

    add-double v27, v27, v30

    aget-wide v30, p2, v1

    aget-wide v32, p2, v3

    sub-double v30, v30, v32

    aget-wide v32, p2, v26

    aget-wide v34, p2, v29

    sub-double v32, v32, v34

    add-double v34, v8, v24

    aput-wide v34, p2, v0

    add-double v34, v18, v27

    aput-wide v34, p2, v10

    sub-double v8, v8, v24

    aput-wide v8, p2, v1

    sub-double v18, v18, v27

    aput-wide v18, p2, v26

    sub-double v8, v20, v32

    add-double v18, v22, v30

    sub-double v24, v8, v18

    mul-double v24, v24, v16

    aput-wide v24, p2, v2

    add-double v18, v18, v8

    mul-double v8, v16, v18

    aput-wide v8, p2, v11

    add-double v20, v20, v32

    sub-double v22, v22, v30

    move-wide/from16 v8, v16

    neg-double v8, v8

    add-double v10, v20, v22

    mul-double/2addr v10, v8

    aput-wide v10, p2, v3

    sub-double v22, v22, v20

    mul-double v8, v8, v22

    aput-wide v8, p2, v29

    add-int/lit8 v8, v0, 0x2

    aget-wide v9, p2, v8

    add-int/lit8 v11, v2, 0x2

    aget-wide v16, p2, v11

    add-double v9, v9, v16

    add-int/lit8 v0, v0, 0x3

    aget-wide v16, p2, v0

    add-int/lit8 v2, v2, 0x3

    aget-wide v18, p2, v2

    add-double v16, v16, v18

    aget-wide v18, p2, v8

    aget-wide v20, p2, v11

    sub-double v18, v18, v20

    aget-wide v20, p2, v0

    aget-wide v22, p2, v2

    sub-double v20, v20, v22

    add-int/lit8 v22, v1, 0x2

    aget-wide v23, p2, v22

    add-int/lit8 v25, v3, 0x2

    aget-wide v26, p2, v25

    add-double v23, v23, v26

    add-int/lit8 v1, v1, 0x3

    aget-wide v26, p2, v1

    add-int/lit8 v3, v3, 0x3

    aget-wide v28, p2, v3

    add-double v26, v26, v28

    aget-wide v28, p2, v22

    aget-wide v30, p2, v25

    sub-double v28, v28, v30

    aget-wide v30, p2, v1

    aget-wide v32, p2, v3

    sub-double v30, v30, v32

    add-double v32, v9, v23

    aput-wide v32, p2, v8

    add-double v32, v16, v26

    aput-wide v32, p2, v0

    sub-double v9, v9, v23

    aput-wide v9, p2, v22

    sub-double v16, v16, v26

    aput-wide v16, p2, v1

    sub-double v0, v18, v30

    add-double v8, v20, v28

    mul-double v16, v4, v0

    mul-double v22, v12, v8

    sub-double v16, v16, v22

    aput-wide v16, p2, v11

    mul-double/2addr v4, v8

    mul-double/2addr v12, v0

    add-double/2addr v4, v12

    aput-wide v4, p2, v2

    add-double v18, v18, v30

    sub-double v20, v20, v28

    mul-double v0, v6, v18

    mul-double v4, v14, v20

    add-double/2addr v0, v4

    aput-wide v0, p2, v25

    mul-double v6, v6, v20

    mul-double v14, v14, v18

    sub-double/2addr v6, v14

    aput-wide v6, p2, v3

    return-void
.end method

.method private cftfsub(I[DI[II[D)V
    .locals 8

    const/16 v0, 0x8

    if-le p1, v0, :cond_5

    const/16 v1, 0x20

    if-le p1, v1, :cond_3

    shr-int/lit8 v0, p1, 0x2

    sub-int v6, p5, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf1st(I[DI[DI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    if-le p1, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    if-le p1, v0, :cond_2

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    :goto_0
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2(I[I[DI)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    sub-int/2addr p5, v0

    invoke-direct {p0, p2, p3, p6, p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216([DI)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p6, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208([DI)V

    goto :goto_1

    :cond_5
    if-ne p1, v0, :cond_6

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf040([DI)V

    goto :goto_1

    :cond_6
    const/4 p4, 0x4

    if-ne p1, p4, :cond_7

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    :cond_7
    :goto_1
    return-void
.end method

.method private cftfx41(I[DII[D)V
    .locals 1

    const/16 v0, 0x80

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p4, -0x8

    invoke-direct {p0, p2, p3, p5, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 p4, p4, -0x20

    invoke-direct {p0, p2, v0, p5, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit8 p4, p3, 0x40

    invoke-direct {p0, p2, p4, p5, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 p3, p3, 0x60

    invoke-direct {p0, p2, p3, p5, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, -0x8

    invoke-direct {p0, p2, p3, p5, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 p1, p3, 0x10

    invoke-direct {p0, p2, p1, p5, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 p1, p3, 0x20

    invoke-direct {p0, p2, p1, p5, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 p3, p3, 0x30

    invoke-direct {p0, p2, p3, p5, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    :goto_0
    return-void
.end method

.method private cftleaf(II[DII[D)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    const/16 v0, 0x200

    move/from16 v1, p1

    if-ne v1, v0, :cond_1

    const/16 v1, 0x80

    add-int/lit8 v10, p5, -0x40

    move-object v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit8 v11, p5, -0x8

    invoke-direct {p0, v7, v8, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, v8, 0x20

    add-int/lit8 v12, p5, -0x20

    invoke-direct {p0, v7, v0, v9, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit8 v0, v8, 0x40

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, v8, 0x60

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v13, v8, 0x80

    add-int/lit8 v14, p5, -0x80

    move-object v0, p0

    move v3, v13

    move v5, v14

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    invoke-direct {p0, v7, v13, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, v8, 0xa0

    invoke-direct {p0, v7, v0, v9, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, v8, 0xc0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, v8, 0xe0

    invoke-direct {p0, v7, v0, v9, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v13, v8, 0x100

    move-object v0, p0

    move v3, v13

    move v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    invoke-direct {p0, v7, v13, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, v8, 0x120

    invoke-direct {p0, v7, v0, v9, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, v8, 0x140

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, v8, 0x160

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v3, v8, 0x180

    move-object v0, p0

    if-eqz p2, :cond_0

    move v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, v8, 0x1e0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    goto :goto_0

    :cond_0
    move v5, v14

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, v8, 0x1e0

    invoke-direct {p0, v7, v0, v9, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    :goto_0
    add-int/lit16 v0, v8, 0x180

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, v8, 0x1a0

    invoke-direct {p0, v7, v0, v9, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, v8, 0x1c0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0x40

    add-int/lit8 v10, p5, -0x20

    move-object v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit8 v11, p5, -0x8

    invoke-direct {p0, v7, v8, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, v8, 0x10

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, v8, 0x20

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, v8, 0x30

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v12, v8, 0x40

    add-int/lit8 v13, p5, -0x40

    move-object v0, p0

    move v3, v12

    move v5, v13

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    invoke-direct {p0, v7, v12, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, v8, 0x50

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, v8, 0x60

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, v8, 0x70

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v12, v8, 0x80

    move-object v0, p0

    move v3, v12

    move v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    invoke-direct {p0, v7, v12, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, v8, 0x90

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v0, v8, 0xa0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, v8, 0xb0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v3, v8, 0xc0

    move-object v0, p0

    if-eqz p2, :cond_2

    move v5, v10

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, v8, 0xf0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    goto :goto_1

    :cond_2
    move v5, v13

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, v8, 0xf0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    :goto_1
    add-int/lit16 v0, v8, 0xc0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, v8, 0xd0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v0, v8, 0xe0

    invoke-direct {p0, v7, v0, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    :goto_2
    return-void
.end method

.method private cftmdl1(I[DI[DI)V
    .locals 40

    shr-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v1, v1

    add-int v3, v2, v1

    add-int v4, p3, v1

    add-int v2, p3, v2

    add-int v3, p3, v3

    aget-wide v5, p2, p3

    aget-wide v7, p2, v2

    add-double/2addr v5, v7

    add-int/lit8 v7, p3, 0x1

    aget-wide v8, p2, v7

    add-int/lit8 v10, v2, 0x1

    aget-wide v11, p2, v10

    add-double/2addr v8, v11

    aget-wide v11, p2, p3

    aget-wide v13, p2, v2

    sub-double/2addr v11, v13

    aget-wide v13, p2, v7

    aget-wide v15, p2, v10

    sub-double/2addr v13, v15

    aget-wide v15, p2, v4

    aget-wide v17, p2, v3

    add-double v15, v15, v17

    add-int/lit8 v17, v4, 0x1

    aget-wide v18, p2, v17

    add-int/lit8 v20, v3, 0x1

    aget-wide v21, p2, v20

    add-double v18, v18, v21

    aget-wide v21, p2, v4

    aget-wide v23, p2, v3

    sub-double v21, v21, v23

    aget-wide v23, p2, v17

    aget-wide v25, p2, v20

    sub-double v23, v23, v25

    add-double v25, v5, v15

    aput-wide v25, p2, p3

    add-double v25, v8, v18

    aput-wide v25, p2, v7

    sub-double/2addr v5, v15

    aput-wide v5, p2, v4

    sub-double v8, v8, v18

    aput-wide v8, p2, v17

    sub-double v4, v11, v23

    aput-wide v4, p2, v2

    add-double v4, v13, v21

    aput-wide v4, p2, v10

    add-double v11, v11, v23

    aput-wide v11, p2, v3

    sub-double v13, v13, v21

    aput-wide v13, p2, v20

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v5, v5, 0x4

    add-int v6, p5, v5

    aget-wide v7, p4, v6

    add-int/lit8 v9, v6, 0x1

    aget-wide v9, p4, v9

    add-int/lit8 v11, v6, 0x2

    aget-wide v11, p4, v11

    add-int/lit8 v6, v6, 0x3

    aget-wide v13, p4, v6

    add-int v6, v4, v1

    add-int v15, v6, v1

    add-int v16, v15, v1

    add-int v6, p3, v6

    add-int v15, p3, v15

    add-int v16, p3, v16

    add-int v17, p3, v4

    aget-wide v18, p2, v17

    aget-wide v20, p2, v15

    add-double v18, v18, v20

    add-int/lit8 v20, v17, 0x1

    aget-wide v21, p2, v20

    add-int/lit8 v23, v15, 0x1

    aget-wide v24, p2, v23

    add-double v21, v21, v24

    aget-wide v24, p2, v17

    aget-wide v26, p2, v15

    sub-double v24, v24, v26

    aget-wide v26, p2, v20

    aget-wide v28, p2, v23

    sub-double v26, v26, v28

    aget-wide v28, p2, v6

    aget-wide v30, p2, v16

    add-double v28, v28, v30

    add-int/lit8 v30, v6, 0x1

    aget-wide v31, p2, v30

    add-int/lit8 v33, v16, 0x1

    aget-wide v34, p2, v33

    add-double v31, v31, v34

    aget-wide v34, p2, v6

    aget-wide v36, p2, v16

    sub-double v34, v34, v36

    aget-wide v36, p2, v30

    aget-wide v38, p2, v33

    sub-double v36, v36, v38

    add-double v38, v18, v28

    aput-wide v38, p2, v17

    add-double v38, v21, v31

    aput-wide v38, p2, v20

    sub-double v18, v18, v28

    aput-wide v18, p2, v6

    sub-double v21, v21, v31

    aput-wide v21, p2, v30

    sub-double v17, v24, v36

    add-double v19, v26, v34

    mul-double v21, v7, v17

    mul-double v28, v9, v19

    sub-double v21, v21, v28

    aput-wide v21, p2, v15

    mul-double v19, v19, v7

    mul-double v17, v17, v9

    add-double v19, v19, v17

    aput-wide v19, p2, v23

    add-double v24, v24, v36

    sub-double v26, v26, v34

    mul-double v17, v11, v24

    mul-double v19, v13, v26

    add-double v17, v17, v19

    aput-wide v17, p2, v16

    mul-double v26, v26, v11

    mul-double v24, v24, v13

    sub-double v26, v26, v24

    aput-wide v26, p2, v33

    sub-int v6, v1, v4

    add-int v15, v6, v1

    add-int v16, v15, v1

    add-int v17, v16, v1

    add-int v6, p3, v6

    add-int v15, p3, v15

    add-int v16, p3, v16

    add-int v17, p3, v17

    aget-wide v18, p2, v6

    aget-wide v20, p2, v16

    add-double v18, v18, v20

    add-int/lit8 v20, v6, 0x1

    aget-wide v21, p2, v20

    add-int/lit8 v23, v16, 0x1

    aget-wide v24, p2, v23

    add-double v21, v21, v24

    aget-wide v24, p2, v6

    aget-wide v26, p2, v16

    sub-double v24, v24, v26

    aget-wide v26, p2, v20

    aget-wide v28, p2, v23

    sub-double v26, v26, v28

    aget-wide v28, p2, v15

    aget-wide v30, p2, v17

    add-double v28, v28, v30

    add-int/lit8 v30, v15, 0x1

    aget-wide v31, p2, v30

    add-int/lit8 v33, v17, 0x1

    aget-wide v34, p2, v33

    add-double v31, v31, v34

    aget-wide v34, p2, v15

    aget-wide v36, p2, v17

    sub-double v34, v34, v36

    aget-wide v36, p2, v30

    aget-wide v38, p2, v33

    sub-double v36, v36, v38

    add-double v38, v18, v28

    aput-wide v38, p2, v6

    add-double v38, v21, v31

    aput-wide v38, p2, v20

    sub-double v18, v18, v28

    aput-wide v18, p2, v15

    sub-double v21, v21, v31

    aput-wide v21, p2, v30

    sub-double v18, v24, v36

    add-double v20, v26, v34

    mul-double v28, v9, v18

    mul-double v30, v7, v20

    sub-double v28, v28, v30

    aput-wide v28, p2, v16

    mul-double v9, v9, v20

    mul-double v7, v7, v18

    add-double/2addr v9, v7

    aput-wide v9, p2, v23

    add-double v24, v24, v36

    sub-double v26, v26, v34

    mul-double v6, v13, v24

    mul-double v8, v11, v26

    add-double/2addr v6, v8

    aput-wide v6, p2, v17

    mul-double v13, v13, v26

    mul-double v11, v11, v24

    sub-double/2addr v13, v11

    aput-wide v13, p2, v33

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_0

    :cond_0
    add-int v4, v0, v1

    add-int v5, v4, v1

    add-int/2addr v1, v5

    add-int v0, p3, v0

    add-int v4, p3, v4

    add-int v5, p3, v5

    add-int v1, p3, v1

    aget-wide v6, p2, v0

    aget-wide v8, p2, v5

    add-double/2addr v6, v8

    add-int/lit8 v8, v0, 0x1

    aget-wide v9, p2, v8

    add-int/lit8 v11, v5, 0x1

    aget-wide v12, p2, v11

    add-double/2addr v9, v12

    aget-wide v12, p2, v0

    aget-wide v14, p2, v5

    sub-double/2addr v12, v14

    aget-wide v14, p2, v8

    aget-wide v16, p2, v11

    sub-double v14, v14, v16

    aget-wide v16, p2, v4

    aget-wide v18, p2, v1

    add-double v16, v16, v18

    add-int/lit8 v18, v4, 0x1

    aget-wide v19, p2, v18

    add-int/lit8 v21, v1, 0x1

    aget-wide v22, p2, v21

    add-double v19, v19, v22

    aget-wide v22, p2, v4

    aget-wide v24, p2, v1

    sub-double v22, v22, v24

    aget-wide v24, p2, v18

    aget-wide v26, p2, v21

    sub-double v24, v24, v26

    add-double v26, v6, v16

    aput-wide v26, p2, v0

    add-double v26, v9, v19

    aput-wide v26, p2, v8

    sub-double v6, v6, v16

    aput-wide v6, p2, v4

    sub-double v9, v9, v19

    aput-wide v9, p2, v18

    sub-double v6, v12, v24

    add-double v8, v14, v22

    sub-double v16, v6, v8

    mul-double v16, v16, v2

    aput-wide v16, p2, v5

    add-double/2addr v8, v6

    mul-double/2addr v8, v2

    aput-wide v8, p2, v11

    add-double v12, v12, v24

    sub-double v14, v14, v22

    neg-double v2, v2

    add-double v4, v12, v14

    mul-double/2addr v4, v2

    aput-wide v4, p2, v1

    sub-double/2addr v14, v12

    mul-double/2addr v2, v14

    aput-wide v2, p2, v21

    return-void
.end method

.method private cftmdl2(I[DI[DI)V
    .locals 49

    shr-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    add-int v4, v1, v1

    add-int v5, v4, v1

    add-int v6, p3, v1

    add-int v4, p3, v4

    add-int v5, p3, v5

    aget-wide v7, p2, p3

    add-int/lit8 v9, v4, 0x1

    aget-wide v10, p2, v9

    sub-double/2addr v7, v10

    add-int/lit8 v10, p3, 0x1

    aget-wide v11, p2, v10

    aget-wide v13, p2, v4

    add-double/2addr v11, v13

    aget-wide v13, p2, p3

    aget-wide v15, p2, v9

    add-double/2addr v13, v15

    aget-wide v15, p2, v10

    aget-wide v17, p2, v4

    sub-double v15, v15, v17

    aget-wide v17, p2, v6

    add-int/lit8 v19, v5, 0x1

    aget-wide v20, p2, v19

    sub-double v17, v17, v20

    add-int/lit8 v20, v6, 0x1

    aget-wide v21, p2, v20

    aget-wide v23, p2, v5

    add-double v21, v21, v23

    aget-wide v23, p2, v6

    aget-wide v25, p2, v19

    add-double v23, v23, v25

    aget-wide v25, p2, v20

    aget-wide v27, p2, v5

    sub-double v25, v25, v27

    sub-double v27, v17, v21

    mul-double v27, v27, v2

    add-double v21, v21, v17

    mul-double v21, v21, v2

    add-double v17, v7, v27

    aput-wide v17, p2, p3

    add-double v17, v11, v21

    aput-wide v17, p2, v10

    sub-double v7, v7, v27

    aput-wide v7, p2, v6

    sub-double v11, v11, v21

    aput-wide v11, p2, v20

    sub-double v6, v23, v25

    mul-double/2addr v6, v2

    add-double v25, v25, v23

    mul-double v2, v2, v25

    sub-double v10, v13, v2

    aput-wide v10, p2, v4

    add-double v10, v15, v6

    aput-wide v10, p2, v9

    add-double/2addr v13, v2

    aput-wide v13, p2, v5

    sub-double/2addr v15, v6

    aput-wide v15, p2, v19

    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v4, 0x4

    add-int v5, p5, v4

    aget-wide v6, p4, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v8, p4, v8

    add-int/lit8 v10, v5, 0x2

    aget-wide v10, p4, v10

    add-int/lit8 v5, v5, 0x3

    aget-wide v12, p4, v5

    add-int/lit8 v2, v2, -0x4

    add-int v5, p5, v2

    aget-wide v14, p4, v5

    add-int/lit8 v16, v5, 0x1

    aget-wide v16, p4, v16

    add-int/lit8 v18, v5, 0x2

    aget-wide v18, p4, v18

    add-int/lit8 v5, v5, 0x3

    aget-wide v20, p4, v5

    add-int v5, v3, v1

    add-int v22, v5, v1

    add-int v23, v22, v1

    add-int v5, p3, v5

    add-int v22, p3, v22

    add-int v23, p3, v23

    add-int v24, p3, v3

    aget-wide v25, p2, v24

    add-int/lit8 v27, v22, 0x1

    aget-wide v28, p2, v27

    sub-double v25, v25, v28

    add-int/lit8 v28, v24, 0x1

    aget-wide v29, p2, v28

    aget-wide v31, p2, v22

    add-double v29, v29, v31

    aget-wide v31, p2, v24

    aget-wide v33, p2, v27

    add-double v31, v31, v33

    aget-wide v33, p2, v28

    aget-wide v35, p2, v22

    sub-double v33, v33, v35

    aget-wide v35, p2, v5

    add-int/lit8 v37, v23, 0x1

    aget-wide v38, p2, v37

    sub-double v35, v35, v38

    add-int/lit8 v38, v5, 0x1

    aget-wide v39, p2, v38

    aget-wide v41, p2, v23

    add-double v39, v39, v41

    aget-wide v41, p2, v5

    aget-wide v43, p2, v37

    add-double v41, v41, v43

    aget-wide v43, p2, v38

    aget-wide v45, p2, v23

    sub-double v43, v43, v45

    mul-double v45, v6, v25

    mul-double v47, v8, v29

    sub-double v45, v45, v47

    mul-double v29, v29, v6

    mul-double v25, v25, v8

    add-double v29, v29, v25

    mul-double v25, v16, v35

    mul-double v47, v14, v39

    sub-double v25, v25, v47

    mul-double v39, v39, v16

    mul-double v35, v35, v14

    add-double v39, v39, v35

    add-double v35, v45, v25

    aput-wide v35, p2, v24

    add-double v35, v29, v39

    aput-wide v35, p2, v28

    sub-double v45, v45, v25

    aput-wide v45, p2, v5

    sub-double v29, v29, v39

    aput-wide v29, p2, v38

    mul-double v24, v10, v31

    mul-double v28, v12, v33

    add-double v24, v24, v28

    mul-double v33, v33, v10

    mul-double v31, v31, v12

    sub-double v33, v33, v31

    mul-double v28, v20, v41

    mul-double v30, v18, v43

    add-double v28, v28, v30

    mul-double v43, v43, v20

    mul-double v41, v41, v18

    sub-double v43, v43, v41

    add-double v30, v24, v28

    aput-wide v30, p2, v22

    add-double v30, v33, v43

    aput-wide v30, p2, v27

    sub-double v24, v24, v28

    aput-wide v24, p2, v23

    sub-double v33, v33, v43

    aput-wide v33, p2, v37

    sub-int v5, v1, v3

    add-int v22, v5, v1

    add-int v23, v22, v1

    add-int v24, v23, v1

    add-int v5, p3, v5

    add-int v22, p3, v22

    add-int v23, p3, v23

    add-int v24, p3, v24

    aget-wide v25, p2, v5

    add-int/lit8 v27, v23, 0x1

    aget-wide v28, p2, v27

    sub-double v25, v25, v28

    add-int/lit8 v28, v5, 0x1

    aget-wide v29, p2, v28

    aget-wide v31, p2, v23

    add-double v29, v29, v31

    aget-wide v31, p2, v5

    aget-wide v33, p2, v27

    add-double v31, v31, v33

    aget-wide v33, p2, v28

    aget-wide v35, p2, v23

    sub-double v33, v33, v35

    aget-wide v35, p2, v22

    add-int/lit8 v37, v24, 0x1

    aget-wide v38, p2, v37

    sub-double v35, v35, v38

    add-int/lit8 v38, v22, 0x1

    aget-wide v39, p2, v38

    aget-wide v41, p2, v24

    add-double v39, v39, v41

    aget-wide v41, p2, v22

    aget-wide v43, p2, v37

    add-double v41, v41, v43

    aget-wide v43, p2, v38

    aget-wide v45, p2, v24

    sub-double v43, v43, v45

    mul-double v45, v14, v25

    mul-double v47, v16, v29

    sub-double v45, v45, v47

    mul-double v14, v14, v29

    mul-double v16, v16, v25

    add-double v14, v14, v16

    mul-double v16, v8, v35

    mul-double v25, v6, v39

    sub-double v16, v16, v25

    mul-double v8, v8, v39

    mul-double v6, v6, v35

    add-double/2addr v8, v6

    add-double v6, v45, v16

    aput-wide v6, p2, v5

    add-double v5, v14, v8

    aput-wide v5, p2, v28

    sub-double v45, v45, v16

    aput-wide v45, p2, v22

    sub-double/2addr v14, v8

    aput-wide v14, p2, v38

    mul-double v5, v18, v31

    mul-double v7, v20, v33

    add-double/2addr v5, v7

    mul-double v18, v18, v33

    mul-double v20, v20, v31

    sub-double v18, v18, v20

    mul-double v7, v12, v41

    mul-double v14, v10, v43

    add-double/2addr v7, v14

    mul-double v12, v12, v43

    mul-double v10, v10, v41

    sub-double/2addr v12, v10

    add-double v9, v5, v7

    aput-wide v9, p2, v23

    add-double v9, v18, v12

    aput-wide v9, p2, v27

    sub-double/2addr v5, v7

    aput-wide v5, p2, v24

    sub-double v18, v18, v12

    aput-wide v18, p2, v37

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    :cond_0
    add-int v2, p5, v1

    aget-wide v3, p4, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, p4, v2

    add-int v2, v0, v1

    add-int v7, v2, v1

    add-int/2addr v1, v7

    add-int v0, p3, v0

    add-int v2, p3, v2

    add-int v7, p3, v7

    add-int v1, p3, v1

    aget-wide v8, p2, v0

    add-int/lit8 v10, v7, 0x1

    aget-wide v11, p2, v10

    sub-double/2addr v8, v11

    add-int/lit8 v11, v0, 0x1

    aget-wide v12, p2, v11

    aget-wide v14, p2, v7

    add-double/2addr v12, v14

    aget-wide v14, p2, v0

    aget-wide v16, p2, v10

    add-double v14, v14, v16

    aget-wide v16, p2, v11

    aget-wide v18, p2, v7

    sub-double v16, v16, v18

    aget-wide v18, p2, v2

    add-int/lit8 v20, v1, 0x1

    aget-wide v21, p2, v20

    sub-double v18, v18, v21

    add-int/lit8 v21, v2, 0x1

    aget-wide v22, p2, v21

    aget-wide v24, p2, v1

    add-double v22, v22, v24

    aget-wide v24, p2, v2

    aget-wide v26, p2, v20

    add-double v24, v24, v26

    aget-wide v26, p2, v21

    aget-wide v28, p2, v1

    sub-double v26, v26, v28

    mul-double v28, v3, v8

    mul-double v30, v5, v12

    sub-double v28, v28, v30

    mul-double/2addr v12, v3

    mul-double/2addr v8, v5

    add-double/2addr v12, v8

    mul-double v8, v5, v18

    mul-double v30, v3, v22

    sub-double v8, v8, v30

    mul-double v22, v22, v5

    mul-double v18, v18, v3

    add-double v22, v22, v18

    add-double v18, v28, v8

    aput-wide v18, p2, v0

    add-double v18, v12, v22

    aput-wide v18, p2, v11

    sub-double v28, v28, v8

    aput-wide v28, p2, v2

    sub-double v12, v12, v22

    aput-wide v12, p2, v21

    mul-double v8, v5, v14

    mul-double v11, v3, v16

    sub-double/2addr v8, v11

    mul-double v16, v16, v5

    mul-double/2addr v14, v3

    add-double v16, v16, v14

    mul-double v11, v3, v24

    mul-double v13, v5, v26

    sub-double/2addr v11, v13

    mul-double v3, v3, v26

    mul-double v5, v5, v24

    add-double/2addr v3, v5

    sub-double v5, v8, v11

    aput-wide v5, p2, v7

    sub-double v5, v16, v3

    aput-wide v5, p2, v10

    add-double/2addr v8, v11

    aput-wide v8, p2, v1

    add-double v16, v16, v3

    aput-wide v16, p2, v20

    return-void
.end method

.method private cftrec4(I[DII[D)V
    .locals 12

    add-int v0, p3, p1

    move v8, p1

    :goto_0
    const/16 v1, 0x200

    if-le v8, v1, :cond_0

    shr-int/lit8 v8, v8, 0x2

    sub-int v5, v0, v8

    shr-int/lit8 v1, v8, 0x1

    sub-int v7, p4, v1

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    sub-int v5, v0, v8

    move-object v1, p0

    move v2, v8

    move-object v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    const/4 v0, 0x0

    sub-int v9, p3, v8

    sub-int v1, p1, v8

    move v10, v1

    :goto_1
    if-lez v10, :cond_1

    add-int/lit8 v11, v0, 0x1

    move-object v0, p0

    move v1, v8

    move v2, v10

    move v3, v11

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v3

    add-int v5, v9, v10

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    sub-int/2addr v10, v8

    move v0, v11

    goto :goto_1

    :cond_1
    return-void
.end method

.method private cftrec4_th(I[DII[D)V
    .locals 17

    move/from16 v8, p1

    shr-int/lit8 v0, v8, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v1

    const/4 v2, 0x0

    if-le v8, v1, :cond_0

    const/4 v1, 0x4

    shr-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    move v9, v0

    move v10, v1

    move v11, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    move v9, v0

    move v10, v1

    move v11, v2

    :goto_0
    new-array v12, v10, [Ljava/util/concurrent/Future;

    move v13, v2

    move v14, v13

    :goto_1
    if-ge v13, v10, :cond_2

    mul-int v0, v13, v9

    add-int v2, p3, v0

    add-int/lit8 v15, v14, 0x1

    if-eq v13, v11, :cond_1

    new-instance v16, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v9

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v14

    goto :goto_2

    :cond_1
    new-instance v16, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v9

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v14

    :goto_2
    move v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private cfttree(III[DII[D)I
    .locals 13

    sub-int v0, p5, p1

    and-int/lit8 v1, p3, 0x3

    if-eqz v1, :cond_1

    and-int/lit8 v6, p3, 0x1

    add-int v3, v0, p2

    if-eqz v6, :cond_0

    shr-int/lit8 v0, p1, 0x1

    sub-int v5, p6, v0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    goto :goto_3

    :cond_0
    sub-int v5, p6, p1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    goto :goto_3

    :cond_1
    move v0, p1

    move/from16 v1, p3

    :goto_0
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_2

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v6, v1, 0x1

    add-int v1, p5, p2

    const/16 v2, 0x80

    if-eqz v6, :cond_3

    :goto_1
    if-le v0, v2, :cond_4

    sub-int v10, v1, v0

    shr-int/lit8 v3, v0, 0x1

    sub-int v12, p6, v3

    move-object v7, p0

    move v8, v0

    move-object/from16 v9, p4

    move-object/from16 v11, p7

    invoke-direct/range {v7 .. v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    shr-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    if-le v0, v2, :cond_4

    sub-int v10, v1, v0

    sub-int v12, p6, v0

    move-object v7, p0

    move v8, v0

    move-object/from16 v9, p4

    move-object/from16 v11, p7

    invoke-direct/range {v7 .. v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    shr-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    :goto_3
    return v6
.end method

.method private cftx020([DI)V
    .locals 11

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v3, p1, v2

    sub-double/2addr v0, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v4, p1, v3

    neg-double v4, v4

    add-int/lit8 v6, p2, 0x3

    aget-wide v7, p1, v6

    add-double/2addr v4, v7

    aget-wide v7, p1, p2

    aget-wide v9, p1, v2

    add-double/2addr v7, v9

    aput-wide v7, p1, p2

    aget-wide v7, p1, v3

    aget-wide v9, p1, v6

    add-double/2addr v7, v9

    aput-wide v7, p1, v3

    aput-wide v0, p1, v2

    aput-wide v4, p1, v6

    return-void
.end method

.method private cftxb020([DI)V
    .locals 11

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v3, p1, v2

    sub-double/2addr v0, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v4, p1, v3

    add-int/lit8 v6, p2, 0x3

    aget-wide v7, p1, v6

    sub-double/2addr v4, v7

    aget-wide v7, p1, p2

    aget-wide v9, p1, v2

    add-double/2addr v7, v9

    aput-wide v7, p1, p2

    aget-wide v7, p1, v3

    aget-wide v9, p1, v6

    add-double/2addr v7, v9

    aput-wide v7, p1, v3

    aput-wide v0, p1, v2

    aput-wide v4, p1, v6

    return-void
.end method

.method private cftxc020([DI)V
    .locals 11

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v3, p1, v2

    sub-double/2addr v0, v3

    add-int/lit8 v3, p2, 0x1

    aget-wide v4, p1, v3

    add-int/lit8 v6, p2, 0x3

    aget-wide v7, p1, v6

    add-double/2addr v4, v7

    aget-wide v7, p1, p2

    aget-wide v9, p1, v2

    add-double/2addr v7, v9

    aput-wide v7, p1, p2

    aget-wide v7, p1, v3

    aget-wide v9, p1, v6

    sub-double/2addr v7, v9

    aput-wide v7, p1, v3

    aput-wide v0, p1, v2

    aput-wide v4, p1, v6

    return-void
.end method

.method private static getReminder(I[I)I
    .locals 3

    if-lez p0, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    aget v1, p1, v0

    :goto_1
    rem-int v2, p0, v1

    if-nez v2, :cond_0

    div-int/2addr p0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n must be positive integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makect(I[DI)V
    .locals 11

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    if-le p1, v1, :cond_0

    shr-int/lit8 v0, p1, 0x1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v4, v0

    div-double/2addr v2, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, p2, p3

    add-int v4, p3, v0

    aget-wide v5, p2, p3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    aput-wide v5, p2, v4

    :goto_0
    if-ge v1, v0, :cond_0

    int-to-double v4, v1

    mul-double/2addr v4, v2

    add-int v6, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    aput-wide v9, p2, v6

    add-int v6, p3, p1

    sub-int/2addr v6, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v7

    aput-wide v4, p2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeipt(I)V
    .locals 8

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0x10

    const/4 v3, 0x3

    aput v1, v0, v3

    move v0, v2

    :goto_0
    const/16 v1, 0x20

    if-le p1, v1, :cond_1

    shl-int/lit8 v1, v0, 0x1

    shl-int/lit8 v3, v1, 0x3

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v6, v5, v4

    shl-int/2addr v6, v2

    add-int v7, v0, v4

    aput v6, v5, v7

    add-int v7, v1, v4

    add-int/2addr v6, v3

    aput v6, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    shr-int/lit8 p1, p1, 0x2

    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makewt(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v4, 0x1

    aput v4, v2, v4

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    shr-int/lit8 v5, v1, 0x1

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v8, v5

    div-double/2addr v6, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v6

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    aput-wide v13, v12, v3

    aput-wide v8, v12, v4

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x3

    const/4 v3, 0x4

    if-ne v5, v3, :cond_0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aput-wide v6, v12, v2

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    aput-wide v6, v1, v4

    goto :goto_1

    :cond_0
    if-le v5, v3, :cond_1

    invoke-direct/range {p0 .. p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makeipt(I)V

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    div-double v10, v15, v10

    aput-wide v10, v1, v2

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    div-double v10, v15, v10

    aput-wide v10, v1, v4

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_1

    int-to-double v10, v1

    mul-double/2addr v10, v6

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v10

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    aput-wide v20, v12, v1

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v20, v1, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    aput-wide v10, v12, v20

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v11, v1, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    aput-wide v20, v10, v11

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v11, v1, 0x3

    move v12, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    aput-wide v4, v10, v11

    add-int/lit8 v1, v1, 0x4

    move v5, v12

    const/4 v4, 0x3

    goto :goto_0

    :cond_1
    :goto_1
    move v12, v5

    move v5, v12

    const/16 v17, 0x0

    :goto_2
    if-le v5, v2, :cond_4

    add-int v1, v17, v5

    shr-int/lit8 v5, v5, 0x1

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aput-wide v13, v4, v1

    add-int/lit8 v6, v1, 0x1

    aput-wide v8, v4, v6

    if-ne v5, v3, :cond_2

    add-int/lit8 v6, v17, 0x4

    aget-wide v6, v4, v6

    add-int/lit8 v17, v17, 0x5

    aget-wide v10, v4, v17

    add-int/lit8 v12, v1, 0x2

    aput-wide v6, v4, v12

    add-int/lit8 v6, v1, 0x3

    aput-wide v10, v4, v6

    goto :goto_4

    :cond_2
    if-le v5, v3, :cond_3

    add-int/lit8 v6, v17, 0x4

    aget-wide v6, v4, v6

    add-int/lit8 v10, v17, 0x6

    aget-wide v10, v4, v10

    add-int/lit8 v12, v1, 0x2

    div-double v6, v15, v6

    aput-wide v6, v4, v12

    add-int/lit8 v6, v1, 0x3

    div-double v10, v15, v10

    aput-wide v10, v4, v6

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_3

    mul-int/lit8 v6, v4, 0x2

    add-int v6, v17, v6

    add-int v7, v1, v4

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aget-wide v11, v10, v6

    add-int/lit8 v18, v6, 0x1

    aget-wide v18, v10, v18

    add-int/lit8 v21, v6, 0x2

    aget-wide v21, v10, v21

    const/16 v20, 0x3

    add-int/lit8 v6, v6, 0x3

    aget-wide v23, v10, v6

    aput-wide v11, v10, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v18, v10, v6

    add-int/lit8 v6, v7, 0x2

    aput-wide v21, v10, v6

    add-int/lit8 v7, v7, 0x3

    aput-wide v23, v10, v7

    add-int/lit8 v4, v4, 0x4

    goto :goto_3

    :cond_3
    :goto_4
    const/16 v20, 0x3

    move/from16 v17, v1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private rftbsub(I[DII[DI)V
    .locals 20

    shr-int/lit8 v0, p1, 0x1

    mul-int/lit8 v1, p4, 0x2

    div-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v4, p1, v2

    add-int/2addr v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p6, p4

    sub-int/2addr v7, v3

    aget-wide v7, p5, v7

    sub-double/2addr v5, v7

    add-int v7, p6, v3

    aget-wide v7, p5, v7

    add-int v9, p3, v2

    add-int v4, p3, v4

    aget-wide v10, p2, v9

    aget-wide v12, p2, v4

    sub-double/2addr v10, v12

    add-int/lit8 v12, v9, 0x1

    aget-wide v13, p2, v12

    add-int/lit8 v15, v4, 0x1

    aget-wide v16, p2, v15

    add-double v13, v13, v16

    mul-double v16, v5, v10

    mul-double v18, v7, v13

    sub-double v16, v16, v18

    mul-double/2addr v5, v13

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    aget-wide v7, p2, v9

    sub-double v7, v7, v16

    aput-wide v7, p2, v9

    aget-wide v7, p2, v12

    sub-double/2addr v7, v5

    aput-wide v7, p2, v12

    aget-wide v7, p2, v4

    add-double v7, v7, v16

    aput-wide v7, p2, v4

    aget-wide v7, p2, v15

    sub-double/2addr v7, v5

    aput-wide v7, p2, v15

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rftfsub(I[DII[DI)V
    .locals 20

    shr-int/lit8 v0, p1, 0x1

    mul-int/lit8 v1, p4, 0x2

    div-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v4, p1, v2

    add-int/2addr v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p6, p4

    sub-int/2addr v7, v3

    aget-wide v7, p5, v7

    sub-double/2addr v5, v7

    add-int v7, p6, v3

    aget-wide v7, p5, v7

    add-int v9, p3, v2

    add-int v4, p3, v4

    aget-wide v10, p2, v9

    aget-wide v12, p2, v4

    sub-double/2addr v10, v12

    add-int/lit8 v12, v9, 0x1

    aget-wide v13, p2, v12

    add-int/lit8 v15, v4, 0x1

    aget-wide v16, p2, v15

    add-double v13, v13, v16

    mul-double v16, v5, v10

    mul-double v18, v7, v13

    sub-double v16, v16, v18

    mul-double/2addr v5, v13

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    aget-wide v7, p2, v9

    sub-double v7, v7, v16

    aput-wide v7, p2, v9

    aget-wide v7, p2, v12

    sub-double v7, v5, v7

    aput-wide v7, p2, v12

    aget-wide v7, p2, v4

    add-double v7, v7, v16

    aput-wide v7, p2, v4

    aget-wide v7, p2, v15

    sub-double/2addr v5, v7

    aput-wide v5, p2, v15

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    add-int v0, p3, v0

    add-int/lit8 v0, v0, 0x1

    aget-wide v1, p2, v0

    neg-double v1, v1

    aput-wide v1, p2, v0

    return-void
.end method

.method private scale(D[DIZ)V
    .locals 16

    move-object/from16 v7, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v8, v0, p1

    if-eqz p5, :cond_0

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_0
    move v10, v0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v0, 0x1

    if-le v11, v0, :cond_3

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-lt v10, v0, :cond_3

    div-int v12, v10, v11

    new-array v13, v11, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v14, v0

    :goto_1
    if-ge v14, v11, :cond_2

    mul-int v0, v14, v12

    add-int v2, p4, v0

    add-int/lit8 v0, v11, -0x1

    if-ne v14, v0, :cond_1

    add-int v0, p4, v10

    goto :goto_2

    :cond_1
    add-int v0, v2, v12

    :goto_2
    move v3, v0

    new-instance v15, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DD)V

    invoke-static {v15}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_4

    :cond_3
    move/from16 v0, p4

    :goto_3
    add-int v1, p4, v10

    if-ge v0, v1, :cond_4

    aget-wide v1, p3, v0

    mul-double/2addr v1, v8

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method cfftf([DII)V
    .locals 28

    move-object/from16 v12, p0

    const/4 v13, 0x1

    new-array v14, v13, [I

    iget v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v15, v0, 0x2

    new-array v11, v15, [D

    const/4 v10, 0x4

    mul-int/lit8 v16, v0, 0x4

    const/4 v9, 0x0

    aput v9, v14, v9

    iget-object v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v1, v16, 0x1

    aget-wide v1, v0, v1

    double-to-int v8, v1

    const/4 v7, 0x2

    move v6, v7

    move/from16 v17, v9

    move v4, v13

    move/from16 v18, v15

    :goto_0
    add-int/lit8 v0, v8, 0x1

    if-gt v6, v0, :cond_a

    iget-object v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v1, v6, v16

    aget-wide v1, v0, v1

    double-to-int v5, v1

    mul-int v19, v5, v4

    iget v0, v12, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v0, v0, v19

    add-int v20, v0, v0

    mul-int v21, v20, v4

    if-eq v5, v7, :cond_7

    const/4 v0, 0x3

    if-eq v5, v0, :cond_5

    if-eq v5, v10, :cond_3

    const/4 v0, 0x5

    if-eq v5, v0, :cond_1

    if-nez v17, :cond_0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v20

    move v3, v5

    move/from16 v23, v5

    move/from16 v5, v21

    move/from16 v24, v6

    move-object/from16 v6, p1

    move/from16 v25, v7

    move/from16 v7, p2

    move/from16 v26, v8

    move-object v8, v11

    move v13, v9

    move/from16 v9, v22

    move/from16 v22, v10

    move/from16 v10, v18

    move-object/from16 v27, v11

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    goto :goto_1

    :cond_0
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v13, v9

    move/from16 v22, v10

    move-object/from16 v27, v11

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v5, v21

    move-object/from16 v6, v27

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, v18

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

    :goto_1
    aget v0, v14, v13

    if-eqz v0, :cond_9

    goto/16 :goto_2

    :cond_1
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v13, v9

    move/from16 v22, v10

    move-object/from16 v27, v11

    if-nez v17, :cond_2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, v27

    move/from16 v7, v18

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

    goto/16 :goto_2

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v4

    move-object/from16 v3, v27

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v18

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

    goto/16 :goto_2

    :cond_3
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v13, v9

    move/from16 v22, v10

    move-object/from16 v27, v11

    if-nez v17, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, v27

    move/from16 v7, v18

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    goto/16 :goto_2

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v4

    move-object/from16 v3, v27

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v18

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    goto/16 :goto_2

    :cond_5
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v13, v9

    move/from16 v22, v10

    move-object/from16 v27, v11

    if-nez v17, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, v27

    move/from16 v7, v18

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v4

    move-object/from16 v3, v27

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v18

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    goto :goto_2

    :cond_7
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move v13, v9

    move/from16 v22, v10

    move-object/from16 v27, v11

    if-nez v17, :cond_8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, v27

    move/from16 v7, v18

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v4

    move-object/from16 v3, v27

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v18

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    :goto_2
    rsub-int/lit8 v0, v17, 0x1

    move/from16 v17, v0

    :cond_9
    add-int/lit8 v5, v23, -0x1

    mul-int v5, v5, v20

    add-int v18, v18, v5

    add-int/lit8 v6, v24, 0x1

    move v9, v13

    move/from16 v4, v19

    move/from16 v10, v22

    move/from16 v7, v25

    move/from16 v8, v26

    move-object/from16 v11, v27

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_a
    move v13, v9

    move-object/from16 v27, v11

    if-nez v17, :cond_b

    return-void

    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v27

    invoke-static {v2, v13, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method cffti()V
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    add-int/2addr v6, v2

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-gt v6, v9, :cond_1

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v11, v6, -0x1

    aget v7, v7, v11

    goto :goto_1

    :cond_1
    add-int/2addr v7, v10

    :goto_1
    div-int v11, v1, v7

    mul-int v12, v7, v11

    sub-int v12, v1, v12

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v12, v8, 0x1

    add-int/2addr v12, v4

    int-to-double v13, v7

    aput-wide v13, v1, v12

    if-ne v7, v10, :cond_4

    if-eq v8, v2, :cond_4

    move v1, v10

    :goto_2
    if-gt v1, v8, :cond_3

    sub-int v12, v8, v1

    add-int/2addr v12, v10

    add-int/2addr v12, v4

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v14, v12, 0x1

    aget-wide v15, v13, v12

    aput-wide v15, v13, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v12, v4, 0x2

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    aput-wide v13, v1, v12

    :cond_4
    if-ne v11, v2, :cond_9

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v11, v6

    aput-wide v11, v1, v4

    add-int/lit8 v7, v4, 0x1

    int-to-double v11, v8

    aput-wide v11, v1, v7

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v6

    div-double/2addr v11, v6

    move v1, v2

    move v6, v1

    move v7, v6

    :goto_3
    if-gt v1, v8, :cond_8

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v1, v1, 0x1

    add-int v14, v1, v4

    aget-wide v14, v13, v14

    double-to-int v13, v14

    mul-int v14, v6, v13

    iget v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v15, v14

    add-int/2addr v15, v15

    add-int/2addr v15, v10

    add-int/lit8 v2, v13, -0x1

    const/4 v5, 0x1

    const/16 v17, 0x0

    :goto_4
    if-gt v5, v2, :cond_7

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v18, v7, -0x1

    add-int v18, v18, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    aput-wide v19, v9, v18

    add-int v18, v7, v3

    const-wide/16 v21, 0x0

    aput-wide v21, v9, v18

    add-int v9, v17, v6

    move/from16 v17, v1

    move/from16 v23, v2

    int-to-double v1, v9

    mul-double/2addr v1, v11

    const/4 v10, 0x4

    :goto_5
    if-gt v10, v15, :cond_5

    add-int/lit8 v7, v7, 0x2

    add-double v21, v21, v19

    mul-double v24, v21, v1

    add-int v26, v7, v3

    move-wide/from16 v27, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v2, v26, -0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    aput-wide v29, v1, v2

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    aput-wide v24, v1, v26

    add-int/lit8 v10, v10, 0x2

    move-wide/from16 v1, v27

    goto :goto_5

    :cond_5
    const/4 v1, 0x5

    if-le v13, v1, :cond_6

    add-int v1, v7, v3

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v10, v18, -0x1

    add-int/lit8 v19, v1, -0x1

    aget-wide v19, v2, v19

    aput-wide v19, v2, v10

    aget-wide v19, v2, v1

    aput-wide v19, v2, v18

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v17

    move/from16 v2, v23

    const/4 v10, 0x2

    move/from16 v17, v9

    const/4 v9, 0x4

    goto :goto_4

    :cond_7
    move/from16 v17, v1

    move v6, v14

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    move v1, v11

    goto/16 :goto_1
.end method

.method cffti(II)V
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x4

    move v9, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    add-int/2addr v6, v2

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-gt v6, v10, :cond_1

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v12, v6, -0x1

    aget v7, v7, v12

    goto :goto_1

    :cond_1
    add-int/2addr v7, v11

    :goto_1
    div-int v12, v9, v7

    mul-int v13, v7, v12

    sub-int v13, v9, v13

    if-eqz v13, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v13, p2, v8

    add-int/2addr v13, v2

    add-int/2addr v13, v4

    int-to-double v14, v7

    aput-wide v14, v9, v13

    if-ne v7, v11, :cond_4

    if-eq v8, v2, :cond_4

    move v9, v11

    :goto_2
    if-gt v9, v8, :cond_3

    sub-int v13, v8, v9

    add-int/2addr v13, v11

    add-int/2addr v13, v4

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v13, p2, v13

    add-int/lit8 v15, v13, 0x1

    aget-wide v16, v14, v13

    aput-wide v16, v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v13, p2, 0x2

    add-int/2addr v13, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    aput-wide v14, v9, v13

    :cond_4
    if-ne v12, v2, :cond_9

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v7, p2, v4

    int-to-double v12, v1

    aput-wide v12, v6, v7

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v4

    int-to-double v14, v8

    aput-wide v14, v6, v7

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v12

    move v9, v2

    move v12, v9

    move v13, v12

    :goto_3
    if-gt v9, v8, :cond_8

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v15, p2, v9

    add-int/2addr v15, v2

    add-int/2addr v15, v4

    move-wide/from16 v17, v6

    aget-wide v5, v14, v15

    double-to-int v5, v5

    mul-int v6, v12, v5

    div-int v7, v1, v6

    add-int/2addr v7, v7

    add-int/2addr v7, v11

    add-int/lit8 v14, v5, -0x1

    move v15, v2

    const/16 v19, 0x0

    :goto_4
    if-gt v15, v14, :cond_7

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v20, p2, v13

    add-int/lit8 v21, v20, -0x1

    add-int v21, v21, v3

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    aput-wide v22, v2, v21

    add-int v20, v20, v3

    const-wide/16 v24, 0x0

    aput-wide v24, v2, v20

    add-int v2, v19, v12

    int-to-double v10, v2

    mul-double v10, v10, v17

    move/from16 v21, v13

    const/4 v1, 0x4

    :goto_5
    if-gt v1, v7, :cond_5

    add-int/lit8 v21, v21, 0x2

    add-double v24, v24, v22

    mul-double v26, v24, v10

    add-int v28, v21, v3

    move/from16 v29, v2

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v28, p2, v28

    add-int/lit8 v30, v28, -0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    aput-wide v31, v2, v30

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    aput-wide v26, v2, v28

    add-int/lit8 v1, v1, 0x2

    move/from16 v2, v29

    goto :goto_5

    :cond_5
    move/from16 v29, v2

    const/4 v1, 0x5

    if-le v5, v1, :cond_6

    add-int/2addr v13, v3

    add-int v1, v21, v3

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v10, p2, v13

    add-int/lit8 v11, v10, -0x1

    add-int v1, p2, v1

    add-int/lit8 v13, v1, -0x1

    aget-wide v22, v2, v13

    aput-wide v22, v2, v11

    aget-wide v22, v2, v1

    aput-wide v22, v2, v10

    :cond_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v13, v21

    move/from16 v19, v29

    const/4 v2, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    move v12, v6

    move-wide/from16 v6, v17

    const/4 v2, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto/16 :goto_3

    :cond_8
    return-void

    :cond_9
    move/from16 v1, p1

    move v9, v12

    goto/16 :goto_1
.end method

.method public complexForward([D)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    return-void
.end method

.method public complexForward([DI)V
    .locals 10

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_0

    :cond_3
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v4, v0, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    :goto_0
    return-void
.end method

.method public complexInverse([DIZ)V
    .locals 10

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_0

    :cond_3
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v4, v0, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    :goto_0
    if-eqz p3, :cond_4

    iget p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, p3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_4
    return-void
.end method

.method public complexInverse([DZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    return-void
.end method

.method passf2(II[DI[DIII)V
    .locals 23

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    const/4 v4, 0x2

    if-gt v0, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    mul-int v4, v3, v0

    mul-int/lit8 v5, v4, 0x2

    add-int v5, p4, v5

    add-int v6, v5, v0

    aget-wide v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, p3, v5

    aget-wide v11, p3, v6

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, p3, v6

    add-int v4, p6, v4

    add-int v13, v4, v2

    add-double v14, v7, v11

    aput-wide v14, p5, v4

    add-int/lit8 v4, v4, 0x1

    add-double v14, v9, v5

    aput-wide v14, p5, v4

    sub-double/2addr v7, v11

    aput-wide v7, p5, v13

    add-int/lit8 v13, v13, 0x1

    sub-double/2addr v9, v5

    aput-wide v9, p5, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_1

    mul-int v6, v4, v0

    add-int v7, p4, v5

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    add-int v8, v7, v0

    aget-wide v9, p3, v7

    add-int/lit8 v7, v7, 0x1

    aget-wide v11, p3, v7

    aget-wide v13, p3, v8

    add-int/lit8 v8, v8, 0x1

    aget-wide v7, p3, v8

    add-int v15, v5, p7

    move-object/from16 v3, p0

    iget-object v0, v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v16, v0, v15

    move/from16 v1, p8

    move/from16 v18, v4

    int-to-double v3, v1

    add-int/lit8 v15, v15, 0x1

    aget-wide v19, v0, v15

    mul-double v3, v3, v19

    sub-double v19, v9, v13

    sub-double v21, v11, v7

    add-int v0, p6, v5

    add-int/2addr v0, v6

    add-int v6, v0, v2

    add-double/2addr v9, v13

    aput-wide v9, p5, v0

    add-int/lit8 v0, v0, 0x1

    add-double/2addr v11, v7

    aput-wide v11, p5, v0

    mul-double v7, v16, v19

    mul-double v9, v3, v21

    sub-double/2addr v7, v9

    aput-wide v7, p5, v6

    add-int/lit8 v6, v6, 0x1

    mul-double v16, v16, v21

    mul-double v3, v3, v19

    add-double v16, v16, v3

    aput-wide v16, p5, v6

    add-int/lit8 v5, v5, 0x2

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v4, v18

    goto :goto_2

    :cond_1
    move/from16 v1, p8

    move/from16 v18, v4

    add-int/lit8 v4, v18, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_1

    :cond_2
    return-void
.end method

.method passf3(II[DI[DIII)V
    .locals 43

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p8

    add-int v3, p7, v0

    mul-int v4, v1, v0

    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v0, v9, :cond_0

    move v3, v10

    :goto_0
    if-gt v3, v1, :cond_2

    mul-int/lit8 v11, v3, 0x3

    sub-int/2addr v11, v9

    mul-int/2addr v11, v0

    add-int v11, p4, v11

    add-int v12, v11, v0

    sub-int v13, v11, v0

    aget-wide v14, p3, v11

    add-int/2addr v11, v10

    aget-wide v16, p3, v11

    aget-wide v18, p3, v12

    add-int/2addr v12, v10

    aget-wide v11, p3, v12

    aget-wide v20, p3, v13

    add-int/lit8 v22, v13, 0x1

    aget-wide v22, p3, v22

    add-double v24, v14, v18

    mul-double v26, v24, v7

    add-double v20, v20, v26

    add-double v26, v16, v11

    mul-double v28, v26, v7

    add-double v28, v22, v28

    int-to-double v7, v2

    mul-double/2addr v7, v5

    sub-double v14, v14, v18

    mul-double/2addr v14, v7

    sub-double v16, v16, v11

    mul-double v7, v7, v16

    add-int/lit8 v11, v3, -0x1

    mul-int/2addr v11, v0

    add-int v11, p6, v11

    add-int v12, v11, v4

    add-int v16, v12, v4

    aget-wide v17, p3, v13

    add-double v17, v17, v24

    aput-wide v17, p5, v11

    add-int/2addr v11, v10

    add-double v22, v22, v26

    aput-wide v22, p5, v11

    sub-double v17, v20, v7

    aput-wide v17, p5, v12

    add-int/2addr v12, v10

    add-double v17, v28, v14

    aput-wide v17, p5, v12

    add-double v20, v20, v7

    aput-wide v20, p5, v16

    add-int/lit8 v16, v16, 0x1

    sub-double v28, v28, v14

    aput-wide v28, p5, v16

    add-int/lit8 v3, v3, 0x1

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    goto :goto_0

    :cond_0
    move v7, v10

    :goto_1
    if-gt v7, v1, :cond_2

    mul-int/lit8 v8, v7, 0x3

    sub-int/2addr v8, v9

    mul-int/2addr v8, v0

    add-int v8, p4, v8

    add-int/lit8 v11, v7, -0x1

    mul-int/2addr v11, v0

    add-int v11, p6, v11

    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v13, v0, -0x1

    if-ge v12, v13, :cond_1

    add-int v13, v12, v8

    add-int v14, v13, v0

    sub-int v15, v13, v0

    aget-wide v16, p3, v13

    add-int/2addr v13, v10

    aget-wide v18, p3, v13

    aget-wide v20, p3, v14

    add-int/2addr v14, v10

    aget-wide v13, p3, v14

    aget-wide v22, p3, v15

    add-int/2addr v15, v10

    aget-wide v24, p3, v15

    add-double v26, v16, v20

    const-wide/high16 v28, -0x4020000000000000L    # -0.5

    mul-double v30, v26, v28

    add-double v30, v22, v30

    add-double v32, v18, v13

    mul-double v34, v32, v28

    add-double v34, v24, v34

    int-to-double v9, v2

    mul-double v37, v9, v5

    sub-double v16, v16, v20

    mul-double v16, v16, v37

    sub-double v18, v18, v13

    mul-double v37, v37, v18

    sub-double v13, v30, v37

    add-double v30, v30, v37

    add-double v18, v34, v16

    sub-double v34, v34, v16

    add-int v16, v12, p7

    add-int v17, v12, v3

    move-object/from16 v5, p0

    iget-object v6, v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v37, v6, v16

    const/16 v36, 0x1

    add-int/lit8 v16, v16, 0x1

    aget-wide v39, v6, v16

    mul-double v39, v39, v9

    aget-wide v41, v6, v17

    add-int/lit8 v17, v17, 0x1

    aget-wide v16, v6, v17

    mul-double v9, v9, v16

    add-int v6, v12, v11

    add-int v16, v6, v4

    add-int v17, v16, v4

    add-double v22, v22, v26

    aput-wide v22, p5, v6

    add-int/lit8 v6, v6, 0x1

    add-double v24, v24, v32

    aput-wide v24, p5, v6

    mul-double v22, v37, v13

    mul-double v24, v39, v18

    sub-double v22, v22, v24

    aput-wide v22, p5, v16

    add-int/lit8 v16, v16, 0x1

    mul-double v37, v37, v18

    mul-double v39, v39, v13

    add-double v37, v37, v39

    aput-wide v37, p5, v16

    mul-double v13, v41, v30

    mul-double v18, v9, v34

    sub-double v13, v13, v18

    aput-wide v13, p5, v17

    add-int/lit8 v17, v17, 0x1

    mul-double v41, v41, v34

    mul-double v9, v9, v30

    add-double v41, v41, v9

    aput-wide v41, p5, v17

    add-int/lit8 v12, v12, 0x2

    move/from16 v10, v36

    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    const/4 v9, 0x2

    goto/16 :goto_2

    :cond_1
    move-object/from16 v5, p0

    move/from16 v36, v10

    const-wide/high16 v28, -0x4020000000000000L    # -0.5

    add-int/lit8 v7, v7, 0x1

    const-wide v5, 0x3febb67ae8584cabL    # 0.8660254037844387

    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_2
    move-object/from16 v5, p0

    return-void
.end method

.method passf4(II[DI[DIII)V
    .locals 44

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p8

    add-int v3, p7, v0

    add-int v4, v3, v0

    mul-int v5, v1, v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    mul-int v3, v7, v0

    mul-int/lit8 v4, v3, 0x4

    add-int v4, p4, v4

    add-int/lit8 v4, v4, 0x1

    add-int v6, v4, v0

    add-int v8, v6, v0

    add-int v9, v8, v0

    add-int/lit8 v10, v4, -0x1

    aget-wide v10, p3, v10

    aget-wide v12, p3, v4

    add-int/lit8 v4, v6, -0x1

    aget-wide v14, p3, v4

    aget-wide v16, p3, v6

    add-int/lit8 v4, v8, -0x1

    aget-wide v18, p3, v4

    aget-wide v20, p3, v8

    add-int/lit8 v4, v9, -0x1

    aget-wide v22, p3, v4

    aget-wide v8, p3, v9

    sub-double v24, v12, v20

    add-double v12, v12, v20

    sub-double v20, v8, v16

    add-double v16, v16, v8

    sub-double v8, v10, v18

    add-double v10, v10, v18

    sub-double v18, v14, v22

    add-double v14, v14, v22

    add-int v3, p6, v3

    add-int v4, v3, v5

    add-int v6, v4, v5

    add-int v22, v6, v5

    add-double v26, v10, v14

    aput-wide v26, p5, v3

    add-int/lit8 v3, v3, 0x1

    add-double v26, v12, v16

    aput-wide v26, p5, v3

    int-to-double v0, v2

    mul-double v20, v20, v0

    add-double v26, v8, v20

    aput-wide v26, p5, v4

    add-int/lit8 v4, v4, 0x1

    mul-double v0, v0, v18

    add-double v18, v24, v0

    aput-wide v18, p5, v4

    sub-double/2addr v10, v14

    aput-wide v10, p5, v6

    add-int/lit8 v6, v6, 0x1

    sub-double v12, v12, v16

    aput-wide v12, p5, v6

    sub-double v8, v8, v20

    aput-wide v8, p5, v22

    add-int/lit8 v22, v22, 0x1

    sub-double v24, v24, v0

    aput-wide v24, p5, v22

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    mul-int v6, v1, p1

    add-int/lit8 v8, p4, 0x1

    mul-int/lit8 v9, v6, 0x4

    add-int/2addr v8, v9

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v10, p1, -0x1

    if-ge v9, v10, :cond_1

    add-int v10, v9, v8

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v13, v12, p1

    add-int/lit8 v14, v10, -0x1

    aget-wide v14, p3, v14

    aget-wide v16, p3, v10

    add-int/lit8 v10, v11, -0x1

    aget-wide v18, p3, v10

    aget-wide v10, p3, v11

    add-int/lit8 v20, v12, -0x1

    aget-wide v20, p3, v20

    aget-wide v22, p3, v12

    add-int/lit8 v12, v13, -0x1

    aget-wide v24, p3, v12

    aget-wide v12, p3, v13

    sub-double v26, v16, v22

    add-double v16, v16, v22

    add-double v22, v10, v12

    sub-double/2addr v12, v10

    sub-double v10, v14, v20

    add-double v14, v14, v20

    sub-double v20, v18, v24

    add-double v18, v18, v24

    sub-double v24, v14, v18

    sub-double v28, v16, v22

    move/from16 v30, v8

    int-to-double v7, v2

    mul-double/2addr v12, v7

    add-double v31, v10, v12

    sub-double/2addr v10, v12

    mul-double v20, v20, v7

    add-double v12, v26, v20

    sub-double v26, v26, v20

    add-int v20, v9, p7

    add-int v21, v9, v3

    add-int v33, v9, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v34, v2, v20

    add-int/lit8 v20, v20, 0x1

    aget-wide v36, v2, v20

    mul-double v36, v36, v7

    aget-wide v38, v2, v21

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v2, v21

    mul-double v20, v20, v7

    aget-wide v40, v2, v33

    add-int/lit8 v33, v33, 0x1

    aget-wide v42, v2, v33

    mul-double v7, v7, v42

    add-int v2, p6, v9

    add-int/2addr v2, v6

    add-int v33, v2, v5

    add-int v42, v33, v5

    add-int v43, v42, v5

    add-double v14, v14, v18

    aput-wide v14, p5, v2

    add-int/lit8 v2, v2, 0x1

    add-double v16, v16, v22

    aput-wide v16, p5, v2

    mul-double v14, v34, v31

    mul-double v16, v36, v12

    sub-double v14, v14, v16

    aput-wide v14, p5, v33

    add-int/lit8 v33, v33, 0x1

    mul-double v34, v34, v12

    mul-double v36, v36, v31

    add-double v34, v34, v36

    aput-wide v34, p5, v33

    mul-double v12, v38, v24

    mul-double v14, v20, v28

    sub-double/2addr v12, v14

    aput-wide v12, p5, v42

    add-int/lit8 v42, v42, 0x1

    mul-double v38, v38, v28

    mul-double v20, v20, v24

    add-double v38, v38, v20

    aput-wide v38, p5, v42

    mul-double v12, v40, v10

    mul-double v14, v7, v26

    sub-double/2addr v12, v14

    aput-wide v12, p5, v43

    add-int/lit8 v43, v43, 0x1

    mul-double v40, v40, v26

    mul-double/2addr v7, v10

    add-double v40, v40, v7

    aput-wide v40, p5, v43

    add-int/lit8 v9, v9, 0x2

    move/from16 v0, p2

    move/from16 v2, p8

    move/from16 v8, v30

    goto/16 :goto_2

    :cond_1
    move-object/from16 v0, p0

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p2

    move/from16 v2, p8

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    return-void
.end method

.method passf5(II[DI[DIII)V
    .locals 70

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p8

    add-int v3, p7, v0

    add-int v4, v3, v0

    add-int v5, v4, v0

    mul-int v6, v1, v0

    const/4 v7, 0x2

    const-wide v8, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v12, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const/16 v16, 0x1

    if-ne v0, v7, :cond_0

    move/from16 v3, v16

    :goto_0
    if-gt v3, v1, :cond_2

    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, -0x4

    mul-int/2addr v4, v0

    add-int v4, p4, v4

    add-int/lit8 v4, v4, 0x1

    add-int v5, v4, v0

    sub-int v7, v4, v0

    add-int v17, v5, v0

    add-int v18, v17, v0

    add-int/lit8 v19, v4, -0x1

    aget-wide v19, p3, v19

    aget-wide v21, p3, v4

    add-int/lit8 v4, v5, -0x1

    aget-wide v23, p3, v4

    aget-wide v4, p3, v5

    add-int/lit8 v25, v7, -0x1

    aget-wide v25, p3, v25

    aget-wide v27, p3, v7

    add-int/lit8 v7, v17, -0x1

    aget-wide v29, p3, v7

    aget-wide v31, p3, v17

    add-int/lit8 v7, v18, -0x1

    aget-wide v33, p3, v7

    aget-wide v17, p3, v18

    sub-double v35, v21, v17

    add-double v21, v21, v17

    sub-double v17, v4, v31

    add-double v4, v4, v31

    sub-double v31, v19, v33

    add-double v19, v19, v33

    sub-double v33, v23, v29

    add-double v23, v23, v29

    mul-double v29, v19, v14

    add-double v29, v25, v29

    mul-double v37, v23, v12

    add-double v29, v29, v37

    mul-double v37, v21, v14

    add-double v37, v27, v37

    mul-double v39, v4, v12

    add-double v37, v37, v39

    mul-double v39, v19, v12

    add-double v39, v25, v39

    mul-double v41, v23, v14

    add-double v39, v39, v41

    mul-double v41, v21, v12

    add-double v41, v27, v41

    mul-double v43, v4, v14

    add-double v41, v41, v43

    int-to-double v12, v2

    mul-double v45, v31, v10

    mul-double v47, v33, v8

    add-double v45, v45, v47

    mul-double v45, v45, v12

    mul-double v47, v35, v10

    mul-double v49, v17, v8

    add-double v47, v47, v49

    mul-double v47, v47, v12

    mul-double v31, v31, v8

    mul-double v33, v33, v10

    sub-double v31, v31, v33

    mul-double v31, v31, v12

    mul-double v35, v35, v8

    mul-double v17, v17, v10

    sub-double v35, v35, v17

    mul-double v12, v12, v35

    add-int/lit8 v7, v3, -0x1

    mul-int/2addr v7, v0

    add-int v7, p6, v7

    add-int v17, v7, v6

    add-int v18, v17, v6

    add-int v33, v18, v6

    add-int v34, v33, v6

    add-double v25, v25, v19

    add-double v25, v25, v23

    aput-wide v25, p5, v7

    add-int/lit8 v7, v7, 0x1

    add-double v27, v27, v21

    add-double v27, v27, v4

    aput-wide v27, p5, v7

    sub-double v4, v29, v47

    aput-wide v4, p5, v17

    add-int/lit8 v17, v17, 0x1

    add-double v4, v37, v45

    aput-wide v4, p5, v17

    sub-double v4, v39, v12

    aput-wide v4, p5, v18

    add-int/lit8 v18, v18, 0x1

    add-double v4, v41, v31

    aput-wide v4, p5, v18

    add-double v39, v39, v12

    aput-wide v39, p5, v33

    add-int/lit8 v33, v33, 0x1

    sub-double v41, v41, v31

    aput-wide v41, p5, v33

    add-double v29, v29, v47

    aput-wide v29, p5, v34

    add-int/lit8 v34, v34, 0x1

    sub-double v37, v37, v45

    aput-wide v37, p5, v34

    add-int/lit8 v3, v3, 0x1

    const-wide v12, -0x40161c8864680b59L    # -0.8090169943749473

    goto/16 :goto_0

    :cond_0
    move/from16 v7, v16

    :goto_1
    if-gt v7, v1, :cond_2

    add-int/lit8 v12, p4, 0x1

    mul-int/lit8 v13, v7, 0x5

    add-int/lit8 v13, v13, -0x4

    mul-int/2addr v13, v0

    add-int/2addr v12, v13

    add-int/lit8 v13, v7, -0x1

    mul-int/2addr v13, v0

    add-int v13, p6, v13

    const/16 v17, 0x0

    move/from16 v8, v17

    :goto_2
    add-int/lit8 v9, v0, -0x1

    if-ge v8, v9, :cond_1

    add-int v9, v8, v12

    add-int v17, v9, v0

    sub-int v20, v9, v0

    add-int v21, v17, v0

    add-int v22, v21, v0

    add-int/lit8 v23, v9, -0x1

    aget-wide v23, p3, v23

    aget-wide v25, p3, v9

    add-int/lit8 v9, v17, -0x1

    aget-wide v27, p3, v9

    aget-wide v29, p3, v17

    add-int/lit8 v9, v20, -0x1

    aget-wide v31, p3, v9

    aget-wide v33, p3, v20

    add-int/lit8 v9, v21, -0x1

    aget-wide v35, p3, v9

    aget-wide v20, p3, v21

    add-int/lit8 v9, v22, -0x1

    aget-wide v37, p3, v9

    aget-wide v39, p3, v22

    sub-double v41, v25, v39

    add-double v25, v25, v39

    sub-double v39, v29, v20

    add-double v29, v29, v20

    sub-double v20, v23, v37

    add-double v23, v23, v37

    sub-double v37, v27, v35

    add-double v27, v27, v35

    mul-double v35, v23, v14

    add-double v35, v31, v35

    const-wide v43, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v45, v27, v43

    add-double v35, v35, v45

    mul-double v45, v25, v14

    add-double v45, v33, v45

    mul-double v47, v29, v43

    add-double v45, v45, v47

    mul-double v47, v23, v43

    add-double v47, v31, v47

    mul-double v49, v27, v14

    add-double v47, v47, v49

    mul-double v49, v25, v43

    add-double v49, v33, v49

    mul-double v51, v29, v14

    add-double v49, v49, v51

    int-to-double v14, v2

    mul-double v53, v20, v10

    const-wide v17, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v55, v37, v17

    add-double v53, v53, v55

    mul-double v53, v53, v14

    mul-double v55, v41, v10

    mul-double v57, v39, v17

    add-double v55, v55, v57

    mul-double v55, v55, v14

    mul-double v20, v20, v17

    mul-double v37, v37, v10

    sub-double v20, v20, v37

    mul-double v20, v20, v14

    mul-double v41, v41, v17

    mul-double v39, v39, v10

    sub-double v41, v41, v39

    mul-double v41, v41, v14

    sub-double v37, v47, v41

    add-double v47, v47, v41

    add-double v39, v49, v20

    sub-double v49, v49, v20

    add-double v19, v35, v55

    sub-double v35, v35, v55

    sub-double v21, v45, v53

    add-double v45, v45, v53

    add-int v9, v8, p7

    add-int v41, v8, v3

    add-int v42, v8, v4

    add-int v53, v8, v5

    move-object/from16 v10, p0

    iget-object v11, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v56, v11, v9

    add-int/lit8 v9, v9, 0x1

    aget-wide v58, v11, v9

    mul-double v58, v58, v14

    aget-wide v60, v11, v41

    add-int/lit8 v41, v41, 0x1

    aget-wide v62, v11, v41

    mul-double v62, v62, v14

    aget-wide v64, v11, v42

    add-int/lit8 v42, v42, 0x1

    aget-wide v41, v11, v42

    mul-double v41, v41, v14

    aget-wide v66, v11, v53

    add-int/lit8 v53, v53, 0x1

    aget-wide v68, v11, v53

    mul-double v14, v14, v68

    add-int v9, v8, v13

    add-int v11, v9, v6

    add-int v53, v11, v6

    add-int v68, v53, v6

    add-int v69, v68, v6

    add-double v31, v31, v23

    add-double v31, v31, v27

    aput-wide v31, p5, v9

    add-int/lit8 v9, v9, 0x1

    add-double v33, v33, v25

    add-double v33, v33, v29

    aput-wide v33, p5, v9

    mul-double v23, v56, v35

    mul-double v25, v58, v45

    sub-double v23, v23, v25

    aput-wide v23, p5, v11

    add-int/lit8 v11, v11, 0x1

    mul-double v56, v56, v45

    mul-double v58, v58, v35

    add-double v56, v56, v58

    aput-wide v56, p5, v11

    mul-double v23, v60, v37

    mul-double v25, v62, v39

    sub-double v23, v23, v25

    aput-wide v23, p5, v53

    add-int/lit8 v53, v53, 0x1

    mul-double v60, v60, v39

    mul-double v62, v62, v37

    add-double v60, v60, v62

    aput-wide v60, p5, v53

    mul-double v23, v64, v47

    mul-double v25, v41, v49

    sub-double v23, v23, v25

    aput-wide v23, p5, v68

    add-int/lit8 v68, v68, 0x1

    mul-double v64, v64, v49

    mul-double v41, v41, v47

    add-double v64, v64, v41

    aput-wide v64, p5, v68

    mul-double v23, v66, v19

    mul-double v25, v14, v21

    sub-double v23, v23, v25

    aput-wide v23, p5, v69

    add-int/lit8 v69, v69, 0x1

    mul-double v66, v66, v21

    mul-double v14, v14, v19

    add-double v66, v66, v14

    aput-wide v66, p5, v69

    add-int/lit8 v8, v8, 0x2

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    goto/16 :goto_2

    :cond_1
    const-wide v17, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v43, -0x40161c8864680b59L    # -0.8090169943749473

    move-object/from16 v10, p0

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v8, v17

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    goto/16 :goto_1

    :cond_2
    move-object/from16 v10, p0

    return-void
.end method

.method passfg([IIIII[DI[DIII)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p11

    div-int/lit8 v10, v1, 0x2

    add-int/lit8 v11, v2, 0x1

    const/4 v12, 0x2

    div-int/2addr v11, v12

    mul-int v13, v2, v1

    if-lt v1, v3, :cond_5

    const/4 v12, 0x1

    :goto_0
    if-ge v12, v11, :cond_2

    sub-int v17, v2, v12

    mul-int v18, v12, v1

    mul-int v17, v17, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v3, :cond_1

    mul-int v20, v14, v1

    mul-int v21, v18, v3

    add-int v21, v20, v21

    mul-int v22, v17, v3

    add-int v22, v20, v22

    mul-int v20, v20, v2

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v1, :cond_0

    add-int v24, v8, v15

    add-int v25, v6, v15

    add-int v26, v25, v18

    add-int v26, v26, v20

    aget-wide v26, v5, v26

    add-int v25, v25, v17

    add-int v25, v25, v20

    aget-wide v28, v5, v25

    add-int v25, v24, v21

    add-double v30, v26, v28

    aput-wide v30, v7, v25

    add-int v24, v24, v22

    sub-double v26, v26, v28

    aput-wide v26, v7, v24

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v3, :cond_4

    mul-int v14, v12, v1

    mul-int v15, v14, v2

    move/from16 v17, v10

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v1, :cond_3

    add-int v18, v8, v10

    add-int v18, v18, v14

    add-int v20, v6, v10

    add-int v20, v20, v15

    aget-wide v20, v5, v20

    aput-wide v20, v7, v18

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v17

    goto :goto_3

    :cond_4
    move/from16 v17, v10

    move/from16 v20, v13

    goto :goto_a

    :cond_5
    move/from16 v17, v10

    const/4 v10, 0x1

    :goto_5
    if-ge v10, v11, :cond_8

    sub-int v12, v2, v10

    mul-int v14, v10, v3

    mul-int/2addr v14, v1

    mul-int v15, v12, v3

    mul-int/2addr v15, v1

    mul-int v18, v10, v1

    mul-int/2addr v12, v1

    move/from16 v20, v13

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v1, :cond_7

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v3, :cond_6

    mul-int v21, v9, v1

    mul-int v22, v21, v2

    add-int v24, v8, v13

    add-int v25, v6, v13

    add-int v26, v25, v18

    add-int v26, v26, v22

    aget-wide v26, v5, v26

    add-int v25, v25, v12

    add-int v25, v25, v22

    aget-wide v28, v5, v25

    add-int v24, v24, v21

    add-int v21, v24, v14

    add-double v30, v26, v28

    aput-wide v30, v7, v21

    add-int v24, v24, v15

    sub-double v26, v26, v28

    aput-wide v26, v7, v24

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, p11

    goto :goto_6

    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p11

    move/from16 v13, v20

    goto :goto_5

    :cond_8
    move/from16 v20, v13

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v1, :cond_a

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v3, :cond_9

    mul-int v12, v10, v1

    add-int v13, v8, v9

    add-int/2addr v13, v12

    add-int v14, v6, v9

    mul-int/2addr v12, v2

    add-int/2addr v14, v12

    aget-wide v14, v5, v14

    aput-wide v14, v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_a
    :goto_a
    rsub-int/lit8 v9, v1, 0x2

    add-int/lit8 v10, v2, -0x1

    mul-int/2addr v10, v4

    move v13, v9

    const/4 v12, 0x1

    const/4 v14, 0x0

    :goto_b
    if-ge v12, v11, :cond_f

    sub-int v15, v2, v12

    add-int/2addr v13, v1

    mul-int v18, v12, v4

    mul-int/2addr v15, v4

    add-int v21, v13, p10

    move/from16 v22, v9

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v24, v21, -0x2

    aget-wide v24, v9, v24

    move/from16 v26, v13

    move/from16 v13, p11

    int-to-double v2, v13

    const/16 v23, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-wide v27, v9, v21

    mul-double v27, v27, v2

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v4, :cond_b

    add-int v21, v6, v9

    add-int v29, v8, v9

    add-int v30, v21, v18

    aget-wide v31, v7, v29

    add-int v33, v29, v4

    aget-wide v33, v7, v33

    mul-double v33, v33, v24

    add-double v31, v31, v33

    aput-wide v31, v5, v30

    add-int v21, v21, v15

    add-int v29, v29, v10

    aget-wide v29, v7, v29

    mul-double v29, v29, v27

    aput-wide v29, v5, v21

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_b
    add-int/2addr v14, v1

    move/from16 v21, v26

    const/4 v9, 0x2

    :goto_d
    if-ge v9, v11, :cond_e

    move-wide/from16 v24, v2

    move/from16 v2, p3

    sub-int v3, v2, v9

    move/from16 v27, v10

    add-int v10, v21, v14

    move/from16 v21, v14

    move/from16 v14, v20

    if-le v10, v14, :cond_c

    sub-int/2addr v10, v14

    :cond_c
    add-int v20, v10, p10

    move/from16 v28, v10

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v29, v20, -0x2

    aget-wide v29, v10, v29

    const/16 v23, 0x1

    add-int/lit8 v20, v20, -0x1

    aget-wide v31, v10, v20

    mul-double v31, v31, v24

    mul-int v10, v9, v4

    mul-int/2addr v3, v4

    move/from16 v20, v14

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v4, :cond_d

    add-int v33, v6, v14

    add-int v34, v8, v14

    add-int v35, v33, v18

    aget-wide v36, v5, v35

    add-int v38, v34, v10

    aget-wide v38, v7, v38

    mul-double v38, v38, v29

    add-double v36, v36, v38

    aput-wide v36, v5, v35

    add-int v33, v33, v15

    aget-wide v35, v5, v33

    add-int v34, v34, v3

    aget-wide v37, v7, v34

    mul-double v37, v37, v31

    add-double v35, v35, v37

    aput-wide v35, v5, v33

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v21

    move-wide/from16 v2, v24

    move/from16 v10, v27

    move/from16 v21, v28

    goto :goto_d

    :cond_e
    move/from16 v2, p3

    move/from16 v27, v10

    move/from16 v21, v14

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p4

    move/from16 v9, v22

    move/from16 v13, v26

    goto/16 :goto_b

    :cond_f
    move/from16 v13, p11

    move/from16 v22, v9

    const/4 v3, 0x1

    :goto_f
    if-ge v3, v11, :cond_11

    mul-int v9, v3, v4

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v4, :cond_10

    add-int v12, v8, v10

    aget-wide v14, v7, v12

    add-int v18, v12, v9

    aget-wide v20, v7, v18

    add-double v14, v14, v20

    aput-wide v14, v7, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_11
    const/4 v3, 0x1

    :goto_11
    if-ge v3, v11, :cond_13

    sub-int v9, v2, v3

    mul-int v10, v3, v4

    mul-int/2addr v9, v4

    const/4 v12, 0x1

    :goto_12
    if-ge v12, v4, :cond_12

    add-int v14, v8, v12

    add-int v15, v6, v12

    add-int v18, v15, v10

    add-int/2addr v15, v9

    add-int/lit8 v20, v18, -0x1

    aget-wide v20, v5, v20

    aget-wide v24, v5, v18

    add-int/lit8 v18, v15, -0x1

    aget-wide v26, v5, v18

    aget-wide v28, v5, v15

    add-int v15, v14, v10

    add-int/2addr v14, v9

    add-int/lit8 v18, v15, -0x1

    sub-double v30, v20, v28

    aput-wide v30, v7, v18

    add-int/lit8 v18, v14, -0x1

    add-double v20, v20, v28

    aput-wide v20, v7, v18

    add-double v20, v24, v26

    aput-wide v20, v7, v15

    sub-double v24, v24, v26

    aput-wide v24, v7, v14

    add-int/lit8 v12, v12, 0x2

    goto :goto_12

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_13
    const/4 v3, 0x0

    const/4 v9, 0x1

    aput v9, p1, v3

    const/4 v9, 0x2

    if-ne v1, v9, :cond_14

    return-void

    :cond_14
    aput v3, p1, v3

    invoke-static {v7, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v4, p4

    mul-int v9, v4, v1

    const/4 v10, 0x1

    :goto_13
    if-ge v10, v2, :cond_16

    mul-int v11, v10, v9

    move v12, v3

    :goto_14
    if-ge v12, v4, :cond_15

    mul-int v14, v12, v1

    add-int v15, v8, v14

    add-int/2addr v15, v11

    add-int/2addr v14, v6

    add-int/2addr v14, v11

    aget-wide v18, v7, v15

    aput-wide v18, v5, v14

    const/16 v18, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-wide v18, v7, v15

    aput-wide v18, v5, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_16
    move/from16 v10, v17

    if-gt v10, v4, :cond_19

    move v11, v3

    const/4 v10, 0x1

    :goto_15
    if-ge v10, v2, :cond_1c

    const/4 v12, 0x2

    add-int/2addr v11, v12

    mul-int v12, v10, v4

    mul-int/2addr v12, v1

    const/4 v14, 0x3

    :goto_16
    if-ge v14, v1, :cond_18

    add-int/lit8 v11, v11, 0x2

    add-int v15, v11, p10

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v18, v15, -0x1

    aget-wide v20, v3, v18

    move/from16 v18, v10

    int-to-double v9, v13

    aget-wide v22, v3, v15

    mul-double v9, v9, v22

    add-int v3, v6, v14

    add-int v15, v8, v14

    move/from16 p5, v11

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v4, :cond_17

    mul-int v22, v11, v1

    add-int v22, v22, v12

    add-int v23, v3, v22

    add-int v22, v15, v22

    add-int/lit8 v24, v22, -0x1

    aget-wide v24, v7, v24

    aget-wide v26, v7, v22

    add-int/lit8 v22, v23, -0x1

    mul-double v28, v20, v24

    mul-double v30, v9, v26

    sub-double v28, v28, v30

    aput-wide v28, v5, v22

    mul-double v26, v26, v20

    mul-double v24, v24, v9

    add-double v26, v26, v24

    aput-wide v26, v5, v23

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_17
    add-int/lit8 v14, v14, 0x2

    move/from16 v11, p5

    move/from16 v10, v18

    const/4 v3, 0x0

    goto :goto_16

    :cond_18
    move/from16 v18, v10

    const/16 v17, 0x1

    add-int/lit8 v10, v18, 0x1

    const/4 v3, 0x0

    goto :goto_15

    :cond_19
    const/16 v17, 0x1

    move/from16 v15, v17

    move/from16 v9, v22

    :goto_18
    if-ge v15, v2, :cond_1c

    add-int/2addr v9, v1

    mul-int v3, v15, v4

    mul-int/2addr v3, v1

    const/4 v10, 0x0

    :goto_19
    if-ge v10, v4, :cond_1b

    mul-int v11, v10, v1

    add-int/2addr v11, v3

    move v14, v9

    const/4 v12, 0x3

    :goto_1a
    if-ge v12, v1, :cond_1a

    const/16 v16, 0x2

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v17, v14, -0x1

    add-int v17, v17, p10

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v18, v17, -0x1

    aget-wide v20, v1, v18

    move/from16 p5, v3

    int-to-double v2, v13

    aget-wide v17, v1, v17

    mul-double v2, v2, v17

    add-int v1, v6, v12

    add-int/2addr v1, v11

    add-int v17, v8, v12

    add-int v17, v17, v11

    add-int/lit8 v18, v17, -0x1

    aget-wide v22, v7, v18

    aget-wide v17, v7, v17

    add-int/lit8 v24, v1, -0x1

    mul-double v25, v20, v22

    mul-double v27, v2, v17

    sub-double v25, v25, v27

    aput-wide v25, v5, v24

    mul-double v20, v20, v17

    mul-double v2, v2, v22

    add-double v20, v20, v2

    aput-wide v20, v5, v1

    add-int/lit8 v12, v12, 0x2

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    goto :goto_1a

    :cond_1a
    move/from16 p5, v3

    const/16 v16, 0x2

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    goto :goto_19

    :cond_1b
    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    goto :goto_18

    :cond_1c
    return-void
.end method

.method radb2(II[DI[DII)V
    .locals 31

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v1, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_0

    mul-int v6, v4, v0

    mul-int/lit8 v7, v6, 0x2

    add-int v8, v7, v0

    add-int v6, p6, v6

    add-int v7, p4, v7

    add-int v9, p4, v0

    sub-int/2addr v9, v5

    add-int/2addr v9, v8

    aget-wide v7, p3, v7

    aget-wide v9, p3, v9

    add-double v11, v7, v9

    aput-wide v11, p5, v6

    add-int/2addr v6, v2

    sub-double/2addr v7, v9

    aput-wide v7, p5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    return-void

    :cond_1
    if-eq v0, v4, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    mul-int v7, v6, v0

    mul-int/lit8 v8, v7, 0x2

    add-int v9, v8, v0

    add-int v10, v7, v2

    move v11, v4

    :goto_2
    if-ge v11, v0, :cond_2

    sub-int v12, v0, v11

    add-int/lit8 v13, v11, -0x1

    add-int v13, v13, p7

    add-int v14, p6, v11

    add-int v15, p4, v11

    add-int v12, p4, v12

    move-object/from16 v3, p0

    iget-object v4, v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v16, v13, -0x1

    aget-wide v16, v4, v16

    aget-wide v18, v4, v13

    add-int/2addr v15, v8

    add-int/2addr v12, v9

    add-int v4, v14, v7

    add-int/2addr v14, v10

    add-int/lit8 v13, v15, -0x1

    aget-wide v20, p3, v13

    add-int/lit8 v22, v12, -0x1

    aget-wide v23, p3, v22

    sub-double v20, v20, v23

    aget-wide v23, p3, v15

    aget-wide v25, p3, v12

    add-double v23, v23, v25

    aget-wide v25, p3, v15

    aget-wide v27, p3, v13

    aget-wide v12, p3, v12

    aget-wide v29, p3, v22

    add-int/lit8 v15, v4, -0x1

    add-double v27, v27, v29

    aput-wide v27, p5, v15

    sub-double v25, v25, v12

    aput-wide v25, p5, v4

    add-int/lit8 v4, v14, -0x1

    mul-double v12, v16, v20

    mul-double v25, v18, v23

    sub-double v12, v12, v25

    aput-wide v12, p5, v4

    mul-double v16, v16, v23

    mul-double v18, v18, v20

    add-double v16, v16, v18

    aput-wide v16, p5, v14

    add-int/lit8 v11, v11, 0x2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    move-object/from16 v3, p0

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    move-object/from16 v3, p0

    rem-int/lit8 v4, v0, 0x2

    if-ne v4, v5, :cond_5

    return-void

    :cond_4
    move-object/from16 v3, p0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_6

    mul-int v6, v4, v0

    mul-int/lit8 v7, v6, 0x2

    add-int v8, p6, v0

    sub-int/2addr v8, v5

    add-int/2addr v8, v6

    add-int v6, p4, v7

    add-int/2addr v6, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    add-int/lit8 v7, v6, -0x1

    aget-wide v11, p3, v7

    mul-double/2addr v11, v9

    aput-wide v11, p5, v8

    add-int/2addr v8, v2

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    aget-wide v6, p3, v6

    mul-double/2addr v6, v9

    aput-wide v6, p5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb3(II[DI[DII)V
    .locals 43

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    if-ge v4, v1, :cond_0

    mul-int v7, v4, v0

    mul-int/lit8 v8, v7, 0x3

    add-int v8, p4, v8

    mul-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v8

    aget-wide v10, p3, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    add-int/lit8 v8, v9, -0x1

    aget-wide v14, p3, v8

    mul-double/2addr v14, v12

    mul-double/2addr v5, v14

    add-double/2addr v5, v10

    const-wide v12, 0x3ffbb67ae8584cabL    # 1.7320508075688774

    aget-wide v8, p3, v9

    mul-double/2addr v8, v12

    add-int v7, p6, v7

    add-double/2addr v10, v14

    aput-wide v10, p5, v7

    add-int v7, v4, v1

    mul-int/2addr v7, v0

    add-int v7, p6, v7

    sub-double v10, v5, v8

    aput-wide v10, p5, v7

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v4

    mul-int/2addr v7, v0

    add-int v7, p6, v7

    add-double/2addr v5, v8

    aput-wide v5, p5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    mul-int v4, v1, v0

    :goto_1
    if-ge v3, v1, :cond_3

    mul-int v7, v3, v0

    mul-int/lit8 v8, v7, 0x3

    add-int v9, v8, v0

    add-int v10, v9, v0

    add-int v11, v7, v4

    add-int v12, v11, v4

    const/4 v13, 0x2

    :goto_2
    if-ge v13, v0, :cond_2

    sub-int v14, v0, v13

    add-int v15, p4, v13

    add-int v14, p4, v14

    add-int v16, p6, v13

    add-int v17, v15, v8

    add-int/2addr v15, v10

    add-int/2addr v14, v9

    add-int/lit8 v18, v17, -0x1

    aget-wide v18, p3, v18

    aget-wide v20, p3, v17

    add-int/lit8 v17, v15, -0x1

    aget-wide v22, p3, v17

    aget-wide v24, p3, v15

    add-int/lit8 v15, v14, -0x1

    aget-wide v26, p3, v15

    aget-wide v14, p3, v14

    add-double v28, v22, v26

    mul-double v30, v28, v5

    add-double v30, v18, v30

    sub-double v32, v24, v14

    mul-double v34, v32, v5

    add-double v34, v20, v34

    sub-double v22, v22, v26

    const-wide v26, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v22, v22, v26

    add-double v24, v24, v14

    mul-double v24, v24, v26

    sub-double v14, v30, v24

    add-double v30, v30, v24

    add-double v24, v34, v22

    sub-double v34, v34, v22

    add-int/lit8 v17, v13, -0x1

    add-int v22, v17, p7

    add-int v17, v17, v2

    move-object/from16 v5, p0

    iget-object v6, v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v22, -0x1

    aget-wide v36, v6, v23

    aget-wide v22, v6, v22

    add-int/lit8 v38, v17, -0x1

    aget-wide v38, v6, v38

    aget-wide v40, v6, v17

    add-int v6, v16, v7

    add-int v17, v16, v11

    add-int v16, v16, v12

    add-int/lit8 v42, v6, -0x1

    add-double v18, v18, v28

    aput-wide v18, p5, v42

    add-double v20, v20, v32

    aput-wide v20, p5, v6

    add-int/lit8 v6, v17, -0x1

    mul-double v18, v36, v14

    mul-double v20, v22, v24

    sub-double v18, v18, v20

    aput-wide v18, p5, v6

    mul-double v36, v36, v24

    mul-double v22, v22, v14

    add-double v36, v36, v22

    aput-wide v36, p5, v17

    add-int/lit8 v6, v16, -0x1

    mul-double v14, v38, v30

    mul-double v17, v40, v34

    sub-double v14, v14, v17

    aput-wide v14, p5, v6

    mul-double v38, v38, v34

    mul-double v40, v40, v30

    add-double v38, v38, v40

    aput-wide v38, p5, v16

    add-int/lit8 v13, v13, 0x2

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    goto/16 :goto_2

    :cond_2
    move-object/from16 v5, p0

    add-int/lit8 v3, v3, 0x1

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    goto/16 :goto_1

    :cond_3
    move-object/from16 v5, p0

    return-void
.end method

.method radb4(II[DI[DII)V
    .locals 56

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    mul-int v4, v1, v0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v1, :cond_0

    mul-int v8, v6, v0

    mul-int/lit8 v9, v8, 0x4

    add-int v10, v8, v4

    add-int v11, v10, v4

    add-int v12, v11, v4

    add-int v13, v9, v0

    add-int v14, v13, v0

    add-int v15, v14, v0

    add-int v9, p4, v9

    aget-wide v16, p3, v9

    add-int v9, p4, v14

    aget-wide v18, p3, v9

    add-int v9, p4, v0

    sub-int/2addr v9, v7

    add-int/2addr v15, v9

    aget-wide v14, p3, v15

    add-int/2addr v9, v13

    aget-wide v20, p3, v9

    sub-double v22, v16, v14

    add-double v16, v16, v14

    add-double v20, v20, v20

    add-double v18, v18, v18

    add-int v7, p6, v8

    add-double v8, v16, v20

    aput-wide v8, p5, v7

    add-int v7, p6, v10

    sub-double v8, v22, v18

    aput-wide v8, p5, v7

    add-int v7, p6, v11

    sub-double v16, v16, v20

    aput-wide v16, p5, v7

    add-int v7, p6, v12

    add-double v22, v22, v18

    aput-wide v22, p5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    return-void

    :cond_1
    if-eq v0, v6, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_3

    mul-int v9, v8, v0

    add-int v10, v9, v4

    add-int v11, v10, v4

    add-int v12, v11, v4

    mul-int/lit8 v13, v9, 0x4

    add-int v14, v13, v0

    add-int v15, v14, v0

    add-int v16, v15, v0

    move v5, v6

    :goto_2
    if-ge v5, v0, :cond_2

    sub-int v18, v0, v5

    add-int/lit8 v19, v5, -0x1

    add-int v20, v19, p7

    add-int v21, v19, v2

    add-int v19, v19, v3

    move-object/from16 v6, p0

    iget-object v7, v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v20, -0x1

    aget-wide v24, v7, v24

    aget-wide v26, v7, v20

    add-int/lit8 v20, v21, -0x1

    aget-wide v28, v7, v20

    aget-wide v20, v7, v21

    add-int/lit8 v30, v19, -0x1

    aget-wide v30, v7, v30

    aget-wide v32, v7, v19

    add-int v7, p4, v5

    add-int v18, p4, v18

    add-int v19, p6, v5

    add-int v34, v7, v13

    add-int v35, v18, v14

    add-int/2addr v7, v15

    add-int v18, v18, v16

    add-int/lit8 v36, v34, -0x1

    aget-wide v36, p3, v36

    aget-wide v38, p3, v34

    add-int/lit8 v34, v35, -0x1

    aget-wide v40, p3, v34

    aget-wide v34, p3, v35

    add-int/lit8 v42, v7, -0x1

    aget-wide v42, p3, v42

    aget-wide v44, p3, v7

    add-int/lit8 v7, v18, -0x1

    aget-wide v46, p3, v7

    aget-wide v48, p3, v18

    add-double v50, v38, v48

    sub-double v38, v38, v48

    sub-double v48, v44, v34

    add-double v44, v44, v34

    sub-double v34, v36, v46

    add-double v36, v36, v46

    sub-double v46, v42, v40

    add-double v42, v42, v40

    sub-double v40, v36, v42

    sub-double v52, v38, v48

    sub-double v54, v34, v44

    add-double v34, v34, v44

    add-double v44, v50, v46

    sub-double v50, v50, v46

    add-int v7, v19, v9

    add-int v18, v19, v10

    add-int v46, v19, v11

    add-int v19, v19, v12

    add-int/lit8 v47, v7, -0x1

    add-double v36, v36, v42

    aput-wide v36, p5, v47

    add-double v38, v38, v48

    aput-wide v38, p5, v7

    add-int/lit8 v7, v18, -0x1

    mul-double v36, v24, v54

    mul-double v38, v26, v44

    sub-double v36, v36, v38

    aput-wide v36, p5, v7

    mul-double v24, v24, v44

    mul-double v26, v26, v54

    add-double v24, v24, v26

    aput-wide v24, p5, v18

    add-int/lit8 v7, v46, -0x1

    mul-double v24, v28, v40

    mul-double v26, v20, v52

    sub-double v24, v24, v26

    aput-wide v24, p5, v7

    mul-double v28, v28, v52

    mul-double v20, v20, v40

    add-double v28, v28, v20

    aput-wide v28, p5, v46

    add-int/lit8 v7, v19, -0x1

    mul-double v20, v30, v34

    mul-double v24, v32, v50

    sub-double v20, v20, v24

    aput-wide v20, p5, v7

    mul-double v30, v30, v50

    mul-double v32, v32, v34

    add-double v30, v30, v32

    aput-wide v30, p5, v19

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_2
    move-object/from16 v6, p0

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v6, p0

    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    return-void

    :cond_4
    move-object/from16 v6, p0

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    mul-int v2, v5, v0

    mul-int/lit8 v3, v2, 0x4

    add-int v7, v2, v4

    add-int v8, v7, v4

    add-int v9, v8, v4

    add-int v10, v3, v0

    add-int v11, v10, v0

    add-int v12, v11, v0

    add-int v13, p4, v0

    add-int v14, p6, v0

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    add-int/2addr v3, v13

    aget-wide v15, p3, v3

    add-int/2addr v13, v11

    aget-wide v17, p3, v13

    add-int v3, p4, v10

    aget-wide v10, p3, v3

    add-int v3, p4, v12

    aget-wide v12, p3, v3

    add-double v19, v10, v12

    sub-double/2addr v12, v10

    sub-double v10, v15, v17

    add-double v15, v15, v17

    const/4 v3, 0x1

    sub-int/2addr v14, v3

    add-int/2addr v2, v14

    add-double/2addr v15, v15

    aput-wide v15, p5, v2

    add-int/2addr v7, v14

    const-wide v15, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    sub-double v17, v10, v19

    mul-double v17, v17, v15

    aput-wide v17, p5, v7

    add-int/2addr v8, v14

    add-double/2addr v12, v12

    aput-wide v12, p5, v8

    add-int/2addr v14, v9

    const-wide v7, -0x40095f619980c433L    # -1.4142135623730951

    add-double v10, v10, v19

    mul-double/2addr v10, v7

    aput-wide v10, p5, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radb5(II[DI[DII)V
    .locals 81

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    add-int v4, v3, v0

    mul-int v5, v1, v0

    const/4 v7, 0x0

    :goto_0
    const-wide v8, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v12, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const/4 v6, 0x1

    if-ge v7, v1, :cond_0

    mul-int v17, v7, v0

    mul-int/lit8 v18, v17, 0x5

    add-int v19, v18, v0

    add-int v20, v19, v0

    add-int v21, v20, v0

    add-int v22, v21, v0

    add-int v23, v17, v5

    add-int v24, v23, v5

    add-int v25, v24, v5

    add-int v26, v25, v5

    add-int v27, p4, v0

    add-int/lit8 v27, v27, -0x1

    add-int v6, p4, v18

    aget-wide v28, p3, v6

    add-int v6, p4, v20

    aget-wide v30, p3, v6

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v32

    add-int v6, p4, v22

    aget-wide v34, p3, v6

    mul-double v34, v34, v32

    add-int v19, v27, v19

    aget-wide v18, p3, v19

    mul-double v18, v18, v32

    add-int v27, v27, v21

    aget-wide v20, p3, v27

    mul-double v20, v20, v32

    mul-double v32, v18, v14

    add-double v32, v28, v32

    mul-double v36, v20, v12

    add-double v32, v32, v36

    mul-double v12, v12, v18

    add-double v12, v28, v12

    mul-double v14, v14, v20

    add-double/2addr v12, v14

    mul-double v14, v30, v10

    mul-double v36, v34, v8

    add-double v14, v14, v36

    mul-double v30, v30, v8

    mul-double v34, v34, v10

    sub-double v30, v30, v34

    add-int v6, p6, v17

    add-double v28, v28, v18

    add-double v28, v28, v20

    aput-wide v28, p5, v6

    add-int v6, p6, v23

    sub-double v8, v32, v14

    aput-wide v8, p5, v6

    add-int v6, p6, v24

    sub-double v8, v12, v30

    aput-wide v8, p5, v6

    add-int v6, p6, v25

    add-double v12, v12, v30

    aput-wide v12, p5, v6

    add-int v6, p6, v26

    add-double v32, v32, v14

    aput-wide v32, p5, v6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_0
    if-ne v0, v6, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    mul-int v7, v6, v0

    mul-int/lit8 v16, v7, 0x5

    add-int v17, v16, v0

    add-int v18, v17, v0

    add-int v19, v18, v0

    add-int v20, v19, v0

    add-int v21, v7, v5

    add-int v22, v21, v5

    add-int v23, v22, v5

    add-int v24, v23, v5

    const/16 v25, 0x2

    move/from16 v8, v25

    :goto_2
    if-ge v8, v0, :cond_2

    sub-int v9, v0, v8

    add-int/lit8 v25, v8, -0x1

    add-int v28, v25, p7

    add-int v29, v25, v2

    add-int v30, v25, v3

    add-int v25, v25, v4

    move-object/from16 v10, p0

    iget-object v11, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v33, v28, -0x1

    aget-wide v33, v11, v33

    aget-wide v35, v11, v28

    add-int/lit8 v28, v29, -0x1

    aget-wide v37, v11, v28

    aget-wide v28, v11, v29

    add-int/lit8 v39, v30, -0x1

    aget-wide v39, v11, v39

    aget-wide v41, v11, v30

    add-int/lit8 v30, v25, -0x1

    aget-wide v43, v11, v30

    aget-wide v45, v11, v25

    add-int v11, p4, v8

    add-int v9, p4, v9

    add-int v25, p6, v8

    add-int v30, v11, v16

    add-int v47, v9, v17

    add-int v48, v11, v18

    add-int v9, v9, v19

    add-int v11, v11, v20

    add-int/lit8 v49, v30, -0x1

    aget-wide v49, p3, v49

    aget-wide v51, p3, v30

    add-int/lit8 v30, v47, -0x1

    aget-wide v53, p3, v30

    aget-wide v55, p3, v47

    add-int/lit8 v30, v48, -0x1

    aget-wide v57, p3, v30

    aget-wide v47, p3, v48

    add-int/lit8 v30, v9, -0x1

    aget-wide v59, p3, v30

    aget-wide v61, p3, v9

    add-int/lit8 v9, v11, -0x1

    aget-wide v63, p3, v9

    aget-wide v65, p3, v11

    add-double v67, v47, v55

    sub-double v47, v47, v55

    add-double v55, v65, v61

    sub-double v65, v65, v61

    sub-double v61, v57, v53

    add-double v57, v57, v53

    sub-double v53, v63, v59

    add-double v63, v63, v59

    mul-double v59, v57, v14

    add-double v59, v49, v59

    mul-double v69, v63, v12

    add-double v59, v59, v69

    mul-double v69, v47, v14

    add-double v69, v51, v69

    mul-double v71, v65, v12

    add-double v69, v69, v71

    mul-double v71, v57, v12

    add-double v71, v49, v71

    mul-double v73, v63, v14

    add-double v71, v71, v73

    mul-double v73, v47, v12

    add-double v73, v51, v73

    mul-double v75, v65, v14

    add-double v73, v73, v75

    const-wide v30, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v75, v61, v30

    const-wide v26, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v77, v53, v26

    add-double v75, v75, v77

    mul-double v77, v67, v30

    mul-double v79, v55, v26

    add-double v77, v77, v79

    mul-double v61, v61, v26

    mul-double v53, v53, v30

    sub-double v61, v61, v53

    mul-double v67, v67, v26

    mul-double v55, v55, v30

    sub-double v67, v67, v55

    sub-double v53, v71, v67

    add-double v71, v71, v67

    add-double v55, v73, v61

    sub-double v73, v73, v61

    add-double v61, v59, v77

    sub-double v59, v59, v77

    sub-double v67, v69, v75

    add-double v69, v69, v75

    add-int v9, v25, v7

    add-int v11, v25, v21

    add-int v32, v25, v22

    add-int v75, v25, v23

    add-int v25, v25, v24

    add-int/lit8 v76, v9, -0x1

    add-double v49, v49, v57

    add-double v49, v49, v63

    aput-wide v49, p5, v76

    add-double v51, v51, v47

    add-double v51, v51, v65

    aput-wide v51, p5, v9

    add-int/lit8 v9, v11, -0x1

    mul-double v47, v33, v59

    mul-double v49, v35, v69

    sub-double v47, v47, v49

    aput-wide v47, p5, v9

    mul-double v33, v33, v69

    mul-double v35, v35, v59

    add-double v33, v33, v35

    aput-wide v33, p5, v11

    add-int/lit8 v9, v32, -0x1

    mul-double v33, v37, v53

    mul-double v35, v28, v55

    sub-double v33, v33, v35

    aput-wide v33, p5, v9

    mul-double v37, v37, v55

    mul-double v28, v28, v53

    add-double v37, v37, v28

    aput-wide v37, p5, v32

    add-int/lit8 v9, v75, -0x1

    mul-double v28, v39, v71

    mul-double v32, v41, v73

    sub-double v28, v28, v32

    aput-wide v28, p5, v9

    mul-double v39, v39, v73

    mul-double v41, v41, v71

    add-double v39, v39, v41

    aput-wide v39, p5, v75

    add-int/lit8 v9, v25, -0x1

    mul-double v28, v43, v61

    mul-double v32, v45, v67

    sub-double v28, v28, v32

    aput-wide v28, p5, v9

    mul-double v43, v43, v67

    mul-double v45, v45, v61

    add-double v43, v43, v45

    aput-wide v43, p5, v25

    add-int/lit8 v8, v8, 0x2

    move-wide/from16 v10, v30

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v30, v10

    const-wide v26, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    move-object/from16 v10, p0

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v26

    move-wide/from16 v10, v30

    goto/16 :goto_1

    :cond_3
    move-object/from16 v10, p0

    return-void
.end method

.method radbg(IIII[DI[DII)V
    .locals 39

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    int-to-double v9, v2

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    add-int/lit8 v13, v1, -0x1

    const/4 v14, 0x2

    div-int/2addr v13, v14

    add-int/lit8 v15, v2, 0x1

    div-int/2addr v15, v14

    mul-int v16, v2, v1

    const/16 v17, 0x0

    if-lt v1, v3, :cond_1

    move/from16 v14, v17

    :goto_0
    if-ge v14, v3, :cond_3

    mul-int v18, v14, v1

    mul-int v19, v14, v16

    move/from16 v0, v17

    :goto_1
    if-ge v0, v1, :cond_0

    add-int v20, v8, v0

    add-int v20, v20, v18

    add-int v21, v6, v0

    add-int v21, v21, v19

    aget-wide v21, v5, v21

    aput-wide v21, v7, v20

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    move/from16 v0, v17

    :goto_2
    if-ge v0, v1, :cond_3

    add-int v14, v8, v0

    add-int v18, v6, v0

    move-wide/from16 v19, v11

    move/from16 v11, v17

    :goto_3
    if-ge v11, v3, :cond_2

    mul-int v12, v11, v1

    add-int/2addr v12, v14

    mul-int v21, v11, v16

    add-int v21, v18, v21

    aget-wide v21, v5, v21

    aput-wide v21, v7, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v11, v19

    goto :goto_2

    :cond_3
    move-wide/from16 v19, v11

    add-int v0, v6, v1

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v12, v11

    :goto_4
    if-ge v12, v15, :cond_5

    sub-int v14, v2, v12

    mul-int/lit8 v16, v12, 0x2

    mul-int v18, v12, v3

    mul-int v18, v18, v1

    mul-int/2addr v14, v3

    mul-int/2addr v14, v1

    mul-int v16, v16, v1

    move/from16 v11, v17

    :goto_5
    if-ge v11, v3, :cond_4

    mul-int v22, v11, v1

    mul-int v23, v22, v2

    add-int v24, v0, v16

    add-int v24, v24, v23

    sub-int v24, v24, v1

    add-int v25, v6, v16

    add-int v25, v25, v23

    aget-wide v23, v5, v24

    aget-wide v25, v5, v25

    add-int v22, v8, v22

    add-int v27, v22, v18

    add-double v23, v23, v23

    aput-wide v23, v7, v27

    add-int v22, v22, v14

    add-double v25, v25, v25

    aput-wide v25, v7, v22

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    if-eq v1, v11, :cond_b

    if-lt v13, v3, :cond_8

    const/4 v11, 0x1

    :goto_6
    if-ge v11, v15, :cond_b

    sub-int v0, v2, v11

    mul-int v12, v11, v3

    mul-int/2addr v12, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/lit8 v14, v11, 0x2

    mul-int/2addr v14, v1

    move/from16 v16, v13

    move/from16 v13, v17

    :goto_7
    if-ge v13, v3, :cond_7

    mul-int v18, v13, v1

    add-int v22, v18, v12

    add-int v18, v18, v0

    mul-int v23, v13, v2

    mul-int v23, v23, v1

    add-int v23, v23, v14

    move/from16 v24, v0

    const/4 v0, 0x2

    :goto_8
    if-ge v0, v1, :cond_6

    sub-int v25, v1, v0

    add-int v26, v8, v0

    add-int v25, v6, v25

    add-int v27, v6, v0

    add-int v28, v26, v22

    add-int v26, v26, v18

    add-int v27, v27, v23

    add-int v25, v25, v23

    sub-int v25, v25, v1

    add-int/lit8 v29, v27, -0x1

    aget-wide v29, v5, v29

    aget-wide v31, v5, v27

    add-int/lit8 v27, v25, -0x1

    aget-wide v33, v5, v27

    aget-wide v35, v5, v25

    add-int/lit8 v25, v28, -0x1

    add-double v37, v29, v33

    aput-wide v37, v7, v25

    add-int/lit8 v25, v26, -0x1

    sub-double v29, v29, v33

    aput-wide v29, v7, v25

    sub-double v29, v31, v35

    aput-wide v29, v7, v28

    add-double v31, v31, v35

    aput-wide v31, v7, v26

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v24

    goto :goto_7

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v16

    goto :goto_6

    :cond_8
    move/from16 v16, v13

    const/4 v11, 0x1

    :goto_9
    if-ge v11, v15, :cond_c

    sub-int v0, v2, v11

    mul-int v12, v11, v3

    mul-int/2addr v12, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/lit8 v13, v11, 0x2

    mul-int/2addr v13, v1

    const/4 v14, 0x2

    :goto_a
    if-ge v14, v1, :cond_a

    sub-int v18, v1, v14

    add-int v22, v8, v14

    add-int v18, v6, v18

    add-int v23, v6, v14

    move/from16 v8, v17

    :goto_b
    if-ge v8, v3, :cond_9

    mul-int v24, v8, v1

    add-int v25, v24, v12

    add-int v24, v24, v0

    mul-int v26, v8, v2

    mul-int v26, v26, v1

    add-int v26, v26, v13

    add-int v25, v22, v25

    add-int v24, v22, v24

    add-int v27, v23, v26

    add-int v26, v18, v26

    sub-int v26, v26, v1

    add-int/lit8 v28, v27, -0x1

    aget-wide v28, v5, v28

    aget-wide v30, v5, v27

    add-int/lit8 v27, v26, -0x1

    aget-wide v32, v5, v27

    aget-wide v26, v5, v26

    add-int/lit8 v34, v25, -0x1

    add-double v35, v28, v32

    aput-wide v35, v7, v34

    add-int/lit8 v34, v24, -0x1

    sub-double v28, v28, v32

    aput-wide v28, v7, v34

    sub-double v28, v30, v26

    aput-wide v28, v7, v25

    add-double v30, v30, v26

    aput-wide v30, v7, v24

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v14, v14, 0x2

    move/from16 v8, p8

    goto :goto_a

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, p8

    goto :goto_9

    :cond_b
    move/from16 v16, v13

    :cond_c
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v4

    move-wide/from16 v22, v13

    move-wide v12, v11

    const/4 v11, 0x1

    :goto_c
    if-ge v11, v15, :cond_10

    sub-int v8, v2, v11

    mul-double v24, v9, v12

    mul-double v26, v19, v22

    sub-double v24, v24, v26

    mul-double v22, v22, v9

    mul-double v12, v12, v19

    add-double v22, v22, v12

    mul-int v12, v11, v4

    mul-int/2addr v8, v4

    move/from16 v13, v17

    :goto_d
    if-ge v13, v4, :cond_d

    add-int v14, v6, v13

    move-wide/from16 v26, v9

    move/from16 v9, p8

    add-int v10, v9, v13

    add-int v18, v14, v12

    aget-wide v28, v7, v10

    add-int v30, v10, v4

    aget-wide v30, v7, v30

    mul-double v30, v30, v24

    add-double v28, v28, v30

    aput-wide v28, v5, v18

    add-int/2addr v14, v8

    add-int/2addr v10, v0

    aget-wide v28, v7, v10

    mul-double v28, v28, v22

    aput-wide v28, v5, v14

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v9, v26

    goto :goto_d

    :cond_d
    move-wide/from16 v26, v9

    move/from16 v9, p8

    move-wide/from16 v28, v22

    move-wide/from16 v13, v24

    const/4 v10, 0x2

    :goto_e
    if-ge v10, v15, :cond_f

    sub-int v18, v2, v10

    mul-double v30, v24, v13

    mul-double v32, v22, v28

    sub-double v30, v30, v32

    mul-double v28, v28, v24

    mul-double v13, v13, v22

    add-double v28, v28, v13

    mul-int v13, v10, v4

    mul-int v18, v18, v4

    move/from16 v14, v17

    :goto_f
    if-ge v14, v4, :cond_e

    add-int v32, v6, v14

    add-int v33, v9, v14

    add-int v34, v32, v12

    aget-wide v35, v5, v34

    add-int v37, v33, v13

    aget-wide v37, v7, v37

    mul-double v37, v37, v30

    add-double v35, v35, v37

    aput-wide v35, v5, v34

    add-int v32, v32, v8

    aget-wide v34, v5, v32

    add-int v33, v33, v18

    aget-wide v36, v7, v33

    mul-double v36, v36, v28

    add-double v34, v34, v36

    aput-wide v34, v5, v32

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v13, v30

    goto :goto_e

    :cond_f
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v12, v24

    move-wide/from16 v9, v26

    goto/16 :goto_c

    :cond_10
    move/from16 v9, p8

    const/4 v11, 0x1

    :goto_10
    if-ge v11, v15, :cond_12

    mul-int v0, v11, v4

    move/from16 v8, v17

    :goto_11
    if-ge v8, v4, :cond_11

    add-int v10, v9, v8

    aget-wide v12, v7, v10

    add-int v14, v10, v0

    aget-wide v18, v7, v14

    add-double v12, v12, v18

    aput-wide v12, v7, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_12
    const/4 v11, 0x1

    :goto_12
    if-ge v11, v15, :cond_14

    sub-int v0, v2, v11

    mul-int v8, v11, v3

    mul-int/2addr v8, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    move/from16 v10, v17

    :goto_13
    if-ge v10, v3, :cond_13

    mul-int v12, v10, v1

    add-int v13, v9, v12

    add-int/2addr v12, v6

    add-int v14, v12, v8

    add-int/2addr v12, v0

    aget-wide v18, v5, v14

    aget-wide v22, v5, v12

    add-int v12, v13, v8

    sub-double v24, v18, v22

    aput-wide v24, v7, v12

    add-int/2addr v13, v0

    add-double v18, v18, v22

    aput-wide v18, v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_14
    const/4 v11, 0x1

    if-ne v1, v11, :cond_15

    return-void

    :cond_15
    move/from16 v13, v16

    if-lt v13, v3, :cond_18

    move v0, v11

    :goto_14
    if-ge v0, v15, :cond_1b

    sub-int v8, v2, v0

    mul-int v10, v0, v3

    mul-int/2addr v10, v1

    mul-int/2addr v8, v3

    mul-int/2addr v8, v1

    move/from16 v12, v17

    :goto_15
    if-ge v12, v3, :cond_17

    mul-int v14, v12, v1

    const/4 v11, 0x2

    :goto_16
    if-ge v11, v1, :cond_16

    add-int v16, v9, v11

    add-int v18, v6, v11

    add-int v16, v16, v14

    add-int v19, v16, v10

    add-int v16, v16, v8

    add-int v18, v18, v14

    add-int v20, v18, v10

    add-int v18, v18, v8

    add-int/lit8 v22, v20, -0x1

    aget-wide v22, v5, v22

    aget-wide v24, v5, v20

    add-int/lit8 v20, v18, -0x1

    aget-wide v26, v5, v20

    aget-wide v28, v5, v18

    add-int/lit8 v18, v19, -0x1

    sub-double v30, v22, v28

    aput-wide v30, v7, v18

    add-int/lit8 v18, v16, -0x1

    add-double v22, v22, v28

    aput-wide v22, v7, v18

    add-double v22, v24, v26

    aput-wide v22, v7, v19

    sub-double v24, v24, v26

    aput-wide v24, v7, v16

    add-int/lit8 v11, v11, 0x2

    goto :goto_16

    :cond_16
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    goto :goto_15

    :cond_17
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    goto :goto_14

    :cond_18
    const/4 v11, 0x1

    :goto_17
    if-ge v11, v15, :cond_1b

    sub-int v0, v2, v11

    mul-int v8, v11, v3

    mul-int/2addr v8, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    const/4 v10, 0x2

    :goto_18
    if-ge v10, v1, :cond_1a

    add-int v12, v9, v10

    add-int v14, v6, v10

    move/from16 v16, v15

    move/from16 v15, v17

    :goto_19
    if-ge v15, v3, :cond_19

    mul-int v18, v15, v1

    add-int v19, v12, v18

    add-int v20, v19, v8

    add-int v19, v19, v0

    add-int v18, v14, v18

    add-int v22, v18, v8

    add-int v18, v18, v0

    add-int/lit8 v23, v22, -0x1

    aget-wide v23, v5, v23

    aget-wide v25, v5, v22

    add-int/lit8 v22, v18, -0x1

    aget-wide v27, v5, v22

    aget-wide v29, v5, v18

    add-int/lit8 v18, v20, -0x1

    sub-double v31, v23, v29

    aput-wide v31, v7, v18

    add-int/lit8 v18, v19, -0x1

    add-double v23, v23, v29

    aput-wide v23, v7, v18

    add-double v22, v25, v27

    aput-wide v22, v7, v20

    sub-double v25, v25, v27

    aput-wide v25, v7, v19

    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :cond_19
    add-int/lit8 v10, v10, 0x2

    move/from16 v15, v16

    goto :goto_18

    :cond_1a
    move/from16 v16, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_1b
    invoke-static {v7, v9, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x1

    :goto_1a
    if-ge v11, v2, :cond_1d

    mul-int v0, v11, v3

    mul-int/2addr v0, v1

    move/from16 v4, v17

    :goto_1b
    if-ge v4, v3, :cond_1c

    mul-int v8, v4, v1

    add-int/2addr v8, v0

    add-int v10, v6, v8

    add-int/2addr v8, v9

    aget-wide v14, v7, v8

    aput-wide v14, v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_1c
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    :cond_1d
    if-gt v13, v3, :cond_21

    neg-int v0, v1

    const/4 v11, 0x1

    :goto_1c
    if-ge v11, v2, :cond_20

    add-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    mul-int v8, v11, v3

    mul-int/2addr v8, v1

    const/4 v10, 0x2

    :goto_1d
    if-ge v10, v1, :cond_1f

    const/4 v12, 0x2

    add-int/2addr v4, v12

    add-int v12, v4, p9

    move-object/from16 v13, p0

    iget-object v14, v13, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v15, v12, -0x1

    aget-wide v15, v14, v15

    aget-wide v18, v14, v12

    add-int v12, v6, v10

    add-int v14, v9, v10

    move/from16 p4, v0

    move/from16 v0, v17

    :goto_1e
    if-ge v0, v3, :cond_1e

    mul-int v20, v0, v1

    add-int v20, v20, v8

    add-int v21, v12, v20

    add-int v20, v14, v20

    add-int/lit8 v22, v20, -0x1

    aget-wide v22, v7, v22

    aget-wide v24, v7, v20

    add-int/lit8 v20, v21, -0x1

    mul-double v26, v15, v22

    mul-double v28, v18, v24

    sub-double v26, v26, v28

    aput-wide v26, v5, v20

    mul-double v24, v24, v15

    mul-double v22, v22, v18

    add-double v24, v24, v22

    aput-wide v24, v5, v21

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_1e
    add-int/lit8 v10, v10, 0x2

    move/from16 v0, p4

    goto :goto_1d

    :cond_1f
    move-object/from16 v13, p0

    move/from16 p4, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    :cond_20
    move-object/from16 v13, p0

    goto :goto_22

    :cond_21
    move-object/from16 v13, p0

    neg-int v0, v1

    const/4 v11, 0x1

    :goto_1f
    if-ge v11, v2, :cond_24

    add-int/2addr v0, v1

    mul-int v4, v11, v3

    mul-int/2addr v4, v1

    move/from16 v8, v17

    :goto_20
    if-ge v8, v3, :cond_23

    add-int/lit8 v10, v0, -0x1

    mul-int v12, v8, v1

    add-int/2addr v12, v4

    const/4 v14, 0x2

    :goto_21
    if-ge v14, v1, :cond_22

    const/4 v15, 0x2

    add-int/2addr v10, v15

    add-int v16, v10, p9

    iget-object v15, v13, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v18, v16, -0x1

    aget-wide v18, v15, v18

    aget-wide v20, v15, v16

    add-int v15, v6, v14

    add-int v16, v9, v14

    add-int/2addr v15, v12

    add-int v16, v16, v12

    add-int/lit8 v22, v16, -0x1

    aget-wide v22, v7, v22

    aget-wide v24, v7, v16

    add-int/lit8 v16, v15, -0x1

    mul-double v26, v18, v22

    mul-double v28, v20, v24

    sub-double v26, v26, v28

    aput-wide v26, v5, v16

    mul-double v18, v18, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    aput-wide v18, v5, v15

    add-int/lit8 v14, v14, 0x2

    goto :goto_21

    :cond_22
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_24
    :goto_22
    return-void
.end method

.method radf2(II[DI[DII)V
    .locals 31

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v1, v0

    mul-int/lit8 v3, v0, 0x2

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v1, :cond_0

    mul-int v7, v5, v3

    add-int v7, p6, v7

    add-int v8, v7, v3

    sub-int/2addr v8, v6

    mul-int v6, v5, v0

    add-int v6, p4, v6

    add-int v9, v6, v2

    aget-wide v10, p3, v6

    aget-wide v12, p3, v9

    add-double v14, v10, v12

    aput-wide v14, p5, v7

    sub-double/2addr v10, v12

    aput-wide v10, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_1

    return-void

    :cond_1
    if-eq v0, v5, :cond_5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_3

    mul-int v3, v7, v0

    mul-int/lit8 v8, v3, 0x2

    add-int v9, v8, v0

    add-int v10, v3, v2

    move v11, v5

    :goto_2
    if-ge v11, v0, :cond_2

    sub-int v12, v0, v11

    add-int/lit8 v13, v11, -0x1

    add-int v13, v13, p7

    add-int v14, p6, v11

    add-int/2addr v14, v8

    add-int v12, p6, v12

    add-int/2addr v12, v9

    add-int v15, p4, v11

    add-int v16, v15, v3

    add-int/2addr v15, v10

    add-int/lit8 v17, v16, -0x1

    aget-wide v17, p3, v17

    aget-wide v19, p3, v16

    add-int/lit8 v16, v15, -0x1

    aget-wide v21, p3, v16

    aget-wide v15, p3, v15

    move-object/from16 v4, p0

    iget-object v5, v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v13, -0x1

    aget-wide v23, v5, v23

    aget-wide v25, v5, v13

    mul-double v27, v23, v21

    mul-double v29, v25, v15

    add-double v27, v27, v29

    mul-double v23, v23, v15

    mul-double v25, v25, v21

    sub-double v23, v23, v25

    add-double v15, v19, v23

    aput-wide v15, p5, v14

    sub-int/2addr v14, v6

    add-double v15, v17, v27

    aput-wide v15, p5, v14

    sub-double v23, v23, v19

    aput-wide v23, p5, v12

    sub-int/2addr v12, v6

    sub-double v17, v17, v27

    aput-wide v17, p5, v12

    add-int/lit8 v11, v11, 0x2

    const/4 v5, 0x2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p0

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    move-object/from16 v4, p0

    rem-int/lit8 v5, v0, 0x2

    if-ne v5, v6, :cond_4

    return-void

    :cond_4
    const/4 v5, 0x2

    goto :goto_3

    :cond_5
    move-object/from16 v4, p0

    :goto_3
    mul-int/2addr v3, v5

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_6

    mul-int v7, v5, v0

    add-int v8, p6, v3

    add-int/2addr v8, v0

    add-int v9, p4, v0

    sub-int/2addr v9, v6

    add-int/2addr v9, v7

    add-int v7, v9, v2

    aget-wide v10, p3, v7

    neg-double v10, v10

    aput-wide v10, p5, v8

    sub-int/2addr v8, v6

    aget-wide v9, p3, v9

    aput-wide v9, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method radf3(II[DI[DII)V
    .locals 44

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    mul-int v3, v1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const-wide v8, 0x3febb67ae8584cabL    # 0.8660254037844387

    const/4 v10, 0x1

    if-ge v5, v1, :cond_0

    mul-int v11, v5, v0

    mul-int/lit8 v12, v3, 0x2

    mul-int/lit8 v13, v5, 0x3

    add-int/2addr v13, v10

    mul-int/2addr v13, v0

    add-int v14, p4, v11

    add-int v15, v14, v3

    add-int/2addr v12, v14

    aget-wide v16, p3, v14

    aget-wide v14, p3, v15

    aget-wide v18, p3, v12

    add-double v20, v14, v18

    mul-int/lit8 v11, v11, 0x3

    add-int v11, p6, v11

    add-double v22, v16, v20

    aput-wide v22, p5, v11

    add-int v11, p6, v13

    add-int/2addr v11, v0

    sub-double v18, v18, v14

    mul-double v18, v18, v8

    aput-wide v18, p5, v11

    add-int v8, p6, v0

    sub-int/2addr v8, v10

    add-int/2addr v8, v13

    mul-double v20, v20, v6

    add-double v16, v16, v20

    aput-wide v16, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v10, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ge v4, v1, :cond_3

    mul-int v5, v4, v0

    mul-int/lit8 v10, v5, 0x3

    add-int v11, v5, v3

    add-int v12, v11, v3

    add-int v13, v10, v0

    add-int v14, v13, v0

    const/4 v15, 0x2

    :goto_2
    if-ge v15, v0, :cond_2

    sub-int v16, v0, v15

    add-int/lit8 v17, v15, -0x1

    add-int v18, v17, p7

    add-int v17, v17, v2

    move-object/from16 v8, p0

    iget-object v9, v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v21, v18, -0x1

    aget-wide v21, v9, v21

    aget-wide v23, v9, v18

    add-int/lit8 v18, v17, -0x1

    aget-wide v25, v9, v18

    aget-wide v17, v9, v17

    add-int v9, p4, v15

    add-int v27, p6, v15

    add-int v16, p6, v16

    add-int v28, v9, v5

    add-int v29, v9, v11

    add-int/2addr v9, v12

    add-int/lit8 v30, v28, -0x1

    aget-wide v30, p3, v30

    aget-wide v32, p3, v28

    add-int/lit8 v28, v29, -0x1

    aget-wide v34, p3, v28

    aget-wide v28, p3, v29

    add-int/lit8 v36, v9, -0x1

    aget-wide v36, p3, v36

    aget-wide v38, p3, v9

    mul-double v40, v21, v34

    mul-double v42, v23, v28

    add-double v40, v40, v42

    mul-double v21, v21, v28

    mul-double v23, v23, v34

    sub-double v21, v21, v23

    mul-double v23, v25, v36

    mul-double v28, v17, v38

    add-double v23, v23, v28

    mul-double v25, v25, v38

    mul-double v17, v17, v36

    sub-double v25, v25, v17

    add-double v17, v40, v23

    add-double v28, v21, v25

    mul-double v34, v17, v6

    add-double v34, v30, v34

    mul-double v36, v28, v6

    add-double v36, v32, v36

    sub-double v21, v21, v25

    const-wide v19, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v21, v21, v19

    sub-double v23, v23, v40

    mul-double v23, v23, v19

    add-int v9, v27, v10

    add-int v16, v16, v13

    add-int v27, v27, v14

    add-int/lit8 v25, v9, -0x1

    add-double v30, v30, v17

    aput-wide v30, p5, v25

    add-double v32, v32, v28

    aput-wide v32, p5, v9

    add-int/lit8 v9, v16, -0x1

    sub-double v17, v34, v21

    aput-wide v17, p5, v9

    sub-double v17, v23, v36

    aput-wide v17, p5, v16

    add-int/lit8 v9, v27, -0x1

    add-double v34, v34, v21

    aput-wide v34, p5, v9

    add-double v36, v36, v23

    aput-wide v36, p5, v27

    add-int/lit8 v15, v15, 0x2

    move-wide/from16 v8, v19

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v19, v8

    move-object/from16 v8, p0

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v8, v19

    goto/16 :goto_1

    :cond_3
    move-object/from16 v8, p0

    return-void
.end method

.method radf4(II[DI[DII)V
    .locals 54

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    mul-int v4, v1, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    mul-int v7, v6, v0

    mul-int/lit8 v8, v7, 0x4

    add-int v9, v7, v4

    add-int v10, v9, v4

    add-int v11, v10, v4

    add-int v12, v8, v0

    add-int v7, p4, v7

    aget-wide v13, p3, v7

    add-int v7, p4, v9

    aget-wide v15, p3, v7

    add-int v7, p4, v10

    aget-wide v9, p3, v7

    add-int v7, p4, v11

    aget-wide v17, p3, v7

    add-double v19, v15, v17

    add-double v21, v13, v9

    add-int v7, p6, v8

    add-int v8, p6, v12

    add-int/2addr v8, v0

    add-double v11, v19, v21

    aput-wide v11, p5, v7

    add-int/lit8 v7, v8, -0x1

    add-int v11, v7, v0

    add-int/2addr v11, v0

    sub-double v21, v21, v19

    aput-wide v21, p5, v11

    sub-double/2addr v13, v9

    aput-wide v13, p5, v7

    sub-double v17, v17, v15

    aput-wide v17, p5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    return-void

    :cond_1
    if-eq v0, v6, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_3

    mul-int v9, v8, v0

    add-int v10, v9, v4

    add-int v11, v10, v4

    add-int v12, v11, v4

    mul-int/lit8 v13, v9, 0x4

    add-int v14, v13, v0

    add-int v15, v14, v0

    add-int v16, v15, v0

    move v5, v6

    :goto_2
    if-ge v5, v0, :cond_2

    sub-int v18, v0, v5

    add-int/lit8 v19, v5, -0x1

    add-int v20, v19, p7

    add-int v21, v19, v2

    add-int v19, v19, v3

    move-object/from16 v6, p0

    iget-object v7, v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v23, v20, -0x1

    aget-wide v23, v7, v23

    aget-wide v25, v7, v20

    add-int/lit8 v20, v21, -0x1

    aget-wide v27, v7, v20

    aget-wide v20, v7, v21

    add-int/lit8 v29, v19, -0x1

    aget-wide v29, v7, v29

    aget-wide v31, v7, v19

    add-int v7, p4, v5

    add-int v19, p6, v5

    add-int v18, p6, v18

    add-int v33, v7, v9

    add-int v34, v7, v10

    add-int v35, v7, v11

    add-int/2addr v7, v12

    add-int/lit8 v36, v33, -0x1

    aget-wide v36, p3, v36

    aget-wide v38, p3, v33

    add-int/lit8 v33, v34, -0x1

    aget-wide v40, p3, v33

    aget-wide v33, p3, v34

    add-int/lit8 v42, v35, -0x1

    aget-wide v42, p3, v42

    aget-wide v44, p3, v35

    add-int/lit8 v35, v7, -0x1

    aget-wide v46, p3, v35

    aget-wide v48, p3, v7

    mul-double v50, v23, v40

    mul-double v52, v25, v33

    add-double v50, v50, v52

    mul-double v23, v23, v33

    mul-double v25, v25, v40

    sub-double v23, v23, v25

    mul-double v25, v27, v42

    mul-double v33, v20, v44

    add-double v25, v25, v33

    mul-double v27, v27, v44

    mul-double v20, v20, v42

    sub-double v27, v27, v20

    mul-double v20, v29, v46

    mul-double v33, v31, v48

    add-double v20, v20, v33

    mul-double v29, v29, v48

    mul-double v31, v31, v46

    sub-double v29, v29, v31

    add-double v31, v50, v20

    sub-double v20, v20, v50

    add-double v33, v23, v29

    sub-double v23, v23, v29

    add-double v29, v38, v27

    sub-double v38, v38, v27

    add-double v27, v36, v25

    sub-double v36, v36, v25

    add-int v7, v19, v13

    add-int v25, v18, v14

    add-int v19, v19, v15

    add-int v18, v18, v16

    add-int/lit8 v26, v7, -0x1

    add-double v40, v31, v27

    aput-wide v40, p5, v26

    add-int/lit8 v26, v18, -0x1

    sub-double v27, v27, v31

    aput-wide v27, p5, v26

    add-double v26, v33, v29

    aput-wide v26, p5, v7

    sub-double v33, v33, v29

    aput-wide v33, p5, v18

    add-int/lit8 v7, v19, -0x1

    add-double v26, v23, v36

    aput-wide v26, p5, v7

    add-int/lit8 v7, v25, -0x1

    sub-double v36, v36, v23

    aput-wide v36, p5, v7

    add-double v23, v20, v38

    aput-wide v23, p5, v19

    sub-double v20, v20, v38

    aput-wide v20, p5, v25

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_2
    move-object/from16 v6, p0

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_3
    move-object/from16 v6, p0

    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    return-void

    :cond_4
    move-object/from16 v6, p0

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    mul-int v2, v5, v0

    mul-int/lit8 v3, v2, 0x4

    add-int v7, v2, v4

    add-int v8, v7, v4

    add-int v9, v8, v4

    add-int v10, v3, v0

    add-int v11, v10, v0

    add-int v12, v11, v0

    add-int v13, p4, v0

    add-int v14, p6, v0

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    add-int/2addr v2, v13

    aget-wide v15, p3, v2

    add-int/2addr v7, v13

    aget-wide v17, p3, v7

    add-int/2addr v8, v13

    aget-wide v7, p3, v8

    add-int/2addr v13, v9

    aget-wide v19, p3, v13

    const-wide v21, -0x40195f619980c433L    # -0.7071067811865476

    add-double v23, v17, v19

    mul-double v23, v23, v21

    const-wide v21, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    sub-double v17, v17, v19

    mul-double v17, v17, v21

    const/4 v2, 0x1

    sub-int/2addr v14, v2

    add-int/2addr v3, v14

    add-double v19, v17, v15

    aput-wide v19, p5, v3

    add-int/2addr v14, v11

    sub-double v15, v15, v17

    aput-wide v15, p5, v14

    add-int v3, p6, v10

    sub-double v9, v23, v7

    aput-wide v9, p5, v3

    add-int v3, p6, v12

    add-double v23, v23, v7

    aput-wide v23, p5, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method radf5(II[DI[DII)V
    .locals 70

    move/from16 v0, p1

    move/from16 v1, p2

    add-int v2, p7, v0

    add-int v3, v2, v0

    add-int v4, v3, v0

    mul-int v5, v1, v0

    const/4 v7, 0x0

    :goto_0
    const-wide v8, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    const-wide v10, 0x3fee6f0e134454ffL    # 0.9510565162951535

    const-wide v12, -0x40161c8864680b59L    # -0.8090169943749473

    const-wide v14, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    const/4 v6, 0x1

    if-ge v7, v1, :cond_0

    mul-int v17, v7, v0

    mul-int/lit8 v18, v17, 0x5

    add-int v19, v18, v0

    add-int v20, v19, v0

    add-int v21, v20, v0

    add-int v22, v21, v0

    add-int v23, v17, v5

    add-int v24, v23, v5

    add-int v25, v24, v5

    add-int v26, v25, v5

    add-int v27, p6, v0

    add-int/lit8 v27, v27, -0x1

    add-int v6, p4, v17

    aget-wide v28, p3, v6

    add-int v6, p4, v23

    aget-wide v30, p3, v6

    add-int v6, p4, v24

    aget-wide v23, p3, v6

    add-int v6, p4, v25

    aget-wide v32, p3, v6

    add-int v6, p4, v26

    aget-wide v25, p3, v6

    add-double v34, v25, v30

    sub-double v25, v25, v30

    add-double v30, v32, v23

    sub-double v32, v32, v23

    add-int v6, p6, v18

    add-double v17, v28, v34

    add-double v17, v17, v30

    aput-wide v17, p5, v6

    add-int v19, v27, v19

    mul-double v17, v34, v14

    add-double v17, v28, v17

    mul-double v23, v30, v12

    add-double v17, v17, v23

    aput-wide v17, p5, v19

    add-int v6, p6, v20

    mul-double v17, v25, v10

    mul-double v19, v32, v8

    add-double v17, v17, v19

    aput-wide v17, p5, v6

    add-int v27, v27, v21

    mul-double v34, v34, v12

    add-double v28, v28, v34

    mul-double v30, v30, v14

    add-double v28, v28, v30

    aput-wide v28, p5, v27

    add-int v6, p6, v22

    mul-double v25, v25, v8

    mul-double v32, v32, v10

    sub-double v25, v25, v32

    aput-wide v25, p5, v6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_0
    if-ne v0, v6, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    mul-int v7, v6, v0

    mul-int/lit8 v16, v7, 0x5

    add-int v17, v16, v0

    add-int v18, v17, v0

    add-int v19, v18, v0

    add-int v20, v19, v0

    add-int v21, v7, v5

    add-int v22, v21, v5

    add-int v23, v22, v5

    add-int v24, v23, v5

    const/16 v25, 0x2

    move/from16 v8, v25

    :goto_2
    if-ge v8, v0, :cond_2

    add-int/lit8 v9, v8, -0x1

    add-int v25, v9, p7

    add-int v28, v9, v2

    add-int v29, v9, v3

    add-int/2addr v9, v4

    move-object/from16 v10, p0

    iget-object v11, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v32, v25, -0x1

    aget-wide v32, v11, v32

    aget-wide v34, v11, v25

    add-int/lit8 v25, v28, -0x1

    aget-wide v36, v11, v25

    aget-wide v38, v11, v28

    add-int/lit8 v25, v29, -0x1

    aget-wide v40, v11, v25

    aget-wide v28, v11, v29

    add-int/lit8 v25, v9, -0x1

    aget-wide v42, v11, v25

    aget-wide v44, v11, v9

    sub-int v9, v0, v8

    add-int v11, p4, v8

    add-int v25, p6, v8

    add-int v9, p6, v9

    add-int v46, v11, v7

    add-int v47, v11, v21

    add-int v48, v11, v22

    add-int v49, v11, v23

    add-int v11, v11, v24

    add-int/lit8 v50, v46, -0x1

    aget-wide v50, p3, v50

    aget-wide v52, p3, v46

    add-int/lit8 v46, v47, -0x1

    aget-wide v54, p3, v46

    aget-wide v46, p3, v47

    add-int/lit8 v56, v48, -0x1

    aget-wide v56, p3, v56

    aget-wide v58, p3, v48

    add-int/lit8 v48, v49, -0x1

    aget-wide v60, p3, v48

    aget-wide v48, p3, v49

    add-int/lit8 v62, v11, -0x1

    aget-wide v62, p3, v62

    aget-wide v64, p3, v11

    mul-double v66, v32, v54

    mul-double v68, v34, v46

    add-double v66, v66, v68

    mul-double v32, v32, v46

    mul-double v34, v34, v54

    sub-double v32, v32, v34

    mul-double v34, v36, v56

    mul-double v46, v38, v58

    add-double v34, v34, v46

    mul-double v36, v36, v58

    mul-double v38, v38, v56

    sub-double v36, v36, v38

    mul-double v38, v40, v60

    mul-double v46, v28, v48

    add-double v38, v38, v46

    mul-double v40, v40, v48

    mul-double v28, v28, v60

    sub-double v40, v40, v28

    mul-double v28, v42, v62

    mul-double v46, v44, v64

    add-double v28, v28, v46

    mul-double v42, v42, v64

    mul-double v44, v44, v62

    sub-double v42, v42, v44

    add-double v44, v66, v28

    sub-double v28, v28, v66

    sub-double v46, v32, v42

    add-double v32, v32, v42

    add-double v42, v34, v38

    sub-double v38, v38, v34

    sub-double v34, v36, v40

    add-double v36, v36, v40

    mul-double v40, v44, v14

    add-double v40, v50, v40

    mul-double v48, v42, v12

    add-double v40, v40, v48

    mul-double v48, v32, v14

    add-double v48, v52, v48

    mul-double v54, v36, v12

    add-double v48, v48, v54

    mul-double v54, v44, v12

    add-double v54, v50, v54

    mul-double v56, v42, v14

    add-double v54, v54, v56

    mul-double v56, v32, v12

    add-double v56, v52, v56

    mul-double v58, v36, v14

    add-double v56, v56, v58

    const-wide v30, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v58, v46, v30

    const-wide v26, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v60, v34, v26

    add-double v58, v58, v60

    mul-double v60, v28, v30

    mul-double v62, v38, v26

    add-double v60, v60, v62

    mul-double v46, v46, v26

    mul-double v34, v34, v30

    sub-double v46, v46, v34

    mul-double v28, v28, v26

    mul-double v38, v38, v30

    sub-double v28, v28, v38

    add-int v11, v25, v16

    add-int v34, v9, v17

    add-int v35, v25, v18

    add-int v9, v9, v19

    add-int v25, v25, v20

    add-int/lit8 v38, v11, -0x1

    add-double v50, v50, v44

    add-double v50, v50, v42

    aput-wide v50, p5, v38

    add-double v52, v52, v32

    add-double v52, v52, v36

    aput-wide v52, p5, v11

    add-int/lit8 v11, v35, -0x1

    add-double v32, v40, v58

    aput-wide v32, p5, v11

    add-int/lit8 v11, v34, -0x1

    sub-double v40, v40, v58

    aput-wide v40, p5, v11

    add-double v32, v48, v60

    aput-wide v32, p5, v35

    sub-double v60, v60, v48

    aput-wide v60, p5, v34

    add-int/lit8 v11, v25, -0x1

    add-double v32, v54, v46

    aput-wide v32, p5, v11

    add-int/lit8 v11, v9, -0x1

    sub-double v54, v54, v46

    aput-wide v54, p5, v11

    add-double v32, v56, v28

    aput-wide v32, p5, v25

    sub-double v28, v28, v56

    aput-wide v28, p5, v9

    add-int/lit8 v8, v8, 0x2

    move-wide/from16 v10, v30

    goto/16 :goto_2

    :cond_2
    move-wide/from16 v30, v10

    const-wide v26, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    move-object/from16 v10, p0

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v26

    move-wide/from16 v10, v30

    goto/16 :goto_1

    :cond_3
    move-object/from16 v10, p0

    return-void
.end method

.method radfg(IIII[DI[DII)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    int-to-double v9, v2

    const-wide v11, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    add-int/lit8 v13, v2, 0x1

    const/4 v14, 0x2

    div-int/2addr v13, v14

    add-int/lit8 v15, v1, -0x1

    div-int/2addr v15, v14

    const/16 v16, 0x0

    const/4 v14, 0x1

    if-eq v1, v14, :cond_f

    move/from16 v14, v16

    :goto_0
    if-ge v14, v4, :cond_0

    add-int v19, v8, v14

    add-int v20, v6, v14

    aget-wide v20, v5, v20

    aput-wide v20, v7, v19

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x1

    :goto_1
    if-ge v14, v2, :cond_2

    mul-int v19, v14, v3

    mul-int v19, v19, v1

    move-wide/from16 v20, v11

    move/from16 v11, v16

    :goto_2
    if-ge v11, v3, :cond_1

    mul-int v12, v11, v1

    add-int v12, v12, v19

    add-int v22, v8, v12

    add-int/2addr v12, v6

    aget-wide v23, v5, v12

    aput-wide v23, v7, v22

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v11, v20

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v11

    neg-int v11, v1

    const/4 v12, 0x1

    if-gt v15, v3, :cond_5

    :goto_3
    if-ge v12, v2, :cond_8

    add-int/2addr v11, v1

    add-int/lit8 v14, v11, -0x1

    mul-int v19, v12, v3

    mul-int v19, v19, v1

    move/from16 v22, v11

    const/4 v11, 0x2

    :goto_4
    if-ge v11, v1, :cond_4

    const/16 v17, 0x2

    add-int/lit8 v14, v14, 0x2

    add-int v23, v14, p9

    add-int v24, v6, v11

    add-int v25, v8, v11

    move/from16 v26, v14

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v27, v23, -0x1

    aget-wide v27, v14, v27

    aget-wide v29, v14, v23

    move/from16 v14, v16

    :goto_5
    if-ge v14, v3, :cond_3

    mul-int v23, v14, v1

    add-int v23, v23, v19

    add-int v31, v25, v23

    add-int v23, v24, v23

    add-int/lit8 v32, v23, -0x1

    aget-wide v32, v5, v32

    aget-wide v34, v5, v23

    add-int/lit8 v23, v31, -0x1

    mul-double v36, v27, v32

    mul-double v38, v29, v34

    add-double v36, v36, v38

    aput-wide v36, v7, v23

    mul-double v34, v34, v27

    mul-double v32, v32, v29

    sub-double v34, v34, v32

    aput-wide v34, v7, v31

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v11, v11, 0x2

    move/from16 v14, v26

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v22

    goto :goto_3

    :cond_5
    :goto_6
    if-ge v12, v2, :cond_8

    add-int/2addr v11, v1

    mul-int v14, v12, v3

    mul-int/2addr v14, v1

    move-wide/from16 v22, v9

    move/from16 v9, v16

    :goto_7
    if-ge v9, v3, :cond_7

    add-int/lit8 v10, v11, -0x1

    mul-int v19, v9, v1

    add-int v19, v19, v14

    move/from16 v24, v11

    const/4 v11, 0x2

    :goto_8
    const/16 v17, 0x2

    if-ge v11, v1, :cond_6

    add-int/lit8 v10, v10, 0x2

    add-int v25, v10, p9

    move/from16 v26, v10

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v27, v25, -0x1

    aget-wide v27, v10, v27

    aget-wide v29, v10, v25

    add-int v10, v8, v11

    add-int v10, v10, v19

    add-int v25, v6, v11

    add-int v25, v25, v19

    add-int/lit8 v31, v25, -0x1

    aget-wide v31, v5, v31

    aget-wide v33, v5, v25

    add-int/lit8 v25, v10, -0x1

    mul-double v35, v27, v31

    mul-double v37, v29, v33

    add-double v35, v35, v37

    aput-wide v35, v7, v25

    mul-double v27, v27, v33

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    aput-wide v27, v7, v10

    add-int/lit8 v11, v11, 0x2

    move/from16 v10, v26

    goto :goto_8

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v11, v24

    goto :goto_7

    :cond_7
    move/from16 v24, v11

    const/16 v17, 0x2

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v9, v22

    goto :goto_6

    :cond_8
    move-wide/from16 v22, v9

    const/16 v17, 0x2

    if-lt v15, v3, :cond_b

    const/4 v9, 0x1

    :goto_9
    if-ge v9, v13, :cond_e

    sub-int v10, v2, v9

    mul-int v11, v9, v3

    mul-int/2addr v11, v1

    mul-int/2addr v10, v3

    mul-int/2addr v10, v1

    move/from16 v12, v16

    :goto_a
    if-ge v12, v3, :cond_a

    mul-int v14, v12, v1

    add-int v19, v14, v11

    add-int/2addr v14, v10

    move/from16 v0, v17

    :goto_b
    if-ge v0, v1, :cond_9

    add-int v24, v6, v0

    add-int v25, v8, v0

    add-int v26, v24, v19

    add-int v24, v24, v14

    add-int v27, v25, v19

    add-int v25, v25, v14

    add-int/lit8 v28, v27, -0x1

    aget-wide v28, v7, v28

    aget-wide v30, v7, v27

    add-int/lit8 v27, v25, -0x1

    aget-wide v32, v7, v27

    aget-wide v34, v7, v25

    add-int/lit8 v25, v26, -0x1

    add-double v36, v28, v32

    aput-wide v36, v5, v25

    add-double v36, v30, v34

    aput-wide v36, v5, v26

    add-int/lit8 v25, v24, -0x1

    sub-double v30, v30, v34

    aput-wide v30, v5, v25

    sub-double v32, v32, v28

    aput-wide v32, v5, v24

    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    :cond_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_9

    :cond_b
    const/4 v0, 0x1

    :goto_c
    if-ge v0, v13, :cond_e

    sub-int v9, v2, v0

    mul-int v10, v0, v3

    mul-int/2addr v10, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    move/from16 v11, v17

    :goto_d
    if-ge v11, v1, :cond_d

    add-int v12, v6, v11

    add-int v14, v8, v11

    move/from16 v19, v15

    move/from16 v15, v16

    :goto_e
    if-ge v15, v3, :cond_c

    mul-int v24, v15, v1

    add-int v25, v24, v10

    add-int v24, v24, v9

    add-int v26, v12, v25

    add-int v27, v12, v24

    add-int v25, v14, v25

    add-int v24, v14, v24

    add-int/lit8 v28, v25, -0x1

    aget-wide v28, v7, v28

    aget-wide v30, v7, v25

    add-int/lit8 v25, v24, -0x1

    aget-wide v32, v7, v25

    aget-wide v24, v7, v24

    add-int/lit8 v34, v26, -0x1

    add-double v35, v28, v32

    aput-wide v35, v5, v34

    add-double v34, v30, v24

    aput-wide v34, v5, v26

    add-int/lit8 v26, v27, -0x1

    sub-double v30, v30, v24

    aput-wide v30, v5, v26

    sub-double v32, v32, v28

    aput-wide v32, v5, v27

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v11, v11, 0x2

    move/from16 v15, v19

    goto :goto_d

    :cond_d
    move/from16 v19, v15

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_e
    move/from16 v19, v15

    goto :goto_f

    :cond_f
    move-wide/from16 v22, v9

    move-wide/from16 v20, v11

    move/from16 v19, v15

    const/16 v17, 0x2

    invoke-static {v7, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-ge v0, v13, :cond_11

    sub-int v9, v2, v0

    mul-int v10, v0, v3

    mul-int/2addr v10, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    move/from16 v11, v16

    :goto_11
    if-ge v11, v3, :cond_10

    mul-int v12, v11, v1

    add-int v14, v12, v10

    add-int/2addr v12, v9

    add-int v15, v8, v14

    add-int v24, v8, v12

    aget-wide v25, v7, v15

    aget-wide v27, v7, v24

    add-int/2addr v14, v6

    add-double v29, v25, v27

    aput-wide v29, v5, v14

    add-int/2addr v12, v6

    sub-double v27, v27, v25

    aput-wide v27, v5, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_11
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, v4

    const/4 v14, 0x1

    :goto_12
    if-ge v14, v13, :cond_15

    sub-int v15, v2, v14

    mul-double v24, v22, v9

    mul-double v26, v20, v11

    sub-double v24, v24, v26

    mul-double v11, v11, v22

    mul-double v9, v9, v20

    add-double/2addr v11, v9

    mul-int v9, v14, v4

    mul-int/2addr v15, v4

    move/from16 v10, v16

    :goto_13
    if-ge v10, v4, :cond_12

    add-int v26, v8, v10

    add-int v27, v6, v10

    add-int v28, v26, v9

    aget-wide v29, v5, v27

    add-int v31, v27, v4

    aget-wide v31, v5, v31

    mul-double v31, v31, v24

    add-double v29, v29, v31

    aput-wide v29, v7, v28

    add-int v26, v26, v15

    add-int v27, v27, v0

    aget-wide v27, v5, v27

    mul-double v27, v27, v11

    aput-wide v27, v7, v26

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_12
    move-wide/from16 v28, v11

    move/from16 v10, v17

    move-wide/from16 v26, v24

    :goto_14
    if-ge v10, v13, :cond_14

    sub-int v30, v2, v10

    mul-double v31, v24, v26

    mul-double v33, v11, v28

    sub-double v31, v31, v33

    mul-double v28, v28, v24

    mul-double v26, v26, v11

    add-double v28, v28, v26

    mul-int v26, v10, v4

    mul-int v30, v30, v4

    move/from16 p9, v0

    move/from16 v0, v16

    :goto_15
    if-ge v0, v4, :cond_13

    add-int v27, v8, v0

    add-int v33, v6, v0

    add-int v34, v27, v9

    aget-wide v35, v7, v34

    add-int v37, v33, v26

    aget-wide v37, v5, v37

    mul-double v37, v37, v31

    add-double v35, v35, v37

    aput-wide v35, v7, v34

    add-int v27, v27, v15

    aget-wide v34, v7, v27

    add-int v33, v33, v30

    aget-wide v36, v5, v33

    mul-double v36, v36, v28

    add-double v34, v34, v36

    aput-wide v34, v7, v27

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p9

    move-wide/from16 v26, v31

    goto :goto_14

    :cond_14
    move/from16 p9, v0

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v24

    goto/16 :goto_12

    :cond_15
    const/4 v0, 0x1

    :goto_16
    if-ge v0, v13, :cond_17

    mul-int v9, v0, v4

    move/from16 v10, v16

    :goto_17
    if-ge v10, v4, :cond_16

    add-int v11, v8, v10

    aget-wide v14, v7, v11

    add-int v12, v6, v10

    add-int/2addr v12, v9

    aget-wide v20, v5, v12

    add-double v14, v14, v20

    aput-wide v14, v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_17
    move/from16 v0, v16

    if-lt v1, v3, :cond_19

    :goto_18
    if-ge v0, v3, :cond_1b

    mul-int v4, v0, v1

    mul-int v9, v4, v2

    move/from16 v10, v16

    :goto_19
    if-ge v10, v1, :cond_18

    add-int v11, v6, v10

    add-int/2addr v11, v9

    add-int v12, v8, v10

    add-int/2addr v12, v4

    aget-wide v14, v7, v12

    aput-wide v14, v5, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_19
    :goto_1a
    if-ge v0, v1, :cond_1b

    move/from16 v4, v16

    :goto_1b
    if-ge v4, v3, :cond_1a

    mul-int v9, v4, v1

    add-int v10, v6, v0

    mul-int v11, v9, v2

    add-int/2addr v10, v11

    add-int v11, v8, v0

    add-int/2addr v11, v9

    aget-wide v11, v7, v11

    aput-wide v11, v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_1b
    mul-int v0, v2, v1

    const/4 v4, 0x1

    :goto_1c
    if-ge v4, v13, :cond_1d

    sub-int v9, v2, v4

    mul-int/lit8 v10, v4, 0x2

    mul-int v11, v4, v3

    mul-int/2addr v11, v1

    mul-int/2addr v9, v3

    mul-int/2addr v9, v1

    mul-int/2addr v10, v1

    move/from16 v12, v16

    :goto_1d
    if-ge v12, v3, :cond_1c

    mul-int v14, v12, v1

    add-int v15, v14, v11

    add-int/2addr v14, v9

    mul-int v20, v12, v0

    add-int v21, v6, v1

    const/16 v18, 0x1

    add-int/lit8 v21, v21, -0x1

    add-int v21, v21, v10

    sub-int v21, v21, v1

    add-int v21, v21, v20

    add-int/2addr v15, v8

    aget-wide v22, v7, v15

    aput-wide v22, v5, v21

    add-int v15, v6, v10

    add-int v15, v15, v20

    add-int/2addr v14, v8

    aget-wide v20, v7, v14

    aput-wide v20, v5, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_1d
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1e

    return-void

    :cond_1e
    move/from16 v15, v19

    if-lt v15, v3, :cond_21

    move v14, v4

    :goto_1e
    if-ge v14, v13, :cond_24

    sub-int v4, v2, v14

    mul-int/lit8 v9, v14, 0x2

    mul-int v10, v14, v3

    mul-int/2addr v10, v1

    mul-int/2addr v4, v3

    mul-int/2addr v4, v1

    mul-int/2addr v9, v1

    move/from16 v11, v16

    :goto_1f
    if-ge v11, v3, :cond_20

    mul-int v12, v11, v0

    mul-int v15, v11, v1

    move/from16 p4, v0

    move/from16 v0, v17

    :goto_20
    if-ge v0, v1, :cond_1f

    sub-int v18, v1, v0

    add-int v19, v6, v0

    add-int v18, v6, v18

    add-int v20, v8, v0

    add-int v19, v19, v9

    add-int v19, v19, v12

    add-int v18, v18, v9

    sub-int v18, v18, v1

    add-int v18, v18, v12

    add-int v20, v20, v15

    add-int v21, v20, v10

    add-int v20, v20, v4

    add-int/lit8 v22, v21, -0x1

    aget-wide v22, v7, v22

    aget-wide v24, v7, v21

    add-int/lit8 v21, v20, -0x1

    aget-wide v26, v7, v21

    aget-wide v20, v7, v20

    add-int/lit8 v28, v19, -0x1

    add-double v29, v22, v26

    aput-wide v29, v5, v28

    add-int/lit8 v28, v18, -0x1

    sub-double v22, v22, v26

    aput-wide v22, v5, v28

    add-double v22, v24, v20

    aput-wide v22, v5, v19

    sub-double v20, v20, v24

    aput-wide v20, v5, v18

    add-int/lit8 v0, v0, 0x2

    goto :goto_20

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p4

    goto :goto_1f

    :cond_20
    move/from16 p4, v0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    :cond_21
    move/from16 p4, v0

    move v14, v4

    :goto_21
    if-ge v14, v13, :cond_24

    sub-int v0, v2, v14

    mul-int/lit8 v4, v14, 0x2

    mul-int v9, v14, v3

    mul-int/2addr v9, v1

    mul-int/2addr v0, v3

    mul-int/2addr v0, v1

    mul-int/2addr v4, v1

    move/from16 v10, v17

    :goto_22
    if-ge v10, v1, :cond_23

    sub-int v11, v1, v10

    add-int v12, v6, v10

    add-int/2addr v11, v6

    add-int v15, v8, v10

    move/from16 v2, v16

    :goto_23
    if-ge v2, v3, :cond_22

    mul-int v18, v2, p4

    mul-int v19, v2, v1

    add-int v20, v12, v4

    add-int v20, v20, v18

    add-int v21, v11, v4

    sub-int v21, v21, v1

    add-int v21, v21, v18

    add-int v19, v15, v19

    add-int v18, v19, v9

    add-int v19, v19, v0

    add-int/lit8 v22, v18, -0x1

    aget-wide v22, v7, v22

    aget-wide v24, v7, v18

    add-int/lit8 v18, v19, -0x1

    aget-wide v26, v7, v18

    aget-wide v18, v7, v19

    add-int/lit8 v28, v20, -0x1

    add-double v29, v22, v26

    aput-wide v29, v5, v28

    add-int/lit8 v28, v21, -0x1

    sub-double v22, v22, v26

    aput-wide v22, v5, v28

    add-double v22, v24, v18

    aput-wide v22, v5, v20

    sub-double v18, v18, v24

    aput-wide v18, v5, v21

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_22
    add-int/lit8 v10, v10, 0x2

    move/from16 v2, p2

    goto :goto_22

    :cond_23
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p2

    goto :goto_21

    :cond_24
    return-void
.end method

.method public realForward([D)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    return-void
.end method

.method public realForward([DI)V
    .locals 9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_forward([DI)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v2, :cond_6

    add-int v1, p2, v0

    aget-wide v3, p1, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v7, p1, v5

    aput-wide v7, p1, v1

    aput-wide v3, p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v0, 0x4

    if-le v1, v0, :cond_4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    goto :goto_1

    :cond_4
    if-ne v1, v0, :cond_5

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftx020([DI)V

    :cond_5
    :goto_1
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, p1, v2

    sub-double/2addr v0, v3

    aget-wide v3, p1, p2

    aget-wide v5, p1, v2

    add-double/2addr v3, v5

    aput-wide v3, p1, p2

    aput-wide v0, p1, v2

    :cond_6
    :goto_2
    return-void
.end method

.method public realForwardFull([D)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V

    return-void
.end method

.method public realForwardFull([DI)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v10, 0x2

    mul-int/lit8 v11, v0, 0x2

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_5

    if-eq v0, v10, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, -0x1

    invoke-direct {v7, v8, v9, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    goto/16 :goto_7

    :cond_1
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v14

    :goto_0
    div-int/2addr v0, v10

    move v1, v14

    :goto_1
    if-ge v1, v0, :cond_3

    add-int v2, v9, v11

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v3, v9

    add-int/lit8 v4, v2, 0x1

    aget-wide v5, v8, v3

    neg-double v5, v5

    aput-wide v5, v8, v4

    sub-int/2addr v3, v14

    aget-wide v3, v8, v3

    aput-wide v3, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v14

    :goto_2
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_4

    add-int/2addr v1, v9

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v8, v2

    aget-wide v5, v8, v1

    aput-wide v5, v8, v2

    aput-wide v3, v8, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v9, 0x1

    aput-wide v12, v8, v0

    goto/16 :goto_7

    :cond_5
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v15

    const/4 v0, 0x0

    if-le v15, v14, :cond_8

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v10

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_8

    new-array v6, v15, [Ljava/util/concurrent/Future;

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v10

    div-int v16, v1, v15

    move v5, v0

    :goto_3
    if-ge v5, v15, :cond_7

    mul-int v2, v5, v16

    add-int/lit8 v0, v15, -0x1

    if-ne v5, v0, :cond_6

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    goto :goto_4

    :cond_6
    add-int v0, v2, v16

    :goto_4
    move v3, v0

    new-instance v17, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v18, v5

    move v5, v11

    move-object/from16 v19, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v18

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v19

    goto :goto_3

    :cond_7
    move-object/from16 v19, v6

    invoke-static/range {v19 .. v19}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_6

    :cond_8
    :goto_5
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v10

    if-ge v0, v1, :cond_9

    mul-int/lit8 v1, v0, 0x2

    sub-int v2, v11, v1

    rem-int/2addr v2, v11

    add-int/2addr v2, v9

    add-int/2addr v1, v9

    aget-wide v3, v8, v1

    aput-wide v3, v8, v2

    add-int/2addr v2, v14

    add-int/2addr v1, v14

    aget-wide v3, v8, v1

    neg-double v3, v3

    aput-wide v3, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v9

    add-int/lit8 v1, v9, 0x1

    aget-wide v2, v8, v1

    neg-double v2, v2

    aput-wide v2, v8, v0

    aput-wide v12, v8, v1

    :goto_7
    return-void
.end method

.method public realInverse([DIZ)V
    .locals 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v7, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v7, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse([DI)V

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_2

    :cond_2
    :goto_0
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v7, v0, :cond_3

    add-int v0, p2, v7

    add-int/lit8 v1, v0, -0x1

    aget-wide v2, p1, v1

    aget-wide v4, p1, v0

    aput-wide v4, p1, v1

    aput-wide v2, p1, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftb([DI)V

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, p2, 0x1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    aget-wide v3, p1, p2

    aget-wide v5, p1, v0

    sub-double/2addr v3, v5

    mul-double/2addr v3, v1

    aput-wide v3, p1, v0

    aget-wide v1, p1, p2

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    aput-wide v1, p1, p2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v0, 0x4

    if-le v1, v0, :cond_5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    goto :goto_1

    :cond_5
    if-ne v1, v0, :cond_6

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxc020([DI)V

    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v7

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public realInverse([DZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    return-void
.end method

.method protected realInverse2([DIZ)V
    .locals 10

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v6, :cond_6

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2([DI)V

    if-eqz p3, :cond_9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    sub-int/2addr v0, v6

    :goto_0
    if-lt v0, v7, :cond_3

    add-int v1, p2, v0

    aget-wide v2, p1, v1

    add-int/lit8 v4, v1, -0x1

    aget-wide v8, p1, v4

    aput-wide v8, p1, v1

    aput-wide v2, p1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_4
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_5

    div-int/2addr v0, v7

    move v1, v6

    :goto_1
    if-ge v1, v0, :cond_9

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    add-int/2addr v2, v6

    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sub-int/2addr v0, v6

    div-int/2addr v0, v7

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_9

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    add-int/2addr v2, v6

    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v0, 0x4

    if-le v1, v0, :cond_7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftbsub(I[DII[DI)V

    goto :goto_3

    :cond_7
    if-ne v1, v0, :cond_8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    :cond_8
    :goto_3
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v3, p1, v2

    sub-double/2addr v0, v3

    aget-wide v3, p1, p2

    aget-wide v5, p1, v2

    add-double/2addr v3, v5

    aput-wide v3, p1, p2

    aput-wide v0, p1, v2

    if-eqz p3, :cond_9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_9
    :goto_4
    return-void
.end method

.method public realInverseFull([DIZ)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v10, 0x2

    mul-int/lit8 v11, v0, 0x2

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_6

    if-eq v0, v10, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct {v7, v8, v9, v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    if-eqz p3, :cond_b

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_7

    :cond_1
    invoke-virtual/range {p0 .. p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    if-eqz p3, :cond_2

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_2
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    add-int/2addr v0, v14

    :goto_0
    div-int/2addr v0, v10

    move v1, v14

    :goto_1
    if-ge v1, v0, :cond_4

    mul-int/lit8 v2, v1, 0x2

    add-int v3, v9, v2

    add-int v4, v9, v11

    sub-int/2addr v4, v2

    aget-wide v5, v8, v3

    neg-double v5, v5

    aput-wide v5, v8, v3

    add-int/lit8 v2, v4, 0x1

    aget-wide v5, v8, v3

    neg-double v5, v5

    aput-wide v5, v8, v2

    sub-int/2addr v3, v14

    aget-wide v2, v8, v3

    aput-wide v2, v8, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v14

    :goto_2
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_5

    add-int/2addr v1, v9

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v8, v2

    aget-wide v5, v8, v1

    aput-wide v5, v8, v2

    aput-wide v3, v8, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v9, 0x1

    aput-wide v12, v8, v0

    goto/16 :goto_7

    :cond_6
    invoke-virtual/range {p0 .. p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v15

    const/4 v0, 0x0

    if-le v15, v14, :cond_9

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v10

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_9

    new-array v6, v15, [Ljava/util/concurrent/Future;

    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v10

    div-int v16, v1, v15

    move v5, v0

    :goto_3
    if-ge v5, v15, :cond_8

    mul-int v2, v5, v16

    add-int/lit8 v0, v15, -0x1

    if-ne v5, v0, :cond_7

    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v0, v10

    goto :goto_4

    :cond_7
    add-int v0, v2, v16

    :goto_4
    move v3, v0

    new-instance v17, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v18, v5

    move v5, v11

    move-object/from16 v19, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v19, v18

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v19

    goto :goto_3

    :cond_8
    move-object/from16 v19, v6

    invoke-static/range {v19 .. v19}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_6

    :cond_9
    :goto_5
    iget v1, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v1, v10

    if-ge v0, v1, :cond_a

    mul-int/lit8 v1, v0, 0x2

    sub-int v2, v11, v1

    rem-int/2addr v2, v11

    add-int/2addr v2, v9

    add-int/2addr v1, v9

    aget-wide v3, v8, v1

    aput-wide v3, v8, v2

    add-int/2addr v2, v14

    add-int/2addr v1, v14

    aget-wide v3, v8, v1

    neg-double v3, v3

    aput-wide v3, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    iget v0, v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, v9

    add-int/lit8 v1, v9, 0x1

    aget-wide v2, v8, v1

    neg-double v2, v2

    aput-wide v2, v8, v0

    aput-wide v12, v8, v1

    :cond_b
    :goto_7
    return-void
.end method

.method public realInverseFull([DZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DIZ)V

    return-void
.end method

.method rfftb([DI)V
    .locals 22

    move-object/from16 v10, p0

    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    return-void

    :cond_0
    new-array v12, v0, [D

    mul-int/lit8 v13, v0, 0x2

    iget-object v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v2, v13, 0x1

    aget-wide v2, v1, v2

    double-to-int v14, v2

    const/4 v15, 0x0

    move/from16 v16, v0

    move v0, v11

    move v3, v0

    move/from16 v17, v15

    :goto_0
    if-gt v0, v14, :cond_b

    iget-object v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v18, v0, 0x1

    add-int v0, v18, v13

    aget-wide v0, v1, v0

    double-to-int v9, v0

    mul-int v19, v9, v3

    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v8, v0, v19

    mul-int v4, v8, v3

    const/4 v0, 0x2

    if-eq v9, v0, :cond_8

    const/4 v0, 0x3

    if-eq v9, v0, :cond_6

    const/4 v0, 0x4

    if-eq v9, v0, :cond_4

    const/4 v0, 0x5

    if-eq v9, v0, :cond_2

    if-nez v17, :cond_1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v21, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    goto :goto_1

    :cond_1
    move/from16 v21, v8

    move/from16 v20, v9

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    move-object v5, v12

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    :goto_1
    move/from16 v8, v21

    if-ne v8, v11, :cond_a

    goto/16 :goto_2

    :cond_2
    move/from16 v20, v9

    if-nez v17, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

    goto/16 :goto_2

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

    goto/16 :goto_2

    :cond_4
    move/from16 v20, v9

    if-nez v17, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    goto :goto_2

    :cond_6
    move/from16 v20, v9

    if-nez v17, :cond_7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    goto :goto_2

    :cond_8
    move/from16 v20, v9

    if-nez v17, :cond_9

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v3

    move-object v3, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    :goto_2
    rsub-int/lit8 v17, v17, 0x1

    :cond_a
    add-int/lit8 v9, v20, -0x1

    mul-int/2addr v9, v8

    add-int v16, v16, v9

    move/from16 v0, v18

    move/from16 v3, v19

    goto/16 :goto_0

    :cond_b
    if-nez v17, :cond_c

    return-void

    :cond_c
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v12, v15, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method rfftf([DI)V
    .locals 18

    move-object/from16 v10, p0

    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_0

    return-void

    :cond_0
    new-array v12, v0, [D

    mul-int/lit8 v13, v0, 0x2

    iget-object v1, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v2, v13, 0x1

    aget-wide v2, v1, v2

    double-to-int v14, v2

    add-int/lit8 v1, v13, -0x1

    move v2, v11

    move v15, v2

    :goto_0
    const/4 v9, 0x0

    if-gt v15, v14, :cond_b

    sub-int v3, v14, v15

    iget-object v4, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    const/4 v5, 0x2

    add-int/2addr v3, v5

    add-int/2addr v3, v13

    aget-wide v3, v4, v3

    double-to-int v3, v3

    div-int v16, v0, v3

    iget v4, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v4, v0

    mul-int v6, v4, v16

    add-int/lit8 v0, v3, -0x1

    mul-int/2addr v0, v4

    sub-int v17, v1, v0

    rsub-int/lit8 v8, v2, 0x1

    if-eq v3, v5, :cond_9

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    const/4 v0, 0x4

    if-eq v3, v0, :cond_5

    const/4 v0, 0x5

    if-eq v3, v0, :cond_3

    if-ne v4, v11, :cond_1

    rsub-int/lit8 v8, v8, 0x1

    :cond_1
    if-nez v8, :cond_2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v3

    move/from16 v3, v16

    move v4, v6

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v7, v12

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    move v2, v11

    goto/16 :goto_2

    :cond_2
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v3

    move/from16 v3, v16

    move v4, v6

    move-object v5, v12

    move v6, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_3
    if-nez v8, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object v3, v12

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

    goto/16 :goto_1

    :cond_5
    if-nez v8, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object v3, v12

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    goto :goto_1

    :cond_7
    if-nez v8, :cond_8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object v3, v12

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    goto :goto_1

    :cond_9
    if-nez v8, :cond_a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, v16

    move-object v3, v12

    move v4, v5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    :goto_1
    move v2, v8

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    if-ne v2, v11, :cond_c

    return-void

    :cond_c
    iget v0, v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v12, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method rffti()V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    add-int/2addr v5, v2

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-gt v5, v8, :cond_1

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v8, v5, -0x1

    aget v6, v6, v8

    goto :goto_1

    :cond_1
    add-int/2addr v6, v9

    :goto_1
    div-int v8, v1, v6

    mul-int v10, v6, v8

    sub-int v10, v1, v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v10, v3

    int-to-double v11, v6

    aput-wide v11, v1, v10

    if-ne v6, v9, :cond_4

    if-eq v7, v2, :cond_4

    move v1, v9

    :goto_2
    if-gt v1, v7, :cond_3

    sub-int v10, v7, v1

    add-int/2addr v10, v9

    add-int/2addr v10, v3

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, v11, v10

    aput-wide v13, v11, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v10, v3, 0x2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    aput-wide v11, v1, v10

    :cond_4
    if-ne v8, v2, :cond_9

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v10, v5

    aput-wide v10, v1, v3

    add-int/lit8 v6, v3, 0x1

    int-to-double v10, v7

    aput-wide v10, v1, v6

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v5, v5

    div-double/2addr v10, v5

    sub-int/2addr v7, v2

    if-nez v7, :cond_5

    return-void

    :cond_5
    move v1, v2

    move v5, v1

    const/4 v6, 0x0

    :goto_3
    if-gt v1, v7, :cond_8

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v1, v1, 0x1

    add-int v12, v1, v3

    aget-wide v12, v8, v12

    double-to-int v8, v12

    mul-int v12, v5, v8

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v13, v12

    sub-int/2addr v8, v2

    move v14, v2

    const/4 v15, 0x0

    :goto_4
    if-gt v14, v8, :cond_7

    add-int/2addr v15, v5

    move/from16 v16, v5

    int-to-double v4, v15

    mul-double/2addr v4, v10

    const-wide/16 v17, 0x0

    const/16 v19, 0x3

    move/from16 v20, v6

    move/from16 v2, v19

    :goto_5
    if-gt v2, v13, :cond_6

    add-int/lit8 v20, v20, 0x2

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    add-double v17, v17, v21

    mul-double v21, v17, v4

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int v9, v20, v9

    move/from16 v23, v1

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v24, v9, -0x2

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    aput-wide v25, v1, v24

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    const/16 v19, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    aput-wide v21, v1, v9

    add-int/lit8 v2, v2, 0x2

    move/from16 v1, v23

    const/4 v9, 0x2

    goto :goto_5

    :cond_6
    move/from16 v23, v1

    const/16 v19, 0x1

    add-int/2addr v6, v13

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move/from16 v2, v19

    const/4 v9, 0x2

    goto :goto_4

    :cond_7
    move/from16 v23, v1

    move v5, v12

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    move v1, v8

    goto/16 :goto_1
.end method
