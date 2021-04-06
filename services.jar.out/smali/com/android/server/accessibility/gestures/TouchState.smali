.class public Lcom/android/server/accessibility/gestures/TouchState;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;,
        Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/gestures/TouchState$State;
    }
.end annotation


# static fields
.field public static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchState"

.field static final MAX_POINTER_COUNT:I = 0x20

.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_DELEGATING:I = 0x4

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_GESTURE_DETECTING:I = 0x5

.field public static final STATE_TOUCH_EXPLORING:I = 0x2

.field public static final STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedRawEvent:Landroid/view/MotionEvent;

.field private mLastTouchedWindowId:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    new-instance v0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "STATE_GESTURE_DETECTING"

    return-object v0

    :cond_1
    const-string v0, "STATE_DELEGATING"

    return-object v0

    :cond_2
    const-string v0, "STATE_DRAGGING"

    return-object v0

    :cond_3
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    :cond_4
    const-string v0, "STATE_TOUCH_INTERACTING"

    return-object v0

    :cond_5
    const-string v0, "STATE_CLEAR"

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    return-void
.end method

.method public getInjectedPointerDownCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastTouchedWindowId()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    return v0
.end method

.method public getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    return v0
.end method

.method public isClear()Z
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDelegating()Z
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDragging()Z
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGestureDetecting()Z
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInjectedPointerDown(I)Z
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchExploring()Z
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchInteracting()Z
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onInjectedAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_5

    const/16 v0, 0x400

    if-eq p1, v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startGestureDetecting()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchExploring()V

    nop

    :goto_0
    return-void
.end method

.method onInjectedMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v3, v2, v1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    not-int v4, v3

    and-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    if-nez v2, :cond_7

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    nop

    :cond_7
    :goto_0
    return-void
.end method

.method public onReceivedAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    nop

    :goto_0
    return-void
.end method

.method public onReceivedMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setState(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    return-void
.end method

.method public startDelegating()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public startDragging()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public startGestureDetecting()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public startTouchExploring()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public startTouchInteracting()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchState { mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
