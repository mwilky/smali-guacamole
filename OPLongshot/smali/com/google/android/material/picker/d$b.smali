.class Lcom/google/android/material/picker/d$b;
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

    iput-object p1, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->p(Lcom/google/android/material/picker/d;)V

    iget-object p1, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->u(Lcom/google/android/material/picker/d;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {v0}, Lcom/google/android/material/picker/d;->u(Lcom/google/android/material/picker/d;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->v(Lcom/google/android/material/picker/d;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-virtual {p2}, Lcom/google/android/material/picker/d;->x()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p2}, Lcom/google/android/material/picker/d;->q(Lcom/google/android/material/picker/d;)Z

    move-result p3

    :goto_0
    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/google/android/material/picker/d;->r(Lcom/google/android/material/picker/d;Z)Z

    iget-object p2, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p2}, Lcom/google/android/material/picker/d;->s(Lcom/google/android/material/picker/d;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p2}, Lcom/google/android/material/picker/d;->v(Lcom/google/android/material/picker/d;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_1
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->v(Lcom/google/android/material/picker/d;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-virtual {p2}, Lcom/google/android/material/picker/d;->x()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p2}, Lcom/google/android/material/picker/d;->q(Lcom/google/android/material/picker/d;)Z

    move-result p3

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/picker/d$b;->a:Lcom/google/android/material/picker/d;

    invoke-static {p1}, Lcom/google/android/material/picker/d;->t(Lcom/google/android/material/picker/d;)V

    return-void
.end method
