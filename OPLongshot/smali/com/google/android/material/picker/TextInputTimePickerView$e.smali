.class Lcom/google/android/material/picker/TextInputTimePickerView$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TextInputTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/TextInputTimePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView$e;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lb/a/b/a/f;->am_label2:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView$e;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p1, v3}, Lcom/google/android/material/picker/TextInputTimePickerView;->g(Lcom/google/android/material/picker/TextInputTimePickerView;Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView$e;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->h(Lcom/google/android/material/picker/TextInputTimePickerView;)Lcom/google/android/material/picker/TextInputTimePickerView$f;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Lcom/google/android/material/picker/TextInputTimePickerView$f;->a(II)V

    goto :goto_0

    :cond_0
    sget v0, Lb/a/b/a/f;->pm_label2:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView$e;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p1, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->g(Lcom/google/android/material/picker/TextInputTimePickerView;Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView$e;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->h(Lcom/google/android/material/picker/TextInputTimePickerView;)Lcom/google/android/material/picker/TextInputTimePickerView$f;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Lcom/google/android/material/picker/TextInputTimePickerView$f;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method
