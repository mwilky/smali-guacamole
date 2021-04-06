.class public Lcom/google/android/material/picker/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TextInputTimePickerView$f;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/widget/EditText;

.field private final c:Landroid/widget/EditText;

.field private final d:Landroid/widget/RadioGroup;

.field private final e:Landroid/widget/RadioButton;

.field private final f:Landroid/widget/RadioButton;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/view/View;

.field private final k:Landroid/widget/RelativeLayout;

.field private l:Z

.field private m:Z

.field private n:Lcom/google/android/material/picker/TextInputTimePickerView$f;

.field private o:I

.field private p:Z

.field private q:[I

.field private r:[I

.field private s:Landroid/view/inputmethod/InputMethodManager;

.field private final t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x2

    new-array p4, p3, [I

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->q:[I

    new-array p4, p3, [I

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->r:[I

    new-instance p4, Lcom/google/android/material/picker/TextInputTimePickerView$e;

    invoke-direct {p4, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$e;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->t:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lb/a/b/a/h;->time_picker_text_input_material:I

    const/4 v1, 0x1

    invoke-virtual {p4, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p4, Lb/a/b/a/f;->input_am_pm_parent:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->k:Landroid/widget/RelativeLayout;

    sget p4, Lb/a/b/a/f;->input_block:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->j:Landroid/view/View;

    sget p4, Lb/a/b/a/f;->input_hour:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    sget p4, Lb/a/b/a/f;->input_minute:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    sget p4, Lb/a/b/a/f;->label_error:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->g:Landroid/widget/TextView;

    sget p4, Lb/a/b/a/f;->label_hour:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->h:Landroid/widget/TextView;

    sget p4, Lb/a/b/a/f;->label_minute:I

    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->i:Landroid/widget/TextView;

    new-array p4, p3, [I

    sget v0, Lb/a/b/a/b;->pickerColorActivated:I

    const/4 v2, 0x0

    aput v0, p4, v2

    sget v0, Lb/a/b/a/b;->pickerColorUnActivated:I

    aput v0, p4, v1

    new-array p3, p3, [I

    aput v0, p3, v2

    sget v0, Lb/a/b/a/b;->pickerInputLabelUnActivated:I

    aput v0, p3, v1

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lb/a/b/a/g;->op_control_time_325:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->o:I

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->q:[I

    const/high16 v3, -0x1000000

    invoke-virtual {p4, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v0, v2

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->q:[I

    invoke-virtual {p4, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v0, v1

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->r:[I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    aput p4, p3, v2

    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->r:[I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    aput p4, p3, v1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/TextInputTimePickerView$a;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$a;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/TextInputTimePickerView$b;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$b;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/TextInputTimePickerView$c;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$c;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/TextInputTimePickerView$d;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/TextInputTimePickerView$d;-><init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p1}, Lcom/google/android/material/picker/TimePicker;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    sget p2, Lb/a/b/a/f;->am_pm_group:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    sget p2, Lb/a/b/a/f;->am_label2:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->e:Landroid/widget/RadioButton;

    aget-object p3, p1, v2

    invoke-static {p3}, Lcom/google/android/material/picker/TimePickerClockDelegate;->Y(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->e:Landroid/widget/RadioButton;

    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->e:Landroid/widget/RadioButton;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->i(Landroid/widget/TextView;)V

    sget p2, Lb/a/b/a/f;->pm_label2:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->f:Landroid/widget/RadioButton;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->Y(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->f:Landroid/widget/RadioButton;

    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->f:Landroid/widget/RadioButton;

    invoke-static {p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->i(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/picker/TextInputTimePickerView;ILandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->o(ILandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/picker/TextInputTimePickerView;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->q:[I

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/picker/TextInputTimePickerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->n(Z)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/picker/TextInputTimePickerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g(Lcom/google/android/material/picker/TextInputTimePickerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->s(Z)V

    return-void
.end method

.method static synthetic h(Lcom/google/android/material/picker/TextInputTimePickerView;)Lcom/google/android/material/picker/TextInputTimePickerView$f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->n:Lcom/google/android/material/picker/TextInputTimePickerView$f;

    return-object p0
.end method

.method private static i(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private j(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->m:Z

    if-nez v0, :cond_2

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move p1, v1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->m:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    move p1, v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0xc

    :cond_2
    :goto_0
    return p1
.end method

.method private k(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->m:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->l:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    :goto_0
    add-int/2addr v2, v0

    if-lt p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private l(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->k(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->m:Z

    if-eqz v1, :cond_0

    move v2, v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->l:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0xb

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->n:Lcom/google/android/material/picker/TextInputTimePickerView$f;

    invoke-static {p1, v2, v1}, Lb/a/b/a/p/a;->a(III)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->j(I)I

    move-result p1

    invoke-interface {v3, v0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView$f;->a(II)V

    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->n:Lcom/google/android/material/picker/TextInputTimePickerView$f;

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->j(I)I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView$f;->a(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method private m(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x3b

    const/4 v2, 0x1

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->n:Lcom/google/android/material/picker/TextInputTimePickerView$f;

    invoke-interface {v1, v2, p1}, Lcom/google/android/material/picker/TextInputTimePickerView$f;->a(II)V

    return v2

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->n:Lcom/google/android/material/picker/TextInputTimePickerView$f;

    invoke-static {p1, v0, v1}, Lb/a/b/a/p/a;->a(III)I

    move-result p1

    invoke-interface {v3, v2, p1}, Lcom/google/android/material/picker/TextInputTimePickerView$f;->a(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private n(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->i:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->r:[I

    if-eqz p1, :cond_0

    aget v3, v3, v1

    goto :goto_0

    :cond_0
    aget v3, v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->r:[I

    aget p1, p1, v2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->r:[I

    aget p1, p1, v1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private o(ILandroid/widget/TextView;)V
    .locals 1

    invoke-static {}, Lb/b/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private r(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->s:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->s:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private s(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->e:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->q:[I

    if-eqz p1, :cond_0

    aget v3, v3, v1

    goto :goto_0

    :cond_0
    aget v3, v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->f:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->f:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->f:Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->q:[I

    aget v1, v1, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->q:[I

    aget v1, v3, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method private setError(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->p:Z

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getHourView()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getInputBlock()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->j:Landroid/view/View;

    return-object v0
.end method

.method public getMinuteView()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public p(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->j:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method public q(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->o:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->o:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->o:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Landroidx/animation/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setAmPmAtStart(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->l:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->a:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->a:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/b/a/d;->op_control_margin_space6:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method setHourFormat(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->l:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->l:Z

    iget-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->a:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setAmPmAtStart(Z)V

    :cond_0
    return-void
.end method

.method setListener(Lcom/google/android/material/picker/TextInputTimePickerView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->n:Lcom/google/android/material/picker/TextInputTimePickerView$f;

    return-void
.end method

.method t(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method u(IIIZZ)V
    .locals 1

    iput-boolean p4, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->l:Z

    iput-boolean p5, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->m:Z

    iget-object p5, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->d:Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/16 p4, 0x8

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    invoke-virtual {p5, p4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    const/4 p4, 0x1

    if-nez p3, :cond_1

    move p3, p4

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    invoke-direct {p0, p3}, Lcom/google/android/material/picker/TextInputTimePickerView;->s(Z)V

    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    new-array p5, p4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, v0

    const-string p1, "%d"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v0

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-boolean p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->p:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/picker/TextInputTimePickerView;->v()Z

    :cond_2
    return-void
.end method

.method v()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TextInputTimePickerView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/TextInputTimePickerView;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setError(Z)V

    return v0
.end method
