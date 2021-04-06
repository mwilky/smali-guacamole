.class public Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source ""

# interfaces
.implements Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.WaittingPreviewState"


# instance fields
.field private mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

.field private mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getPreviewController()Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    return-void
.end method

.method private cutBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gtz v0, :cond_1

    return-object p1

    :cond_1
    sub-int/2addr v0, p2

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private updateLastCache()V
    .locals 8

    const-string v0, "Longshot.WaittingPreviewState"

    const-string v1, "checkPage start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->getPreviewLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v4}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v4}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    if-nez v2, :cond_0

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    :cond_0
    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    if-lt v3, v0, :cond_1

    sub-int v4, v3, v0

    move v6, v3

    move v3, v1

    move v1, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    if-lt v3, v0, :cond_3

    sub-int v1, v3, v0

    move v4, v1

    move v6, v3

    move v1, v5

    move v3, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    move v4, v2

    move v6, v3

    move v3, v4

    :goto_1
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_2
    if-le v1, v2, :cond_5

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v5}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    const-string v1, "Longshot.WaittingPreviewState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPage cache size:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v7}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " lastItemIndex:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " screenshotLength:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " previewLength:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cutSize:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->printStackTrace()V

    move-object v2, v1

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_6

    :try_start_3
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->cutBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v3

    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v4, v0, v1, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_4
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->cutBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v3

    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5, v1, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_4

    :goto_5
    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :goto_6
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_7
    const-string v0, "Longshot.WaittingPreviewState"

    const-string v1, "checkPage end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/BaseState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    const-string p1, "Longshot.WaittingPreviewState"

    const-string p2, "enter"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {p1, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->addCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;)V

    return-void
.end method

.method public onPreviewComplete()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s onPreviewComplete Configs.isLongshotRunning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isPreviewComplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.WaittingPreviewState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;->updateLastCache()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isPreviewStop:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    :cond_0
    const-string v0, "e onPreviewComplete:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
