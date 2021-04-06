.class Landroidx/customview/widget/ExploreByTouchHelper$a;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroidx/customview/widget/ExploreByTouchHelper;


# direct methods
.method constructor <init>(Landroidx/customview/widget/ExploreByTouchHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$a;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/view/accessibility/d;
    .locals 1

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$a;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->n(I)Landroidx/core/view/accessibility/d;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/accessibility/d;->K(Landroidx/core/view/accessibility/d;)Landroidx/core/view/accessibility/d;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Landroidx/core/view/accessibility/d;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$a;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    iget p1, p1, Landroidx/customview/widget/ExploreByTouchHelper;->h:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/customview/widget/ExploreByTouchHelper$a;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    iget p1, p1, Landroidx/customview/widget/ExploreByTouchHelper;->i:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$a;->a(I)Landroidx/core/view/accessibility/d;

    move-result-object p1

    return-object p1
.end method

.method public e(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroidx/customview/widget/ExploreByTouchHelper$a;->b:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->u(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
