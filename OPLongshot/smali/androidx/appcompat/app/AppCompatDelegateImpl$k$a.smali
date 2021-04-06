.class Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;
.super Landroidx/core/view/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$k;->onDestroyActionMode(Landroidx/appcompat/view/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$k;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    invoke-direct {p0}, Landroidx/core/view/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->e0(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, La/a/f;->action_mode_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/t;->f(Landroidx/core/view/u;)Landroidx/core/view/t;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$k$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$k;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$k;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/t;

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->access$000(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    return-void
.end method
