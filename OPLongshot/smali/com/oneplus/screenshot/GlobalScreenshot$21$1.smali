.class Lcom/oneplus/screenshot/GlobalScreenshot$21$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot$21;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object v1, v1, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2402(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$21$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$21;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot$21;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2500(Lcom/oneplus/screenshot/GlobalScreenshot;Z)V

    return-void
.end method
