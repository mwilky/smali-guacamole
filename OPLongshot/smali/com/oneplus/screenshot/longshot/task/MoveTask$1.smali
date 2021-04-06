.class Lcom/oneplus/screenshot/longshot/task/MoveTask$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/task/MoveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$100(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {v1, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->access$200(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V

    goto :goto_0

    :cond_0
    const-string p1, "Longshot.MoveTask"

    const-string v1, "cancel this check"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
