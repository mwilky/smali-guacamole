.class Lcom/google/android/material/internal/NavigationMenuPresenter$g;
.super Landroidx/recyclerview/widget/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/google/android/material/internal/NavigationMenuPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->a:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/m;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/d;)V
    .locals 1
    .param p2    # Landroidx/core/view/accessibility/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/m;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/d;)V

    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$g;->a:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object p1, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getRowCount()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroidx/core/view/accessibility/d$b;->a(IIZ)Landroidx/core/view/accessibility/d$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/d;->Y(Ljava/lang/Object;)V

    return-void
.end method