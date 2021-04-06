.class public Lcom/oneplus/screenshot/longshot/task/StitchLastTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastTask"


# instance fields
.field protected mDispH:I


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/JoinTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mDispH:I

    iput p5, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mDispH:I

    return-void
.end method

.method private lessThanScreenHeight(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/match/MatchData;)Z
    .locals 3

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->FULLSCREEN_IMAGE:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p3}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result p3

    if-lt p3, p1, :cond_2

    sub-int/2addr p3, p1

    sub-int/2addr p2, p3

    goto :goto_1

    :cond_2
    sub-int/2addr p1, p3

    add-int/2addr p2, p1

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    add-int/2addr v0, p2

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->getImageHeight()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->mDispH:I

    if-gt v0, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/task/JoinTask;->checkMatcher()Z

    move-result v0

    const-string v1, "Longshot.StitchLastTask"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "onJoin fail"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v0, "StitchLastTask.match"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->shouldStitchByView()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v0

    iget v0, v0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v0

    iget v0, v0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v6

    iget v6, v6, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    sub-int/2addr v5, v6

    invoke-static {v0, v2, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v0, v5, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v0, v5, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {v4, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v0

    iget v0, v0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    if-lez v0, :cond_2

    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v0

    iget v0, v0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v0, v4, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v4

    iget v4, v4, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v7

    iget v7, v7, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    sub-int/2addr v6, v7

    invoke-static {v0, v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v0, v1, v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v0, v1, v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_2
    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    return v3

    :cond_3
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-result-object v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v4

    if-lez v4, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->lessThanScreenHeight(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/match/MatchData;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    invoke-virtual {p2, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/screenshot/longshot/task/StitchLastTask;->stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V

    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onJoin result "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method protected stitchForCurr(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 7

    const-string v0, "StitchLastTask.stitchForCurr"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result p1

    const/4 v4, 0x1

    const-string v5, "StitchLastTask.stitchForCurr.createbmpResult"

    const/4 v6, 0x0

    if-lt p1, v1, :cond_2

    sub-int/2addr p1, v1

    sub-int/2addr v2, p1

    if-lez v2, :cond_3

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v3, p1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    :cond_1
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v0, p1, v6, v6}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sub-int/2addr v1, p1

    invoke-static {v2, v3, p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, p1, v6, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {v0, v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected stitchForLast(Lcom/oneplus/screenshot/longshot/match/MatchData;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 3

    const-string v0, "StitchLastTask.stitchForLast"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getLastRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v1

    sub-int/2addr p1, v1

    if-lez p1, :cond_1

    const-string v1, "StitchLastTask.stitchForLast.createbmpResult"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    :cond_0
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setStithComplete(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
