.class Landroidx/core/view/t$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/t;->i(Landroidx/core/view/w;)Landroidx/core/view/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/w;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/t;Landroidx/core/view/w;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Landroidx/core/view/t$b;->a:Landroidx/core/view/w;

    iput-object p3, p0, Landroidx/core/view/t$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Landroidx/core/view/t$b;->a:Landroidx/core/view/w;

    iget-object v0, p0, Landroidx/core/view/t$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/w;->a(Landroid/view/View;)V

    return-void
.end method
