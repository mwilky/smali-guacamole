.class Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method private endFling(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->access$400(Lcom/oneplus/screenshot/longshot/widget/ImageView;)V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    const/4 v0, 0x0

    iput v0, p1, Lcom/oneplus/screenshot/longshot/widget/ImageView;->mTouchMode:I

    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget v2, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {v3, v2}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->access$200(Lcom/oneplus/screenshot/longshot/widget/ImageView;I)V

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    :goto_0
    return-void
.end method

.method public startUsingDistance(I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->startCommon()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-int v5, p1

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView;->access$300(Lcom/oneplus/screenshot/longshot/widget/ImageView;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->startCommon()V

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    iput v3, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lcom/oneplus/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    return-void
.end method
