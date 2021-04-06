.class Lcom/oneplus/screenshot/GlobalScreenshot$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$endScaleCenterX:F

.field final synthetic val$endScaleCenterY:F

.field final synthetic val$endScaleX:F

.field final synthetic val$endScaleY:F

.field final synthetic val$scaleCenterX:F

.field final synthetic val$scaleCenterY:F

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$startScaleX:F

.field final synthetic val$startScaleY:F


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;FFLandroid/view/animation/Interpolator;FFFFFF)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleX:F

    iput p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$startScaleX:F

    iput-object p4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleY:F

    iput p6, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$startScaleY:F

    iput p7, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleCenterX:F

    iput p8, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleCenterX:F

    iput p9, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleCenterY:F

    iput p10, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleCenterY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleX:F

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$startScaleX:F

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleY:F

    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$startScaleY:F

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleCenterX:F

    iget v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleCenterX:F

    sub-float v4, v2, v4

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    sub-float v5, v3, v5

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$endScaleCenterY:F

    iget v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleCenterY:F

    sub-float v5, v4, v5

    iget-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v3, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v5}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method
