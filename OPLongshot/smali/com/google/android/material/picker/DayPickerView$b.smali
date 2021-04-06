.class Lcom/google/android/material/picker/DayPickerView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/DayPickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/DayPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerView$b;->a:Lcom/google/android/material/picker/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 4

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double p1, v0, v2

    const/high16 p3, 0x40800000    # 4.0f

    const/high16 v0, 0x3e800000    # 0.25f

    if-gez p1, :cond_1

    :cond_0
    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p3

    goto :goto_0

    :cond_1
    cmpl-float p1, p2, v0

    const/high16 v0, 0x3f400000    # 0.75f

    if-ltz p1, :cond_0

    cmpg-float p1, p2, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/material/picker/DayPickerView$b;->a:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/DayPickerView;->b(Lcom/google/android/material/picker/DayPickerView;)Lcom/google/android/material/picker/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/picker/c;->r()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x3

    if-lt p3, v0, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/SimpleMonthView;

    if-eqz p3, :cond_2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/picker/SimpleMonthView;->Q(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerView$b;->a:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/DayPickerView;->c(Lcom/google/android/material/picker/DayPickerView;I)V

    return-void
.end method
