.class final Lcom/google/android/material/internal/ViewUtils$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/material/internal/ViewUtils$e;


# direct methods
.method constructor <init>(ZZZLcom/google/android/material/internal/ViewUtils$e;)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/ViewUtils$b;->a:Z

    iput-boolean p2, p0, Lcom/google/android/material/internal/ViewUtils$b;->b:Z

    iput-boolean p3, p0, Lcom/google/android/material/internal/ViewUtils$b;->c:Z

    iput-object p4, p0, Lcom/google/android/material/internal/ViewUtils$b;->d:Lcom/google/android/material/internal/ViewUtils$e;

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

    iget-boolean v0, p0, Lcom/google/android/material/internal/ViewUtils$b;->a:Z

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$f;->d:I

    invoke-virtual {p2}, Landroidx/core/view/x;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$f;->d:I

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$b;->b:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$f;->c:I

    invoke-virtual {p2}, Landroidx/core/view/x;->c()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$f;->c:I

    goto :goto_0

    :cond_1
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$f;->a:I

    invoke-virtual {p2}, Landroidx/core/view/x;->c()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$f;->a:I

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$b;->c:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$f;->a:I

    invoke-virtual {p2}, Landroidx/core/view/x;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$f;->a:I

    goto :goto_1

    :cond_3
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$f;->c:I

    invoke-virtual {p2}, Landroidx/core/view/x;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$f;->c:I

    :cond_4
    :goto_1
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$f;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/internal/ViewUtils$b;->d:Lcom/google/android/material/internal/ViewUtils$e;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/material/internal/ViewUtils$e;->a(Landroid/view/View;Landroidx/core/view/x;Lcom/google/android/material/internal/ViewUtils$f;)Landroidx/core/view/x;

    move-result-object p2

    :cond_5
    return-object p2
.end method
