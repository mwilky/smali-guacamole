.class Lcom/google/android/material/tabbar/TabBarItemView$b$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarItemView$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/tabbar/TabBarItemView$b$a;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarItemView$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView$b$a$a;->a:Lcom/google/android/material/tabbar/TabBarItemView$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView$b$a$a;->a:Lcom/google/android/material/tabbar/TabBarItemView$b$a;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarItemView$b$a;->a:Lcom/google/android/material/tabbar/TabBarItemView$b;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarItemView$b;->a:Lcom/google/android/material/tabbar/TabBarItemView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/android/material/tabbar/TabBarItemView;->access$200(Lcom/google/android/material/tabbar/TabBarItemView;I)V

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView$b$a$a;->a:Lcom/google/android/material/tabbar/TabBarItemView$b$a;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarItemView$b$a;->a:Lcom/google/android/material/tabbar/TabBarItemView$b;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarItemView$b;->a:Lcom/google/android/material/tabbar/TabBarItemView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarItemView;->access$000(Lcom/google/android/material/tabbar/TabBarItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
