.class final Lcom/google/android/material/internal/ViewUtils$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/view/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/ViewUtils$e;

.field final synthetic b:Lcom/google/android/material/internal/ViewUtils$f;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/ViewUtils$e;Lcom/google/android/material/internal/ViewUtils$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/ViewUtils$c;->a:Lcom/google/android/material/internal/ViewUtils$e;

    iput-object p2, p0, Lcom/google/android/material/internal/ViewUtils$c;->b:Lcom/google/android/material/internal/ViewUtils$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/x;)Landroidx/core/view/x;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/ViewUtils$c;->a:Lcom/google/android/material/internal/ViewUtils$e;

    new-instance v1, Lcom/google/android/material/internal/ViewUtils$f;

    iget-object v2, p0, Lcom/google/android/material/internal/ViewUtils$c;->b:Lcom/google/android/material/internal/ViewUtils$f;

    invoke-direct {v1, v2}, Lcom/google/android/material/internal/ViewUtils$f;-><init>(Lcom/google/android/material/internal/ViewUtils$f;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/ViewUtils$e;->a(Landroid/view/View;Landroidx/core/view/x;Lcom/google/android/material/internal/ViewUtils$f;)Landroidx/core/view/x;

    move-result-object p1

    return-object p1
.end method
