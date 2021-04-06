.class Lcom/google/android/material/appbar/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/c;->f:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/c;->g:Z

    iput-object p1, p0, Lcom/google/android/material/appbar/c;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/c;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/c;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->T(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/c;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/c;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;I)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/c;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/c;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/c;->g:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/c;->f:Z

    return v0
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/c;->b:I

    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/c;->c:I

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/c;->g:Z

    return-void
.end method

.method public i(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/c;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/c;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/appbar/c;->e:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/c;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/c;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/c;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/appbar/c;->d:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/c;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/c;->f:Z

    return-void
.end method
