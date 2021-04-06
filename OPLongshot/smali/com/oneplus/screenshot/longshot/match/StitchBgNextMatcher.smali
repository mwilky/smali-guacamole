.class public Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgNextMatcher"


# instance fields
.field private mDensity:F

.field private mExtend:I

.field private mPeak:D

.field private mPos:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    return-void
.end method

.method private findMisregistration([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;II)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_1

    mul-int v3, v1, p3

    add-int/2addr v3, v2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    iput-wide v4, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->x:I

    iput v1, v3, Landroid/graphics/Point;->y:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    sub-int v0, p3, p2

    if-ge v0, p2, :cond_3

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Point;->x:I

    :cond_3
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    sub-int p3, p4, p2

    if-ge p3, p2, :cond_4

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Point;->y:I

    :cond_4
    return-void
.end method

.method private getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 4

    new-array p5, p2, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    new-array v2, p1, [I

    mul-int v3, p1, v1

    invoke-static {p3, v3, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    invoke-direct {v3, v2}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>([I)V

    aput-object v3, p5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4, p5, v0, p2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    :cond_1
    return-object p5
.end method

.method private getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/Configs;->bglineSamples:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    sub-int v6, p1, v5

    div-int/2addr v6, v4

    int-to-float v2, v2

    iget v7, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    div-float/2addr v2, v7

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    move/from16 v5, p2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v7, p1, v5

    new-array v7, v7, [D

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_4

    if-eqz p6, :cond_0

    add-int v10, v9, p3

    goto :goto_1

    :cond_0
    sub-int v10, v9, p3

    add-int/2addr v10, v3

    sub-int/2addr v10, v5

    :goto_1
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v4, :cond_2

    sget-object v12, Lcom/oneplus/screenshot/longshot/util/Configs;->bglineSamples:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v6, :cond_1

    int-to-float v14, v12

    int-to-float v15, v13

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    float-to-int v8, v14

    mul-int v14, v9, p1

    mul-int v15, v11, v6

    add-int/2addr v14, v15

    add-int/2addr v14, v13

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-direct {v0, v8}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v8

    move/from16 p5, v3

    move v15, v4

    int-to-double v3, v8

    aput-wide v3, v7, v14

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p5

    move v4, v15

    goto :goto_3

    :cond_1
    move/from16 p5, v3

    move v15, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move/from16 p5, v3

    move v15, v4

    const/4 v3, 0x0

    :goto_4
    iget v4, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    if-ge v3, v4, :cond_3

    int-to-float v8, v2

    int-to-float v11, v3

    iget v12, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    float-to-int v8, v8

    mul-int v11, v9, p1

    add-int v11, v11, p1

    sub-int/2addr v11, v4

    add-int/2addr v11, v3

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v4

    int-to-double v12, v4

    aput-wide v12, v7, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p5

    move v4, v15

    goto :goto_0

    :cond_4
    return-object v7
.end method

.method private grayScale(I)I
    .locals 0

    return p1
.end method

.method private spectrum([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v1

    aget-object v3, p3, v0

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    mul-double/2addr v1, v3

    aget-object v3, p4, v0

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p4, v0

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aget-object v3, p3, v0

    invoke-virtual {v3, v1, v2}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v3, p4, v0

    invoke-virtual {v3, v1, v2}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v1, p5, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v1

    aget-object v3, p5, v0

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    mul-double/2addr v1, v3

    aget-object v3, p6, v0

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p6, v0

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aget-object v3, p5, v0

    invoke-virtual {v3, v1, v2}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v3, p6, v0

    invoke-virtual {v3, v1, v2}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    new-instance v1, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v2, p3, v0

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v2

    aget-object v4, p5, v0

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p1, v0

    new-instance v1, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v2, p4, v0

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v2

    aget-object v4, p6, v0

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private toInt([D)[I
    .locals 4

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-wide v2, p1, v1

    double-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-wide v2, p2, v0

    invoke-direct {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "StitchBgNext"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 24

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    div-int/2addr v0, v1

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    div-int/2addr v1, v2

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->bglineSamples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->WIDTH_SAMPLE_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v3

    div-int/2addr v3, v2

    mul-int/2addr v3, v2

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    add-int v8, v3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int v10, v8, v9

    invoke-static {v10}, Lcom/oneplus/screenshot/longshot/transform/Factory;->createTransform(I)Lcom/oneplus/screenshot/longshot/transform/FFT;

    move-result-object v11

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v12

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v13

    new-array v3, v10, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    invoke-direct {v7, v3, v12}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V

    invoke-interface {v11, v3}, Lcom/oneplus/screenshot/longshot/transform/FFT;->transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v4

    new-array v5, v10, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    invoke-direct {v7, v5, v13}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V

    invoke-interface {v11, v5}, Lcom/oneplus/screenshot/longshot/transform/FFT;->transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v6

    new-array v14, v10, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    new-array v10, v10, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-object v1, v14

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->spectrum([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;)V

    invoke-interface {v11, v14}, Lcom/oneplus/screenshot/longshot/transform/FFT;->reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v0

    invoke-interface {v11, v10}, Lcom/oneplus/screenshot/longshot/transform/FFT;->reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v1

    invoke-direct {v7, v0, v1, v8, v9}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->findMisregistration([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;II)V

    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v1, v9, v0

    add-int/lit8 v16, v1, -0x1

    add-int/lit8 v17, v9, -0x1

    sub-int v15, v9, v0

    invoke-direct {v7, v12}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v3

    iget-object v4, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v18

    invoke-direct {v7, v13}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v3

    iget-object v4, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v19

    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    iget-object v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/16 v20, 0x1

    const/16 v22, 0x0

    move-object v14, v0

    move/from16 v21, v1

    move-object/from16 v23, v2

    invoke-virtual/range {v14 .. v23}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    return-object v0
.end method
