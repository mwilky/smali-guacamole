.class final Lcom/android/server/wm/a$you;
.super Landroid/view/BatchedInputEventReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/a;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/a;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/a$you;->zta:Lcom/android/server/wm/a;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/wm/a$you;->zta:Lcom/android/server/wm/a;

    invoke-static {v2}, Lcom/android/server/wm/a;->zta(Lcom/android/server/wm/a;)Lcom/android/server/wm/a$sis;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/a$you;->zta:Lcom/android/server/wm/a;

    invoke-static {v2}, Lcom/android/server/wm/a;->zta(Lcom/android/server/wm/a;)Lcom/android/server/wm/a$sis;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/wm/a$sis;->zta(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
