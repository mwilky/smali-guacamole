.class Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;
.super Landroidx/core/view/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Landroidx/core/view/v;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->a:Z

    iput p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->b:I

    iget-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object p1, p1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/u;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/u;->a(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->d()V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->a:Z

    iget-object p1, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object p1, p1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/u;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/u;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->b:I

    iput-boolean v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->a:Z

    iget-object v0, p0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet$a;->c:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    return-void
.end method
