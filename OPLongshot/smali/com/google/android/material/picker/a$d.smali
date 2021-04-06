.class Lcom/google/android/material/picker/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/a;->I(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/a$d;->a:Lcom/google/android/material/picker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/a$d;->a:Lcom/google/android/material/picker/a;

    invoke-static {v0}, Lcom/google/android/material/picker/a;->B(Lcom/google/android/material/picker/a;)Lcom/google/android/material/picker/YearPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/google/android/material/picker/a$d;->a:Lcom/google/android/material/picker/a;

    invoke-static {v0}, Lcom/google/android/material/picker/a;->B(Lcom/google/android/material/picker/a;)Lcom/google/android/material/picker/YearPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method
