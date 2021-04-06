.class Lcom/google/android/material/picker/YearPickerView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/YearPickerView$b;
    }
.end annotation


# static fields
.field private static final c:I


# instance fields
.field private a:Lcom/google/android/material/picker/YearPickerView$b;

.field private b:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lb/a/b/a/h;->op_year_label_text_view:I

    sput v0, Lcom/google/android/material/picker/YearPickerView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010524

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/picker/YearPickerView;->c:I

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lb/a/b/a/d;->datepicker_view_animator_height:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    sget p1, Lb/a/b/a/d;->datepicker_year_label_height:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    sget p1, Lb/a/b/a/f;->year_picker:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/NumberPicker;

    iput-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->b:Lcom/google/android/material/picker/NumberPicker;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/NumberPicker;->setSelectNumberCount(I)V

    iget-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->b:Lcom/google/android/material/picker/NumberPicker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/NumberPicker;->setWithoutSelectBoldText(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->b:Lcom/google/android/material/picker/NumberPicker;

    new-instance p2, Lcom/google/android/material/picker/YearPickerView$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/YearPickerView$a;-><init>(Lcom/google/android/material/picker/YearPickerView;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/NumberPicker;->setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$i;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/YearPickerView;->a:Lcom/google/android/material/picker/YearPickerView$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/picker/YearPickerView;->b:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/picker/YearPickerView$b;->a(Lcom/google/android/material/picker/YearPickerView;I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/material/picker/YearPickerView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->a:Lcom/google/android/material/picker/YearPickerView$b;

    return-void
.end method

.method public c(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/picker/YearPickerView;->b:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object p1, p0, Lcom/google/android/material/picker/YearPickerView;->b:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/YearPickerView;->b:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    return-void
.end method
