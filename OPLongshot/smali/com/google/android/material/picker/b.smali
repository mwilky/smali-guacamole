.class Lcom/google/android/material/picker/b;
.super Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;
.source ""


# instance fields
.field private final g:Landroid/widget/LinearLayout;

.field private final h:Lcom/google/android/material/picker/NumberPicker;

.field private final i:Lcom/google/android/material/picker/NumberPicker;

.field private final j:Lcom/google/android/material/picker/NumberPicker;

.field private final k:Landroid/widget/EditText;

.field private final l:Landroid/widget/EditText;

.field private final m:Landroid/widget/EditText;

.field private final n:Landroid/widget/CalendarView;

.field private o:[Ljava/lang/String;

.field private final p:Ljava/text/DateFormat;

.field private q:I

.field private r:Ljava/util/Calendar;

.field private s:Ljava/util/Calendar;

.field private t:Ljava/util/Calendar;

.field private u:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/picker/b;->p:Ljava/text/DateFormat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/picker/b;->u:Z

    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    iput-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/b;->x(Ljava/util/Locale;)V

    sget-object p1, Lb/a/b/a/l;->DatePicker:[I

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p3, Lb/a/b/a/l;->DatePicker_android_spinnersShown:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    sget p4, Lb/a/b/a/l;->DatePicker_android_calendarViewShown:I

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    sget p5, Lb/a/b/a/l;->DatePicker_android_startYear:I

    const/16 v1, 0x76c

    invoke-virtual {p1, p5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    sget v1, Lb/a/b/a/l;->DatePicker_android_endYear:I

    const/16 v2, 0x834

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lb/a/b/a/l;->DatePicker_android_minDate:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lb/a/b/a/l;->DatePicker_android_maxDate:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lb/a/b/a/l;->DatePicker_legacyLayout:I

    sget v5, Lb/a/b/a/h;->op_date_picker_legacy:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    new-instance p1, Lcom/google/android/material/picker/b$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/picker/b$a;-><init>(Lcom/google/android/material/picker/b;)V

    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    sget v5, Lb/a/b/a/f;->pickers:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/google/android/material/picker/b;->g:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    sget v5, Lb/a/b/a/f;->calendar_view:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CalendarView;

    iput-object v4, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    new-instance v5, Lcom/google/android/material/picker/b$b;

    invoke-direct {v5, p0}, Lcom/google/android/material/picker/b$b;-><init>(Lcom/google/android/material/picker/b;)V

    invoke-virtual {v4, v5}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    sget v5, Lb/a/b/a/f;->day:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/picker/NumberPicker;

    iput-object v4, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {}, Lcom/google/android/material/picker/NumberPicker;->getTwoDigitFormatter()Lcom/google/android/material/picker/NumberPicker$g;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/picker/NumberPicker;->setFormatter(Lcom/google/android/material/picker/NumberPicker$g;)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/picker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v4, p1}, Lcom/google/android/material/picker/NumberPicker;->setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$i;)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    sget v7, Lb/a/b/a/f;->numberpicker_input:I

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/material/picker/b;->k:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    sget v7, Lb/a/b/a/f;->month:I

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/picker/NumberPicker;

    iput-object v4, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v4, p2}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    iget v7, p0, Lcom/google/android/material/picker/b;->q:I

    sub-int/2addr v7, v0

    invoke-virtual {v4, v7}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    iget-object v7, p0, Lcom/google/android/material/picker/b;->o:[Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/material/picker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    const-wide/16 v7, 0xc8

    invoke-virtual {v4, v7, v8}, Lcom/google/android/material/picker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v4, p1}, Lcom/google/android/material/picker/NumberPicker;->setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$i;)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    sget v7, Lb/a/b/a/f;->numberpicker_input:I

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/material/picker/b;->l:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    sget v7, Lb/a/b/a/f;->year:I

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/picker/NumberPicker;

    iput-object v4, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/material/picker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v4, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v4, p1}, Lcom/google/android/material/picker/NumberPicker;->setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$i;)V

    iget-object p1, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    sget v4, Lb/a/b/a/f;->numberpicker_input:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/google/android/material/picker/b;->m:Landroid/widget/EditText;

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/b;->o(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/material/picker/b;->o(Z)V

    invoke-virtual {p0, p4}, Lcom/google/android/material/picker/b;->e(Z)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lcom/google/android/material/picker/b;->M(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-virtual {p1, p5, p2, v0}, Ljava/util/Calendar;->set(III)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/picker/b;->s(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p2, 0x1f

    const/16 p3, 0xb

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-direct {p0, v3, p1}, Lcom/google/android/material/picker/b;->M(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-virtual {p1, v1, p3, p2}, Ljava/util/Calendar;->set(III)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/picker/b;->q(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 p4, 0x5

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/picker/b;->J(IIILcom/google/android/material/picker/DatePicker$c;)V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->N()V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic A(Lcom/google/android/material/picker/b;)Lcom/google/android/material/picker/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    return-object p0
.end method

.method static synthetic B(Lcom/google/android/material/picker/b;)Lcom/google/android/material/picker/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    return-object p0
.end method

.method static synthetic C(Lcom/google/android/material/picker/b;)Lcom/google/android/material/picker/NumberPicker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    return-object p0
.end method

.method static synthetic D(Lcom/google/android/material/picker/b;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/b;->O(III)V

    return-void
.end method

.method static synthetic E(Lcom/google/android/material/picker/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->S()V

    return-void
.end method

.method static synthetic F(Lcom/google/android/material/picker/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->Q()V

    return-void
.end method

.method static synthetic G(Lcom/google/android/material/picker/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->L()V

    return-void
.end method

.method private H(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private K(III)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private L()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->e:Lcom/google/android/material/picker/DatePicker$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->l()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->m()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->p()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/material/picker/DatePicker$c;->a(Lcom/google/android/material/picker/DatePicker;III)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->f:Lcom/google/android/material/picker/DatePicker$c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->l()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->m()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->p()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/material/picker/DatePicker$c;->a(Lcom/google/android/material/picker/DatePicker;III)V

    :cond_1
    return-void
.end method

.method private M(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/picker/b;->p:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private N()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/b;->I(Ljava/lang/String;)[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/material/picker/b;->g:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/picker/b;->g:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/material/picker/b;->g:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    :goto_1
    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/material/picker/b;->P(Lcom/google/android/material/picker/NumberPicker;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private O(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    :goto_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private P(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    :goto_0
    sget p3, Lb/a/b/a/f;->numberpicker_input:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private Q()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method private R()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/picker/b;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/picker/b;->m:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/b;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/b;->l:Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/picker/b;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/picker/b;->k:Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private S()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    iget-object v6, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    iget-object v6, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/google/android/material/picker/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/google/android/material/picker/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    iget-object v6, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    iget-object v6, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/google/android/material/picker/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    iget-object v6, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/google/android/material/picker/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/google/android/material/picker/NumberPicker;->setWrapSelectorWheel(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/picker/b;->o:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v6}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/google/android/material/picker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/google/android/material/picker/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/picker/b;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_2
    return-void
.end method

.method private T()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/b;->o:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method static synthetic y(Lcom/google/android/material/picker/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->R()V

    return-void
.end method

.method static synthetic z(Lcom/google/android/material/picker/b;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    return-object p0
.end method


# virtual methods
.method public I(Ljava/lang/String;)[C
    .locals 12

    const/4 v0, 0x3

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    const/4 v11, 0x1

    if-eq v6, v10, :cond_7

    if-eq v6, v7, :cond_7

    if-eq v6, v9, :cond_7

    if-ne v6, v8, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v7, 0x47

    if-ne v6, v7, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v7, 0x61

    if-lt v6, v7, :cond_2

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3

    :cond_2
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad pattern character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const/16 v7, 0x27

    if-ne v6, v7, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v11

    if-ge v1, v6, :cond_5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_5

    move v1, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad quoting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    if-ne v6, v10, :cond_8

    if-nez v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    aput-char v10, v0, v2

    move v2, v3

    move v3, v11

    goto :goto_3

    :cond_8
    if-eq v6, v7, :cond_9

    if-ne v6, v9, :cond_a

    :cond_9
    if-nez v4, :cond_a

    add-int/lit8 v4, v2, 0x1

    aput-char v9, v0, v2

    move v2, v4

    move v4, v11

    goto :goto_3

    :cond_a
    if-ne v6, v8, :cond_b

    if-nez v5, :cond_b

    add-int/lit8 v5, v2, 0x1

    aput-char v8, v0, v2

    move v2, v5

    move v5, v11

    :cond_b
    :goto_3
    add-int/2addr v1, v11

    goto/16 :goto_0

    :cond_c
    return-object v0
.end method

.method public J(IIILcom/google/android/material/picker/DatePicker$c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/b;->O(III)V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->S()V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->Q()V

    iput-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->e:Lcom/google/android/material/picker/DatePicker$c;

    return-void
.end method

.method public a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10

    new-instance v9, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->l()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->m()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->p()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->u()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/material/picker/b;->h()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    return-object v9
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setVisibility(I)V

    return-void
.end method

.method public h()Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/b;->u:Z

    return v0
.end method

.method public j(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/b;->K(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/b;->O(III)V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->S()V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->Q()V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->L()V

    return-void
.end method

.method public k(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public n()Landroid/widget/CalendarView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/b;->x(Ljava/util/Locale;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->g()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/picker/b;->O(III)V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->S()V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->Q()V

    :cond_0
    return-void
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public q(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->Q()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/b;->S()V

    return-void
.end method

.method public s(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->Q()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/b;->S()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/b;->h:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->i:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->j:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/google/android/material/picker/b;->u:Z

    return-void
.end method

.method public u()Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/b;->n:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method protected x(Ljava/util/Locale;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->x(Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/b;->H(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/b;->H(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/b;->s:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/b;->H(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/b;->t:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/b;->H(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/google/android/material/picker/b;->r:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/picker/b;->q:I

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/b;->o:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/material/picker/b;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/picker/b;->q:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/material/picker/b;->o:[Ljava/lang/String;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    iget v2, p0, Lcom/google/android/material/picker/b;->q:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/picker/b;->o:[Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, p1

    const-string v5, "%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return-void
.end method
