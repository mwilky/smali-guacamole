.class Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverEnterAndMoveDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private final mRawEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SendHoverEnterAndMoveDelayed"

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isPending()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->run()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    iput p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iput p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$600(Lcom/android/server/accessibility/gestures/TouchExplorer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$400(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$400(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v6, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$400(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/MotionEvent;

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mRawEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/MotionEvent;

    iget v7, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPointerIdBits:I

    iget v8, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->mPolicyFlags:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverEnterAndMoveDelayed;->clear()V

    return-void
.end method
