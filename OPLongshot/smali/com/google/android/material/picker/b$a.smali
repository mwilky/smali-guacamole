.class Lcom/google/android/material/picker/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/picker/NumberPicker$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/b;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {v0}, Lcom/google/android/material/picker/b;->y(Lcom/google/android/material/picker/b;)V

    iget-object v0, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {v0}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    iget-object v1, v1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {v0}, Lcom/google/android/material/picker/b;->A(Lcom/google/android/material/picker/b;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    if-ne p3, v4, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {v0}, Lcom/google/android/material/picker/b;->B(Lcom/google/android/material/picker/b;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/16 p1, 0xb

    if-ne p2, p1, :cond_3

    if-nez p3, :cond_3

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-ne p3, p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p2}, Lcom/google/android/material/picker/b;->C(Lcom/google/android/material/picker/b;)Lcom/google/android/material/picker/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p3}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {v0}, Lcom/google/android/material/picker/b;->z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/picker/b;->D(Lcom/google/android/material/picker/b;III)V

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->E(Lcom/google/android/material/picker/b;)V

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->F(Lcom/google/android/material/picker/b;)V

    iget-object p1, p0, Lcom/google/android/material/picker/b$a;->a:Lcom/google/android/material/picker/b;

    invoke-static {p1}, Lcom/google/android/material/picker/b;->G(Lcom/google/android/material/picker/b;)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
