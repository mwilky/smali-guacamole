.class public Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchBgNextTask"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/JoinTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    return-void
.end method

.method private stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 4

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getOffset()I

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result p1

    mul-int/2addr p1, v0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    return-void
.end method

.method private stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 5

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getLines()[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    array-length v4, v4

    mul-int/2addr v4, v0

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result p1

    mul-int/2addr p1, v0

    add-int/2addr v3, p1

    add-int/2addr v3, v1

    if-lez v3, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->checkMatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    move v1, v3

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    invoke-direct {p0, v0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchBgNextTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p1, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setLastCache(Z)V

    :cond_3
    return v1

    :cond_4
    :goto_0
    const-string p1, "Longshot.StitchBgNextTask"

    const-string p2, "zero height bitmap"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
