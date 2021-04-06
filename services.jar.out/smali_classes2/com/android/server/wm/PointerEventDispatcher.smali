.class public Lcom/android/server/wm/PointerEventDispatcher;
.super Landroid/view/InputEventReceiver;
.source "PointerEventDispatcher.java"


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManagerPolicyConstants$PointerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;)V
    .locals 1

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    iput-object v3, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    iget-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    :try_start_2
    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    invoke-interface {v4, v1}, Landroid/view/WindowManagerPolicyConstants$PointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PointerEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PointerEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method

.method public registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputEventListener: trying to register"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " twice."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputEventListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
