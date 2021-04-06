.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onPreviewShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I

    move-result p2

    sub-int/2addr p3, p5

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1102(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)I

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;->onScrollChanged(II)V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " onScrollChange canScrollVertically:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " getScrollY:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mMaxLength:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mUpdating:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " containerTop:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mScrollContainer h:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mMoveDistance:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Longshot.PreviewWindow"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {p1, p4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    :cond_1
    return-void
.end method
