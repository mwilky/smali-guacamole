.class Lcom/google/android/material/picker/TextInputTimePickerView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    iput-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->b(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setActivated(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->a(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setActivated(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    sget v2, Lb/a/b/a/k;->OPTextAppearance_Material_TimePicker_InputFieldUnActive:I

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->a(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/material/picker/TextInputTimePickerView;->c(Lcom/google/android/material/picker/TextInputTimePickerView;ILandroid/widget/TextView;)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    sget v2, Lb/a/b/a/k;->OPTextAppearance_Material_TimePicker_InputField:I

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->b(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/material/picker/TextInputTimePickerView;->c(Lcom/google/android/material/picker/TextInputTimePickerView;ILandroid/widget/TextView;)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->b(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {v2}, Lcom/google/android/material/picker/TextInputTimePickerView;->d(Lcom/google/android/material/picker/TextInputTimePickerView;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->a(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {v2}, Lcom/google/android/material/picker/TextInputTimePickerView;->d(Lcom/google/android/material/picker/TextInputTimePickerView;)[I

    move-result-object v2

    aget v0, v2, v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->e(Lcom/google/android/material/picker/TextInputTimePickerView;Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$b;->a:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->f(Lcom/google/android/material/picker/TextInputTimePickerView;Landroid/view/View;)V

    :cond_0
    return-void
.end method