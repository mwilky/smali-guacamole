.class Lcom/oneplus/screenshot/GlobalScreenshot$31;
.super Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Z)V
    .locals 3

    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "onDragEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDragStart()V
    .locals 2

    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "onDragStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3200(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isToDelayScreenshotSave:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3300(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$31;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method
