.class Lcom/google/android/material/picker/a;
.super Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;
.source ""


# static fields
.field private static final E:[I

.field private static final F:Landroid/media/AudioAttributes;


# instance fields
.field private A:I

.field private final B:Lcom/google/android/material/picker/DayPickerView$d;

.field private final C:Lcom/google/android/material/picker/YearPickerView$b;

.field private final D:Landroid/view/View$OnClickListener;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/LinearLayout;

.field private j:Ljava/text/SimpleDateFormat;

.field private k:Ljava/text/SimpleDateFormat;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ViewAnimator;

.field private q:Lcom/google/android/material/picker/DayPickerView;

.field private r:Lcom/google/android/material/picker/YearPickerView;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private final v:Ljava/util/Calendar;

.field private final w:Ljava/util/Calendar;

.field private final x:Ljava/util/Calendar;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010098

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/picker/a;->E:[I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/a;->F:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/picker/a;->u:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/picker/a;->y:I

    new-instance p2, Lcom/google/android/material/picker/a$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/a$a;-><init>(Lcom/google/android/material/picker/a;)V

    iput-object p2, p0, Lcom/google/android/material/picker/a;->B:Lcom/google/android/material/picker/DayPickerView$d;

    new-instance p2, Lcom/google/android/material/picker/a$b;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/a$b;-><init>(Lcom/google/android/material/picker/a;)V

    iput-object p2, p0, Lcom/google/android/material/picker/a;->C:Lcom/google/android/material/picker/YearPickerView$b;

    new-instance p2, Lcom/google/android/material/picker/a$c;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/a$c;-><init>(Lcom/google/android/material/picker/a;)V

    iput-object p2, p0, Lcom/google/android/material/picker/a;->D:Landroid/view/View$OnClickListener;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->d:Ljava/util/Locale;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    const/16 v0, 0x76c

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Ljava/util/Calendar;->set(III)V

    iget-object p2, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    const/16 v0, 0x834

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {p2, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    sget-object v2, Lb/a/b/a/l;->DatePicker:[I

    invoke-virtual {v0, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    const-string p5, "layout_inflater"

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/LayoutInflater;

    sget p5, Lb/a/b/a/l;->DatePicker_internalLayout:I

    sget v0, Lb/a/b/a/h;->op_date_picker_material:I

    invoke-virtual {p3, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p4, p5, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/material/picker/a;->l:Landroid/view/ViewGroup;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    iget-object p5, p0, Lcom/google/android/material/picker/a;->l:Landroid/view/ViewGroup;

    invoke-virtual {p4, p5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p4, p0, Lcom/google/android/material/picker/a;->l:Landroid/view/ViewGroup;

    sget p5, Lb/a/b/a/f;->date_picker_header:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    sget p5, Lb/a/b/a/f;->date_picker_header_year:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    sget p5, Lb/a/b/a/f;->date_picker_year_selection:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/material/picker/a;->g:Landroid/view/View;

    sget p5, Lb/a/b/a/f;->date_picker_selection_layout:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/google/android/material/picker/a;->i:Landroid/widget/LinearLayout;

    iget-object p5, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/picker/a;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p5, Lb/a/b/a/f;->date_picker_header_date:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    sget p5, Lb/a/b/a/f;->date_picker_month_selection:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/material/picker/a;->h:Landroid/view/View;

    iget-object p5, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/picker/a;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p5, Lb/a/b/a/f;->date_picker_header_lunar:I

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/a;->o:Landroid/widget/TextView;

    sget p4, Lb/a/b/a/l;->DatePicker_android_headerMonthTextAppearance:I

    invoke-virtual {p3, p4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eqz p4, :cond_0

    iget-object p5, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    const/4 v0, 0x0

    sget-object v2, Lcom/google/android/material/picker/a;->E:[I

    invoke-virtual {p5, v0, v2, p1, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    sget p4, Lb/a/b/a/l;->DatePicker_headerTextColor:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p5, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p5, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p3, p0, Lcom/google/android/material/picker/a;->l:Landroid/view/ViewGroup;

    sget p4, Lb/a/b/a/f;->animator:I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ViewAnimator;

    iput-object p3, p0, Lcom/google/android/material/picker/a;->p:Landroid/widget/ViewAnimator;

    sget p4, Lb/a/b/a/f;->date_picker_day_picker:I

    invoke-virtual {p3, p4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/DayPickerView;

    iput-object p3, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    iget p4, p0, Lcom/google/android/material/picker/a;->y:I

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/DayPickerView;->q(I)V

    iget-object p3, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->s(J)V

    iget-object p3, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->r(J)V

    iget-object p3, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/DayPickerView;->n(J)V

    iget-object p3, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/a;->B:Lcom/google/android/material/picker/DayPickerView$d;

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/DayPickerView;->t(Lcom/google/android/material/picker/DayPickerView$d;)V

    iget-object p3, p0, Lcom/google/android/material/picker/a;->p:Landroid/widget/ViewAnimator;

    sget p4, Lb/a/b/a/f;->date_picker_year_picker:I

    invoke-virtual {p3, p4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/YearPickerView;

    iput-object p3, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    iget-object p5, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {p3, p4, p5}, Lcom/google/android/material/picker/YearPickerView;->c(Ljava/util/Calendar;Ljava/util/Calendar;)V

    iget-object p3, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/YearPickerView;->d(I)V

    iget-object p3, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    iget-object p4, p0, Lcom/google/android/material/picker/a;->C:Lcom/google/android/material/picker/YearPickerView$b;

    invoke-virtual {p3, p4}, Lcom/google/android/material/picker/YearPickerView;->b(Lcom/google/android/material/picker/YearPickerView$b;)V

    sget p3, Lb/a/b/a/j;->select_day:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/picker/a;->s:Ljava/lang/String;

    sget p3, Lb/a/b/a/j;->select_year:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/a;->t:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->d:Ljava/util/Locale;

    invoke-virtual {p0, p2}, Lcom/google/android/material/picker/a;->w(Ljava/util/Locale;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/a;->I(I)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/material/picker/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/a;->I(I)V

    return-void
.end method

.method static synthetic B(Lcom/google/android/material/picker/a;)Lcom/google/android/material/picker/YearPickerView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    return-object p0
.end method

.method private C(Z)V
    .locals 10

    iget v0, p0, Lcom/google/android/material/picker/a;->A:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/material/picker/a;->z:I

    if-lez v0, :cond_3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget v1, p0, Lcom/google/android/material/picker/a;->A:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/picker/a;->z:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/picker/a;->h:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x0

    aput v6, v4, v7

    if-eqz p1, :cond_1

    move v1, v5

    :cond_1
    const/4 v5, 0x1

    aput v1, v4, v5

    const-string v1, "scaleY"

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/picker/a;->h:Landroid/view/View;

    new-array v4, v5, [F

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/a;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v6, p0, Lcom/google/android/material/picker/a;->h:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr p1, v6

    int-to-float p1, p1

    iget v6, p0, Lcom/google/android/material/picker/a;->z:I

    iget v8, p0, Lcom/google/android/material/picker/a;->A:I

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float/2addr p1, v6

    :goto_1
    aput p1, v4, v7

    const-string p1, "translationY"

    invoke-static {v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v8, 0x7d

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v2, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v1, v2, v7

    aput-object p1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method

.method public static E(II)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    :pswitch_1
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    const/16 p0, 0x1d

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    :goto_0
    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private F()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/a;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/a;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/a;->z:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/a;->A:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/picker/a;->k:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/a;->z:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/picker/a;->j:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/a;->A:I

    iget-object v0, p0, Lcom/google/android/material/picker/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/google/android/material/picker/a;->A:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/google/android/material/picker/a;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/google/android/material/picker/a;->z:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/a;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/b/a/d;->op_control_margin_space2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/picker/a;->z:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/google/android/material/picker/a;->h:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/b/a/d;->op_control_margin_list_top2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/google/android/material/picker/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private G(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/a;->j:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->k:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/material/picker/a;->K()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/a;->p:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private H(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->e:Lcom/google/android/material/picker/DatePicker$c;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->f:Lcom/google/android/material/picker/DatePicker$c;

    if-eqz p2, :cond_2

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->e:Lcom/google/android/material/picker/DatePicker$c;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-interface {v3, v4, v0, p2, v2}, Lcom/google/android/material/picker/DatePicker$c;->a(Lcom/google/android/material/picker/DatePicker;III)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->f:Lcom/google/android/material/picker/DatePicker$c;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    invoke-interface {v3, v4, v0, p2, v2}, Lcom/google/android/material/picker/DatePicker$c;->a(Lcom/google/android/material/picker/DatePicker;III)V

    :cond_2
    iget-object p2, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3, v1}, Lcom/google/android/material/picker/DayPickerView;->o(JZ)V

    iget-object p2, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {p2, v0}, Lcom/google/android/material/picker/YearPickerView;->d(I)V

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/a;->G(Z)V

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/picker/a;->J()V

    :cond_3
    return-void
.end method

.method private I(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/picker/a;->D()V

    iget-object v2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {v3, v2}, Lcom/google/android/material/picker/YearPickerView;->d(I)V

    iget-object v2, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    new-instance v3, Lcom/google/android/material/picker/a$d;

    invoke-direct {v3, p0}, Lcom/google/android/material/picker/a$d;-><init>(Lcom/google/android/material/picker/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget v2, p0, Lcom/google/android/material/picker/a;->u:I

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v2, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/a;->C(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->p:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lcom/google/android/material/picker/a;->u:I

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/a;->p:Landroid/widget/ViewAnimator;

    iget-object v0, p0, Lcom/google/android/material/picker/a;->t:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    iget-object v3, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/picker/DayPickerView;->n(J)V

    iget v2, p0, Lcom/google/android/material/picker/a;->u:I

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    invoke-direct {p0, v1}, Lcom/google/android/material/picker/a;->C(Z)V

    iget-object v1, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    iget-object v1, p0, Lcom/google/android/material/picker/a;->p:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lcom/google/android/material/picker/a;->u:I

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/picker/a;->p:Landroid/widget/ViewAnimator;

    iget-object v0, p0, Lcom/google/android/material/picker/a;->s:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private J()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-static {}, Lb/b/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/os/VibrationEffect;

    const-string v1, "EFFECT_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/os/VibrationEffect;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    sget-object v2, Lcom/google/android/material/picker/a;->F:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :goto_0
    return-void
.end method

.method private K()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/picker/e/b;->f(Ljava/util/Calendar;)Lcom/google/android/material/picker/e/a;

    move-result-object v1

    const-string v2, "zh_CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/a;->o:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "\u519c\u5386\uff1a"

    goto :goto_0

    :cond_0
    const-string v0, "\u8fb2\u66c6\uff1a"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/picker/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/a;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic y(Lcom/google/android/material/picker/a;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/a;->H(ZZ)V

    return-void
.end method

.method static synthetic z(Lcom/google/android/material/picker/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/a;->J()V

    return-void
.end method


# virtual methods
.method public D()V
    .locals 5

    iget v0, p0, Lcom/google/android/material/picker/a;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/a;->F()V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 14

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v0, p0, Lcom/google/android/material/picker/a;->u:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0}, Lcom/google/android/material/picker/DayPickerView;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v12, v0

    new-instance v0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v1, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    iget v11, p0, Lcom/google/android/material/picker/a;->u:I

    const/4 v13, -0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/a;->y:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public h()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/a;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public j(III)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/picker/a;->H(ZZ)V

    return-void
.end method

.method public k(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/picker/a;->y:I

    iget-object v0, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/DayPickerView;->q(I)V

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
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(Z)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->x(Ljava/util/Locale;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    instance-of v0, p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->h()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->g()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/a;->G(Z)V

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/a;->I(I)V

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/picker/DayPickerView;->u(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;->d()I

    :cond_1
    :goto_0
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
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/a;->H(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/DayPickerView;->r(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    iget-object p2, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/picker/YearPickerView;->c(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method public s(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/google/android/material/picker/a;->v:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/a;->H(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/DayPickerView;->s(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    iget-object p2, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/google/android/material/picker/a;->x:Ljava/util/Calendar;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/picker/YearPickerView;->c(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/a;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->q:Lcom/google/android/material/picker/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->r:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/a;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public u()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/a;->w:Ljava/util/Calendar;

    return-object v0
.end method

.method protected w(Ljava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/a;->m:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EMMMd"

    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/google/android/material/picker/a;->k:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "y"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/material/picker/a;->j:Ljava/text/SimpleDateFormat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/a;->G(Z)V

    return-void
.end method
