.class public Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX:I = 0x64

.field private static final PERCENT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Pixels"


# instance fields
.field private mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

.field private mPixels:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    mul-int v0, p4, p5

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->init()V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->setComparable(Lcom/oneplus/screenshot/longshot/compare/ColorCompare;)V

    return-void
.end method


# virtual methods
.method public diff(Ljava/lang/Object;)I
    .locals 9

    check-cast p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object v1, p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->lineSamples:Ljava/util/List;

    array-length v2, v2

    array-length v1, v1

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    move v1, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v6, v5

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v5, v5, v1

    iget-object v7, p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v7, v7, v1

    invoke-virtual {v6, v5, v7}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v6

    if-ge v5, v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v6, v6, v5

    iget-object v8, p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v8, v8, v5

    invoke-virtual {v7, v6, v8}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length p1, p1

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v1

    sub-int/2addr p1, v1

    if-le v2, p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v2, p1

    :cond_7
    if-nez v4, :cond_8

    const-string p1, "Pixels"

    const-string v1, "diff total is 0"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v4

    return v2

    :cond_9
    :goto_2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 9

    check-cast p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->lineSamples:Ljava/util/List;

    array-length v2, v2

    array-length v1, v1

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    move p2, v0

    move v2, p2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v5, v4

    if-ge p2, v5, :cond_9

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v4, v4, p2

    iget-object v6, p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v6, v6, p2

    invoke-virtual {v5, v4, v6}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    :cond_3
    move p2, v0

    move v2, p2

    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v6, v5

    if-ge p2, v6, :cond_5

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v5, v5, p2

    iget-object v7, p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v7, v7, p2

    invoke-virtual {v6, v5, v7}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v5

    add-int/2addr p2, v5

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v4

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v7, v6

    if-ge v5, v7, :cond_6

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    aget v6, v6, v5

    iget-object v8, p1, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    aget v8, v8, v5

    invoke-virtual {v7, v6, v8}, Lcom/oneplus/screenshot/longshot/compare/ColorCompare;->compare(II)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length p1, p1

    sget-object p2, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_LINE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p2

    sub-int/2addr p1, p2

    if-le v2, p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    array-length v2, p1

    :cond_9
    if-nez v3, :cond_a

    const-string p1, "Pixels"

    const-string p2, "equals total is 0"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a
    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v3

    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->isTopActivityDisplayCompatible:Z

    if-eqz p1, :cond_b

    sget p1, Lcom/oneplus/screenshot/longshot/util/Configs;->topActivityDisplayCompatibleStitchMatchThreshold:I

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getOverrideMatchThresholdValue()I

    move-result p1

    :goto_3
    if-lt v2, p1, :cond_c

    move v0, v1

    :cond_c
    :goto_4
    return v0
.end method

.method public get()[I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mPixels:[I

    return-object v0
.end method

.method public setComparable(Lcom/oneplus/screenshot/longshot/compare/ColorCompare;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->mComparable:Lcom/oneplus/screenshot/longshot/compare/ColorCompare;

    return-void
.end method
