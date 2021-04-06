.class Landroidx/appcompat/app/AppCompatDelegateImpl$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field private a:Landroidx/appcompat/view/a$a;

.field final synthetic b:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/view/a$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->a:Landroidx/appcompat/view/a$a;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->a:Landroidx/appcompat/view/a$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/a$a;->onActionItemClicked(Landroidx/appcompat/view/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->a:Landroidx/appcompat/view/a$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/a$a;->onCreateActionMode(Landroidx/appcompat/view/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/a;)V
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->a:Landroidx/appcompat/view/a$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/a$a;->onDestroyActionMode(Landroidx/appcompat/view/a;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    new-instance p1, Landroidx/animation/AnimatorSet;

    invoke-direct {p1}, Landroidx/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getCloseView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroidx/animation/f;->Y(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/animation/f;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->getCloseView()Landroid/view/View;

    move-result-object v2

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Landroidx/animation/f;->Y(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/animation/f;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroidx/animation/AnimatorSet;->K(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$d;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/animation/AnimatorSet$d;->a(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$d;

    invoke-virtual {v4, v2}, Landroidx/animation/AnimatorSet$d;->a(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$d;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->getMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v6, v6, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->getMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-array v7, v1, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v5, v7}, Landroidx/animation/f;->Y(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/animation/f;

    move-result-object v7

    new-array v8, v1, [F

    fill-array-data v8, :array_3

    invoke-static {v6, v3, v8}, Landroidx/animation/f;->Y(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/animation/f;

    move-result-object v6

    invoke-virtual {p1, v0}, Landroidx/animation/AnimatorSet;->K(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$d;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/animation/AnimatorSet$d;->a(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$d;

    invoke-virtual {v8, v6}, Landroidx/animation/AnimatorSet$d;->a(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroidx/animation/AnimatorSet;->P(J)Landroidx/animation/AnimatorSet;

    invoke-virtual {p1}, Landroidx/animation/AnimatorSet;->s()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->c(Landroid/view/View;)Landroidx/core/view/t;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/view/t;->a(F)Landroidx/core/view/t;

    invoke-virtual {v2, v0, v1}, Landroidx/core/view/t;->d(J)Landroidx/core/view/t;

    iput-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/t;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/t;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$k;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/t;->f(Landroidx/core/view/u;)Landroidx/core/view/t;

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/a;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->c(Landroidx/appcompat/view/a;)V

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/a;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->a:Landroidx/appcompat/view/a$a;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/a$a;->onPrepareActionMode(Landroidx/appcompat/view/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
