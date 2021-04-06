.class Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetAnimListener"
.end annotation


# instance fields
.field private mDecor:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "Longshot.SaveState"

    const-string v0, "save animation end:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->mDecor:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    iget-object p1, p1, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;->this$0:Lcom/oneplus/screenshot/longshot/state/SaveState;

    iget-object p1, p1, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->stop()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "Longshot.SaveState"

    const-string v0, "save animation start:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
