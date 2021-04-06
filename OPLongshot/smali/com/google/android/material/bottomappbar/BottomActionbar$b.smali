.class Lcom/google/android/material/bottomappbar/BottomActionbar$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomActionbar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomActionbar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/x;Lcom/google/android/material/internal/ViewUtils$f;)Landroidx/core/view/x;
    .locals 3
    .param p2    # Landroidx/core/view/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/internal/ViewUtils$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->o0(Lcom/google/android/material/bottomappbar/BottomActionbar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-virtual {p2}, Landroidx/core/view/x;->b()I

    move-result p3

    invoke-static {p1, p3}, Lcom/google/android/material/bottomappbar/BottomActionbar;->p0(Lcom/google/android/material/bottomappbar/BottomActionbar;I)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->q0(Lcom/google/android/material/bottomappbar/BottomActionbar;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->r0(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p1

    invoke-virtual {p2}, Landroidx/core/view/x;->c()I

    move-result v1

    if-eq p1, v1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-virtual {p2}, Landroidx/core/view/x;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->s0(Lcom/google/android/material/bottomappbar/BottomActionbar;I)I

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->t0(Lcom/google/android/material/bottomappbar/BottomActionbar;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->T(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/x;->d()I

    move-result v2

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-virtual {p2}, Landroidx/core/view/x;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->U(Lcom/google/android/material/bottomappbar/BottomActionbar;I)I

    move v0, p3

    :cond_4
    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->V(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->W(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$b;->a:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->X(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    :cond_6
    return-object p2
.end method
