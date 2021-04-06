.class Lcom/oneplus/screenshot/GlobalScreenshot$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createSmallScreenshotEnlargeAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$scaleCenterX:F

.field final synthetic val$scaleCenterY:F

.field final synthetic val$startScaleX:F

.field final synthetic val$startScaleY:F


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->val$startScaleX:F

    iput p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->val$startScaleY:F

    iput p4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->val$scaleCenterX:F

    iput p5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->val$scaleCenterY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->val$startScaleX:F

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->val$startScaleY:F

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->val$scaleCenterX:F

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->val$scaleCenterY:F

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$13;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
