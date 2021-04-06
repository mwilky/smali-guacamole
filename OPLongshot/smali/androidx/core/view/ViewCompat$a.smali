.class final Landroidx/core/view/ViewCompat$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat;->s0(Landroid/view/View;Landroidx/core/view/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/m;


# direct methods
.method constructor <init>(Landroidx/core/view/m;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/ViewCompat$a;->a:Landroidx/core/view/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p2}, Landroidx/core/view/x;->j(Landroid/view/WindowInsets;)Landroidx/core/view/x;

    move-result-object p2

    iget-object v0, p0, Landroidx/core/view/ViewCompat$a;->a:Landroidx/core/view/m;

    invoke-interface {v0, p1, p2}, Landroidx/core/view/m;->a(Landroid/view/View;Landroidx/core/view/x;)Landroidx/core/view/x;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/x;->i()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
