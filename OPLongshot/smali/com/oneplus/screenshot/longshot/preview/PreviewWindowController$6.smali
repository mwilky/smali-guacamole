.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getScrollAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

.field final synthetic val$endMoveDistance:I


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    iput p2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->val$endMoveDistance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->val$endMoveDistance:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr p1, v0

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPreviewScrollDyValue(I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v1

    const/16 v2, 0xbb9

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$702(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string p1, "Longshot.PreviewWindow"

    const-string v0, "remove overscroll timeout checker"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$702(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method
