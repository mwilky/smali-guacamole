.class public Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotNextState"


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureSuccess:Ljava/lang/Runnable;

.field private mGenBitmapCache:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/oneplus/compat/os/a;->a()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mBackgroundHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;

    invoke-direct {p1, p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mGenBitmapCache:Ljava/lang/Runnable;

    new-instance p1, Lcom/oneplus/screenshot/longshot/state/ShotNextState$2;

    invoke-direct {p1, p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState$2;-><init>(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mCaptureSuccess:Ljava/lang/Runnable;

    sget p1, Lcom/oneplus/screenshot/longshot/util/Configs;->levelShotNext:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_NEXT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mCaptureSuccess:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 2

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->stitchViewServiceUnsupportedCase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->WAITTING_PREVIEW:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getTopBase()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->processBitmapIfStitchByView(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/state/LongshotContext;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->blockLongshotByViewVisibility()Z

    move-result v0

    const-string v1, "Longshot.ShotNextState"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v3, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-interface {v0, v3, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    const-string v0, "unsupported blockScreenByViewVisibility"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->isBlockLongshotWithMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v3, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-interface {v0, v3, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    const-string v0, "blocked longshot: blockLongshotWithMessage"

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mGenBitmapCache:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateState()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateState cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.ShotNextState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
