.class public Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;
.super Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/widget/EditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EditOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;


# direct methods
.method protected constructor <init>(Lcom/oneplus/screenshot/longshot/widget/EditView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;-><init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected getTouchMode(Landroid/view/MotionEvent;)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/widget/EditView;->access$100(Lcom/oneplus/screenshot/longshot/widget/EditView;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->getTouchMode(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget v1, v0, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    float-to-int p3, p4

    mul-int/lit8 p3, p3, -0x1

    invoke-static {p1, p3}, Lcom/oneplus/screenshot/longshot/widget/EditView;->access$000(Lcom/oneplus/screenshot/longshot/widget/EditView;I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lcom/oneplus/screenshot/longshot/widget/EditView;

    iget-boolean p3, p1, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mIsFirstScroll:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p1, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mIsFirstScroll:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/oneplus/screenshot/statistics/EventStatistics$Action;->DRAG_EDIT:Lcom/oneplus/screenshot/statistics/EventStatistics$Action;

    invoke-static {p1, p3}, Lcom/oneplus/screenshot/statistics/EventStatistics;->addAction(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Action;)V

    :cond_0
    return p2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
