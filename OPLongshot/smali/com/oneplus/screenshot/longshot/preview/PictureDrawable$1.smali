.class Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$100(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$102(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$100(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$102(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$300(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$200(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$300(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$200(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
