.class Lcom/android/server/power/WakeLockLog$WakeLockLogHandler;
.super Landroid/os/Handler;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockLogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/WakeLockLog;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$WakeLockLogHandler;->this$0:Lcom/android/server/power/WakeLockLog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v11, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long v12, v2, v4

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$WakeLockLogHandler;->this$0:Lcom/android/server/power/WakeLockLog;

    move v3, v9

    move-object v4, v1

    move v5, v10

    move v6, v11

    move-wide v7, v12

    invoke-static/range {v2 .. v8}, Lcom/android/server/power/WakeLockLog;->access$1000(Lcom/android/server/power/WakeLockLog;ILjava/lang/String;IIJ)V

    nop

    :goto_0
    return-void
.end method
