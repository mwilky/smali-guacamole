.class public Lcom/oneplus/screenshot/longshot/task/UndoTask;
.super Lcom/oneplus/screenshot/longshot/task/JoinTask;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "UndoTask"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/JoinTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/oneplus/screenshot/longshot/match/Matcher;
    .locals 1

    new-instance v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onFailed(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)V
    .locals 0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected onJoin(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mMatcher:Lcom/oneplus/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/Matcher;->run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchData;->getCurrRange()Lcom/oneplus/screenshot/longshot/match/MatchRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/match/MatchRange;->getStart()I

    move-result v0

    sub-int/2addr v4, v0

    if-lez v4, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    :cond_1
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/JoinTask;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    :cond_3
    return v1
.end method
