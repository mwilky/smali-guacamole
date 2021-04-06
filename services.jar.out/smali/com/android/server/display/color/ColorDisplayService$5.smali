.class Lcom/android/server/display/color/ColorDisplayService$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->applyTintForColorTone(Lcom/android/server/display/color/TintController;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field final synthetic val$tintController:Lcom/android/server/display/color/TintController;

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;ILcom/android/server/display/color/TintController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$5;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput p2, p0, Lcom/android/server/display/color/ColorDisplayService$5;->val$to:I

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$5;->val$tintController:Lcom/android/server/display/color/TintController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$5;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$5;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$5;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService$5;->val$to:I

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2800(Lcom/android/server/display/color/ColorDisplayService;I)V

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$5;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2702(Lcom/android/server/display/color/ColorDisplayService;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$5;->val$tintController:Lcom/android/server/display/color/TintController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method
