.class Lcom/google/android/material/picker/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/google/android/material/picker/d$c;->a:Lcom/google/android/material/picker/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/google/android/material/picker/d$c;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->q(Lcom/google/android/material/picker/d;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/picker/d;->r(Lcom/google/android/material/picker/d;Z)Z

    iget-object p1, p0, Lcom/google/android/material/picker/d$c;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->s(Lcom/google/android/material/picker/d;)V

    iget-object p1, p0, Lcom/google/android/material/picker/d$c;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->t(Lcom/google/android/material/picker/d;)V

    return-void
.end method
