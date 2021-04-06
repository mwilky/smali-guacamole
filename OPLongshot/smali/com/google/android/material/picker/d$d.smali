.class Lcom/google/android/material/picker/d$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/picker/NumberPicker$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/d;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/d$d;->a:Lcom/google/android/material/picker/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/material/picker/d$d;->a:Lcom/google/android/material/picker/d;

    invoke-static {p2}, Lcom/google/android/material/picker/d;->p(Lcom/google/android/material/picker/d;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/google/android/material/picker/d$d;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->q(Lcom/google/android/material/picker/d;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/material/picker/d;->r(Lcom/google/android/material/picker/d;Z)Z

    iget-object p1, p0, Lcom/google/android/material/picker/d$d;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->s(Lcom/google/android/material/picker/d;)V

    iget-object p1, p0, Lcom/google/android/material/picker/d$d;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->t(Lcom/google/android/material/picker/d;)V

    return-void
.end method
