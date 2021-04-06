.class public Lcom/oneplus/screenshot/longshot/match/UndoMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "UndoMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getCurr(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 11

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array v7, p1, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, p1, :cond_0

    new-instance v10, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, v10

    move-object v1, p3

    move v3, v9

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v7, v8, p1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    :cond_1
    return-object v7
.end method

.method private getLast(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 11

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array v7, p1, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, p1, :cond_0

    new-instance v10, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, v10

    move-object v1, p3

    move v3, v9

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v7, v8, p1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    :cond_1
    return-object v7
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 6

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Undo"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 10

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getLast(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v6

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getCurr(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v7

    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_0
    array-length v1, v7

    array-length v2, v6

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_4

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    array-length p1, v6

    add-int/2addr p2, p1

    sub-int/2addr p2, v1

    move v3, p1

    move v5, p2

    goto :goto_3

    :cond_1
    move v0, p1

    :goto_1
    array-length v2, v6

    if-ge v0, v2, :cond_3

    aget-object v2, v6, v0

    add-int v3, v0, p2

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, p1

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    move v3, p1

    move v5, v3

    :goto_3
    new-instance p1, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    invoke-direct {p1, p2, v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    add-int/lit8 v4, v3, -0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    return-object p1
.end method
