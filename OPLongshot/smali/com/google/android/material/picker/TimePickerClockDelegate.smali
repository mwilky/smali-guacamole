.class Lcom/google/android/material/picker/TimePickerClockDelegate;
.super Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TimePickerClockDelegate$o;,
        Lcom/google/android/material/picker/TimePickerClockDelegate$n;,
        Lcom/google/android/material/picker/TimePickerClockDelegate$ChangeSource;
    }
.end annotation


# static fields
.field private static final W:[I


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/CharSequence;

.field private H:Z

.field private I:I

.field private J:F

.field private K:F

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private final P:Lcom/google/android/material/picker/RadialTimePickerView$a;

.field private final Q:Lcom/google/android/material/picker/TextInputTimePickerView$f;

.field private final R:Lcom/google/android/material/picker/NumericTextView$a;

.field private final S:Ljava/lang/Runnable;

.field private final T:Ljava/lang/Runnable;

.field private final U:Landroid/view/View$OnFocusChangeListener;

.field private final V:Landroid/view/View$OnClickListener;

.field private final f:Landroid/widget/LinearLayout;

.field private g:Landroid/view/Window;

.field private h:Z

.field private final i:Lcom/google/android/material/picker/NumericTextView;

.field private final j:Lcom/google/android/material/picker/NumericTextView;

.field private final k:Landroid/view/View;

.field private final l:Landroid/view/View;

.field private final m:Landroid/widget/RadioButton;

.field private final n:Landroid/widget/RadioButton;

.field private final o:Lcom/google/android/material/picker/RadialTimePickerView;

.field private final p:Landroid/widget/TextView;

.field private q:Z

.field private final r:Landroid/widget/ImageButton;

.field private final s:Landroid/widget/RelativeLayout;

.field private final t:Landroid/view/View;

.field private final u:Lcom/google/android/material/picker/TextInputTimePickerView;

.field private final v:Ljava/util/Calendar;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/picker/TimePickerClockDelegate;->W:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->h:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->q:Z

    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->y:Z

    new-instance v2, Lcom/google/android/material/picker/TimePickerClockDelegate$k;

    invoke-direct {v2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$k;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->P:Lcom/google/android/material/picker/RadialTimePickerView$a;

    new-instance v2, Lcom/google/android/material/picker/TimePickerClockDelegate$l;

    invoke-direct {v2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$l;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->Q:Lcom/google/android/material/picker/TextInputTimePickerView$f;

    new-instance v2, Lcom/google/android/material/picker/TimePickerClockDelegate$m;

    invoke-direct {v2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$m;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->R:Lcom/google/android/material/picker/NumericTextView$a;

    new-instance v2, Lcom/google/android/material/picker/TimePickerClockDelegate$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$a;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->S:Ljava/lang/Runnable;

    new-instance v2, Lcom/google/android/material/picker/TimePickerClockDelegate$b;

    invoke-direct {v2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$b;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->T:Ljava/lang/Runnable;

    new-instance v2, Lcom/google/android/material/picker/TimePickerClockDelegate$c;

    invoke-direct {v2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$c;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->U:Landroid/view/View$OnFocusChangeListener;

    new-instance v2, Lcom/google/android/material/picker/TimePickerClockDelegate$d;

    invoke-direct {v2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$d;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    iput-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->V:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    sget-object v3, Lb/a/b/a/l;->TimePicker:[I

    invoke-virtual {v2, p3, v3, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lb/a/b/a/j;->select_hours:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->w:Ljava/lang/String;

    sget v5, Lb/a/b/a/j;->select_minutes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->x:Ljava/lang/String;

    sget v4, Lb/a/b/a/l;->TimePicker_internalLayout:I

    sget v5, Lb/a/b/a/h;->op_time_picker_material:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    sget v3, Lb/a/b/a/f;->time_header:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$o;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/material/picker/TimePickerClockDelegate$o;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate$e;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v3, Lb/a/b/a/f;->hours:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/picker/NumericTextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->U:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->R:Lcom/google/android/material/picker/NumericTextView$a;

    invoke-virtual {v3, v4}, Lcom/google/android/material/picker/NumericTextView;->setOnDigitEnteredListener(Lcom/google/android/material/picker/NumericTextView$a;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$n;

    sget v6, Lb/a/b/a/j;->select_hours:I

    invoke-direct {v4, p2, v6}, Lcom/google/android/material/picker/TimePickerClockDelegate$n;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget v3, Lb/a/b/a/f;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->p:Landroid/widget/TextView;

    sget v3, Lb/a/b/a/f;->separator_shape:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    sget v3, Lb/a/b/a/f;->minutes:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/picker/NumericTextView;

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->U:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->R:Lcom/google/android/material/picker/NumericTextView$a;

    invoke-virtual {v3, v4}, Lcom/google/android/material/picker/NumericTextView;->setOnDigitEnteredListener(Lcom/google/android/material/picker/NumericTextView$a;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$n;

    sget v6, Lb/a/b/a/j;->select_minutes:I

    invoke-direct {v4, p2, v6}, Lcom/google/android/material/picker/TimePickerClockDelegate$n;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    const/16 v4, 0x3b

    invoke-virtual {v3, v0, v4}, Lcom/google/android/material/picker/NumericTextView;->setRange(II)V

    sget v3, Lb/a/b/a/f;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V

    sget v3, Lb/a/b/a/f;->separator:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    sget v3, Lb/a/b/a/f;->ampm_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    new-instance v4, Lcom/google/android/material/picker/TimePickerClockDelegate$o;

    invoke-direct {v4, v5}, Lcom/google/android/material/picker/TimePickerClockDelegate$o;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate$e;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v3, Lb/a/b/a/f;->time_header_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->l:Landroid/view/View;

    invoke-static {p2}, Lcom/google/android/material/picker/TimePicker;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    sget v6, Lb/a/b/a/f;->am_label:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    aget-object v6, v3, v0

    invoke-static {v6}, Lcom/google/android/material/picker/TimePickerClockDelegate;->Y(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    invoke-static {v4}, Lcom/google/android/material/picker/TimePickerClockDelegate;->R(Landroid/widget/TextView;)V

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    sget v6, Lb/a/b/a/f;->pm_label:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->Y(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    invoke-static {v3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->R(Landroid/widget/TextView;)V

    sget v3, Lb/a/b/a/l;->TimePicker_android_headerTimeTextAppearance:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    sget-object v6, Lcom/google/android/material/picker/TimePickerClockDelegate;->W:[I

    invoke-virtual {v4, v5, v6, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    sget v3, Lb/a/b/a/l;->TimePicker_headerTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sget v4, Lb/a/b/a/f;->input_header:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->p:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lb/a/b/a/g;->op_control_time_600:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->J:F

    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->K:F

    sget p2, Lb/a/b/a/f;->radial_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/picker/RadialTimePickerView;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p2, p3, p4, p5}, Lcom/google/android/material/picker/RadialTimePickerView;->r(Landroid/util/AttributeSet;II)V

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->P:Lcom/google/android/material/picker/RadialTimePickerView$a;

    invoke-virtual {p2, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->setOnValueSelectedListener(Lcom/google/android/material/picker/RadialTimePickerView$a;)V

    sget p2, Lb/a/b/a/f;->input_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/picker/TextInputTimePickerView;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->Q:Lcom/google/android/material/picker/TextInputTimePickerView$f;

    invoke-virtual {p2, p3}, Lcom/google/android/material/picker/TextInputTimePickerView;->setListener(Lcom/google/android/material/picker/TextInputTimePickerView$f;)V

    sget p2, Lb/a/b/a/f;->toggle_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->r:Landroid/widget/ImageButton;

    sget p2, Lb/a/b/a/f;->toggle_mode_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->f:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->r:Landroid/widget/ImageButton;

    new-instance p2, Lcom/google/android/material/picker/TimePickerClockDelegate$e;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$e;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->z:Z

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->s0()V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->c:Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->v:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->v:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-boolean p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->V(IIZI)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/TextInputTimePickerView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    return-object p0
.end method

.method static synthetic B(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method static synthetic C(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->S:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic D(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    return-object p0
.end method

.method static synthetic E(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->T:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic F(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->m0()V

    return-void
.end method

.method static synthetic G(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->j0()V

    return-void
.end method

.method static synthetic H(Lcom/google/android/material/picker/TimePickerClockDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->O:Z

    return p1
.end method

.method static synthetic I(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/RadialTimePickerView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    return-object p0
.end method

.method static synthetic J(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic K(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->U()V

    return-void
.end method

.method static synthetic L(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    return-object p0
.end method

.method static synthetic M(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->u0()V

    return-void
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->J:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->J:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->K:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$i;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$i;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$h;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$h;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->J:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->J:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->K:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->M:I

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->L:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->N:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$f;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$f;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private P()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->q(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$j;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$j;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private Q()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->q(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->I:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerClockDelegate$g;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerClockDelegate$g;-><init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static R(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private S()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private T(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    if-nez v0, :cond_0

    rem-int/lit8 p1, p1, 0xc

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->F:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    :cond_2
    :goto_0
    return p1
.end method

.method private U()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private V(IIZI)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    iput p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->B:I

    iput-boolean p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    invoke-direct {p0, p4}, Lcom/google/android/material/picker/TimePickerClockDelegate;->w0(I)V

    return-void
.end method

.method private static X(Ljava/lang/String;[C)I
    .locals 5

    array-length v0, p1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    aget-char v4, p1, v3

    if-ne v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static final Y(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private Z()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->d:Lcom/google/android/material/picker/TimePicker$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->o()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->c()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/material/picker/TimePicker$b;->a(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->e:Lcom/google/android/material/picker/TimePicker$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->o()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->c()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/material/picker/TimePicker$b;->a(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_1
    return-void
.end method

.method private a0(ILandroid/widget/TextView;)V
    .locals 1

    invoke-static {}, Lb/b/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private b0(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->n0(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->R(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->o()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->u0()V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->d:Lcom/google/android/material/picker/TimePicker$b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->o()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->c()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/material/picker/TimePicker$b;->a(Lcom/google/android/material/picker/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private c0(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->D:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->D:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/b/a/d;->op_control_margin_space6:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d0(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->T(IZ)V

    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->w:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    iget-object p3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->x:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    if-ne p1, v0, :cond_3

    move p3, v0

    :cond_3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setActivated(Z)V

    if-nez p1, :cond_4

    sget p1, Lb/a/b/a/k;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->a0(ILandroid/widget/TextView;)V

    sget p1, Lb/a/b/a/k;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    goto :goto_2

    :cond_4
    sget p1, Lb/a/b/a/k;->OPTextAppearance_Material_TimePicker_TimeLabel:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->a0(ILandroid/widget/TextView;)V

    sget p1, Lb/a/b/a/k;->OPTextAppearance_Material_TimePicker_TimeLabelUnActivated:I

    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->a0(ILandroid/widget/TextView;)V

    return-void
.end method

.method private f0(IIZ)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    invoke-direct {p0, p1, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->p0(IZ)V

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->o0()V

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentHour(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    const/16 v1, 0xc

    if-ge p1, v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->R(I)Z

    :cond_2
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->u0()V

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->Z()V

    return-void
.end method

.method private g0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setAmPmAtStart(Z)V

    return-void
.end method

.method private h0(II)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->B:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->B:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->q0(IZ)V

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->setCurrentMinute(I)V

    :cond_1
    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->u0()V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->Z()V

    return-void
.end method

.method private j0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->getHourView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private k0()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->O:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->L:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    sget v3, Lb/a/b/a/f;->hours:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    aget v3, v0, v1

    iput v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->L:I

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v3}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v4}, Lcom/google/android/material/picker/TextInputTimePickerView;->getInputBlock()Landroid/view/View;

    move-result-object v4

    sget v5, Lb/a/b/a/f;->input_hour:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->N:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->N:I

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->M:I

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-le v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->q:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->N()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->O()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->r:Landroid/widget/ImageButton;

    sget v1, Lb/a/b/a/e;->op_btn_clock_material:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->q:Z

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->P()V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->Q()V

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->r:Landroid/widget/ImageButton;

    sget v2, Lb/a/b/a/e;->op_btn_keyboard_key_material:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->q:Z

    :goto_3
    return-void
.end method

.method private l0(Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->H:Z

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->G:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->G:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->H:Z

    :cond_1
    return-void
.end method

.method private m0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method private n0(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private o0()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->c:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->c0(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->v0(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->g0(Z)V

    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->n0(I)V

    :goto_1
    return-void
.end method

.method static synthetic p(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->k0()V

    return-void
.end method

.method private p0(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->T(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->l0(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->g:Landroid/view/Window;

    return-object p0
.end method

.method private q0(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumericTextView;->setValue(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->l0(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/google/android/material/picker/TimePickerClockDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->h:Z

    return p0
.end method

.method private r0()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->c:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->X(Ljava/lang/String;[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, ":"

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->t(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method static synthetic s(Lcom/google/android/material/picker/TimePickerClockDelegate;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->f:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private s0()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->c:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    if-eqz v1, :cond_0

    const-string v1, "Hm"

    goto :goto_0

    :cond_0
    const-string v1, "hm"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v4, 0x48

    const/16 v5, 0x4b

    const/4 v6, 0x1

    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_2

    const/16 v8, 0x68

    if-eq v7, v8, :cond_2

    if-eq v7, v5, :cond_2

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v3, v6

    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v7, v0, :cond_3

    move v0, v6

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    move v7, v0

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->E:Z

    if-eq v7, v5, :cond_5

    if-ne v7, v4, :cond_6

    :cond_5
    move v2, v6

    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->F:Z

    xor-int/lit8 v0, v2, 0x1

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x17

    goto :goto_4

    :cond_7
    const/16 v1, 0xb

    :goto_4
    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/picker/NumericTextView;->setRange(II)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->E:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumericTextView;->setShowLeadingZeroes(Z)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->c:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/google/android/material/picker/TimePickerCompat24;->setHourFormat(Lcom/google/android/material/picker/TextInputTimePickerView;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    return-void
.end method

.method static synthetic t(Lcom/google/android/material/picker/TimePickerClockDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->z:Z

    return p0
.end method

.method private t0(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->B:I

    iget-boolean v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->O(IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->d0(IZZ)V

    return-void
.end method

.method static synthetic u(Lcom/google/android/material/picker/TimePickerClockDelegate;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->f0(IIZ)V

    return-void
.end method

.method private u0()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    iget v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    invoke-direct {p0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->T(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->B:I

    iget v3, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    iget-boolean v5, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->F:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/picker/TextInputTimePickerView;->u(IIIZZ)V

    return-void
.end method

.method static synthetic v(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->d0(IZZ)V

    return-void
.end method

.method private v0(Z)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->l:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lb/a/b/a/d;->op_control_margin_space6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method static synthetic w(Lcom/google/android/material/picker/TimePickerClockDelegate;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->T(I)I

    move-result p0

    return p0
.end method

.method private w0(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->o0()V

    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->p0(IZ)V

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->r0()V

    iget v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->B:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->q0(IZ)V

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->t0(I)V

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->u0()V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method static synthetic x(Lcom/google/android/material/picker/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/material/picker/TimePickerClockDelegate;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->h0(II)V

    return-void
.end method

.method static synthetic z(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->b0(I)V

    return-void
.end method


# virtual methods
.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    return v0
.end method

.method public a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 7

    new-instance v6, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->o()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->W()Z

    move-result v4

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->S()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-object v6
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public e0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->h:Z

    return-void
.end method

.method public f()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public g(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->f0(IIZ)V

    return-void
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    return-object v0
.end method

.method public i0(Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->g:Landroid/view/Window;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->y:Z

    return v0
.end method

.method public j(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->h0(II)V

    return-void
.end method

.method public l()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public m(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->u:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setIs24Hour(Z)V

    iget-boolean v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->o()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->A:I

    invoke-direct {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->s0()V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p1}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->w0(I)V

    :cond_0
    return-void
.end method

.method public n()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    return-object v0
.end method

.method public o()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->C:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v1}, Lcom/google/android/material/picker/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    const/4 v2, 0x1

    rem-int/lit8 v0, v0, 0xc

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0xc

    :cond_1
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->e()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->b()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->V(IIZI)V

    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->i:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->j:Lcom/google/android/material/picker/NumericTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->n:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->o:Lcom/google/android/material/picker/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate;->y:Z

    return-void
.end method
