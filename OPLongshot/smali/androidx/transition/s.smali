.class Landroidx/transition/s;
.super Landroidx/transition/w;
.source ""

# interfaces
.implements Landroidx/transition/t;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/w;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static c(Landroid/view/ViewGroup;)Landroidx/transition/s;
    .locals 0

    invoke-static {p0}, Landroidx/transition/w;->a(Landroid/view/View;)Landroidx/transition/w;

    move-result-object p0

    check-cast p0, Landroidx/transition/s;

    return-object p0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/w;->a:Landroidx/transition/w$a;

    invoke-virtual {v0, p1}, Landroidx/transition/w$a;->b(Landroid/view/View;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/w;->a:Landroidx/transition/w$a;

    invoke-virtual {v0, p1}, Landroidx/transition/w$a;->g(Landroid/view/View;)V

    return-void
.end method
