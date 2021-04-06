.class public Lcom/oneplus/screenshot/longshot/state/ShotFirstState;
.super Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotFirstState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_FIRST_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    return-void
.end method


# virtual methods
.method public isFirstShot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->shouldStitchByView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->isFirstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v0

    iput-object p1, v0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->processBitmapIfStitchByView(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/state/LongshotContext;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isFirstShotByOldAlgo:Z

    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->updateState()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onStatusbarCaptureSuccess(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    return-void
.end method

.method protected updateState()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mOnStateListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;->updateState()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    :goto_0
    return-void
.end method
