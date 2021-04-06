.class public Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source ""


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "tracing"

.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextMatcher"


# instance fields
.field protected mExtendCurr:I

.field protected mExtendLast:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    sget p1, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchNext:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_5:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    return-void
.end method

.method private getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move/from16 v1, p3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    new-array v12, v11, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v11, :cond_1

    iget v1, v0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    mul-int v2, v13, v1

    add-int v2, v2, p1

    if-eqz p6, :cond_0

    add-int v2, v2, p2

    goto :goto_1

    :cond_0
    mul-int/2addr v1, v11

    sub-int v1, v10, v1

    sub-int v1, v1, p2

    add-int/2addr v2, v1

    :goto_1
    move v4, v2

    new-instance v14, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v1, v0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLeftSideOffset:I

    add-int/lit8 v3, v1, 0x0

    sub-int v1, v9, v1

    iget v2, v0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mRightSideOffset:I

    sub-int v5, v1, v2

    const/4 v6, 0x1

    move-object v1, v14

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_3

    if-nez p6, :cond_2

    const-string v1, "tracing_0_last"

    goto :goto_2

    :cond_2
    const-string v1, "tracing_0_current"

    :goto_2
    invoke-virtual {v8, v7, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_3
    return-object v12
.end method

.method private getTracingBitmapBottom(Ljava/lang/String;)I
    .locals 4

    const-string v0, "Longshot.StitchNextMatcher"

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    const-string p1, "bottom value does exsit"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTracingBitmapBottom :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le p2, v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p2, v1, :cond_1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eq v1, p2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0, p2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, p2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, p2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v3, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v7, v3, v8, p2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, p0, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v4, p1, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2

    :cond_5
    :goto_3
    const-string p0, "Longshot.StitchNextMatcher"

    const-string p1, "incorrect bitmaps"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForTraceNext()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    return-void
.end method

.method protected getStep()I
    .locals 2

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchNext:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_0:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "StitchNext"

    return-object v0
.end method

.method getTraingBitmap(Z)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchNextTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/screenshot/util/Utils;->getStitchNextTraceBitmap(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "last"

    goto :goto_0

    :cond_0
    const-string p1, "currnet"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " path:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Longshot.StitchNextMatcher"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 28

    move-object/from16 v7, p0

    const-string v0, "StitchNextMatcher.match"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isEnableStitchNextTraceBitmap()Z

    move-result v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v7, v8}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v1, v0, v9, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    invoke-virtual {v7, v9}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v2, v0, v9, v9}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    move-object v10, v1

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    :goto_2
    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    div-int v12, v0, v1

    invoke-virtual {v11}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    div-int v13, v0, v1

    const/4 v14, 0x0

    const/4 v1, 0x0

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    invoke-virtual {v11}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v15

    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "getNext_current"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_3
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_4

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "getNext_last"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isTopActivityDisplayCompatible:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->topActivityDisplayCompatibleStitchMatchThreshold:I

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getOverrideMatchThresholdValue()I

    move-result v0

    :goto_3
    move v11, v0

    move v3, v9

    move v4, v3

    move v5, v4

    move v6, v5

    move-object/from16 v19, v14

    move v14, v6

    :goto_4
    iget v0, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    if-ge v3, v0, :cond_e

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    iget-object v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move v1, v3

    move/from16 v20, v3

    move v3, v12

    move/from16 v25, v4

    move-object/from16 v4, v16

    move/from16 v26, v5

    move-object/from16 v5, v18

    move/from16 v27, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    move v1, v9

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_d

    aget-object v2, v0, v1

    aget-object v3, v15, v9

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v9

    move v3, v2

    move v8, v3

    :goto_6
    add-int v9, v1, v2

    move/from16 p1, v4

    array-length v4, v0

    if-ge v9, v4, :cond_6

    array-length v4, v15

    if-ge v2, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v0, v9

    aget-object v9, v15, v2

    invoke-virtual {v4, v9}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p1

    goto :goto_6

    :cond_6
    if-nez v3, :cond_8

    :cond_7
    :goto_7
    const/4 v3, 0x1

    goto :goto_a

    :cond_8
    mul-int/lit8 v2, v8, 0x64

    div-int/2addr v2, v3

    if-ge v2, v11, :cond_9

    goto :goto_7

    :cond_9
    if-ge v14, v8, :cond_7

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->isIgnoreFullMatchList:Z

    if-nez v2, :cond_b

    array-length v2, v0

    sub-int/2addr v2, v8

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    add-int v9, v4, v3

    array-length v4, v15

    if-ge v9, v4, :cond_b

    add-int v4, v2, v3

    array-length v9, v0

    if-ge v4, v9, :cond_b

    if-ge v3, v8, :cond_b

    aget-object v4, v0, v4

    aget-object v9, v15, v3

    move/from16 p2, v2

    const/4 v2, 0x1

    invoke-virtual {v4, v9, v2}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p2

    goto :goto_8

    :cond_b
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_7

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v19, v0

    move v6, v2

    move v5, v4

    move v14, v8

    move/from16 v4, v20

    goto :goto_b

    :cond_c
    move/from16 p1, v4

    move v3, v8

    :goto_a
    move/from16 v4, p1

    :goto_b
    add-int/lit8 v1, v1, 0x1

    move v8, v3

    const/4 v9, 0x0

    goto :goto_5

    :cond_d
    move/from16 p1, v4

    move v3, v8

    add-int/lit8 v0, v20, 0x1

    const/4 v9, 0x0

    move v3, v0

    goto/16 :goto_4

    :cond_e
    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StitchNextMatcher run posCurr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " posLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " matched:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v25

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sizeLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sizeCurr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mExtendLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mExtendCurr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " matchThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.StitchNextMatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "StitchNextMatcher.data.init"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/16 v21, 0x1

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    iget-object v2, v7, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object v3, v15

    move-object v15, v0

    move/from16 v16, v14

    move/from16 v17, v6

    move/from16 v18, v5

    move-object/from16 v20, v3

    move/from16 v22, v1

    move/from16 v23, v9

    move-object/from16 v24, v2

    invoke-virtual/range {v15 .. v24}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0
.end method
