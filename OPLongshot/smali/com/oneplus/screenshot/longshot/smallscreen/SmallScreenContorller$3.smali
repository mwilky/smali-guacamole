.class Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->getResetAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$100(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$200(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float/2addr v0, v3

    float-to-int p1, v0

    invoke-static {v1, p1, v2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->access$300(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;II)V

    return-void
.end method
