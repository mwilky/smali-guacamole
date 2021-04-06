.class Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->getTopBase()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget v2, v1, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v0, v2

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v2, v2, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget v3, v2, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v1, v3

    new-instance v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v0, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v1, v1, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$000(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$200(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;->this$0:Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->access$100(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
