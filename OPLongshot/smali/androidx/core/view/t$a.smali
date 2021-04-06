.class Landroidx/core/view/t$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/t;->g(Landroid/view/View;Landroidx/core/view/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/u;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/t;Landroidx/core/view/u;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Landroidx/core/view/t$a;->a:Landroidx/core/view/u;

    iput-object p3, p0, Landroidx/core/view/t$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/core/view/t$a;->a:Landroidx/core/view/u;

    iget-object v0, p0, Landroidx/core/view/t$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/u;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/core/view/t$a;->a:Landroidx/core/view/u;

    iget-object v0, p0, Landroidx/core/view/t$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/u;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/core/view/t$a;->a:Landroidx/core/view/u;

    iget-object v0, p0, Landroidx/core/view/t$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/u;->b(Landroid/view/View;)V

    return-void
.end method
