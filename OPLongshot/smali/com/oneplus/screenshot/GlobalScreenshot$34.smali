.class Lcom/oneplus/screenshot/GlobalScreenshot$34;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->playSmallScreenshotDropInAnimation()Landroid/view/animation/AnimationSet;
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

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string p1, "Longshot.GlobalScreenshot"

    const-string v0, "SmallScreenshotDropInAnimation end"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smallscreenContainer onAnimEnd width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$5500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$5500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v0, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsVoiceLongshot:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$34$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$34$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot$34;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string p1, "Longshot.GlobalScreenshot"

    const-string v1, "SmallScreenshotDropInAnimation start"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smallscreenContainer onAnimStart width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$5500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$5500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->isToDelayScreenshotSave:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$34;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4200(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v0, v2, v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$5600(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZLjava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method
