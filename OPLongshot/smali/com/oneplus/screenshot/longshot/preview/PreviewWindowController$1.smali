.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    const-string v2, "Longshot.PreviewWindow"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/16 p1, 0xbb9

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "stitch timeout, stop stitch last"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$702(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$002(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " MSG_UPDATE_PREVIEW mPictureDrawable.getHeight():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mScrollContainer.getHeight():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isLastUpdate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getBitmapSize()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ge p1, v0, :cond_3

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->shouldStitchByView()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getBitmapSize()I

    move-result p1

    if-lt p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result p1

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    if-lt p1, v4, :cond_4

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I

    move-result p1

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$302(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$400(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Ljava/lang/Runnable;

    move-result-object v0

    sget v1, Lcom/oneplus/screenshot/longshot/util/Configs;->startScrollDelay:I

    int-to-long v3, v1

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_UPDATE_PREVIEW SCROLL_START_DELAY:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->startScrollDelay:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result p1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    if-ge p1, v1, :cond_5

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    goto/16 :goto_0

    :cond_5
    :goto_2
    return-void
.end method
