.class Landroidx/appcompat/app/AppCompatDelegateImpl$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/view/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/x;)Landroidx/core/view/x;
    .locals 4

    invoke-virtual {p2}, Landroidx/core/view/x;->e()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateStatusGuard(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroidx/core/view/x;->c()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/x;->d()I

    move-result v2

    invoke-virtual {p2}, Landroidx/core/view/x;->b()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/view/x;->h(IIII)Landroidx/core/view/x;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->U(Landroid/view/View;Landroidx/core/view/x;)Landroidx/core/view/x;

    move-result-object p1

    return-object p1
.end method
