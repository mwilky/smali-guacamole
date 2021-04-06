.class public Lcom/google/android/material/picker/DatePicker;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/DatePicker$d;,
        Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;,
        Lcom/google/android/material/picker/DatePicker$b;,
        Lcom/google/android/material/picker/DatePicker$c;,
        Lcom/google/android/material/picker/DatePicker$DatePickerMode;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Lcom/google/android/material/picker/DatePicker$b;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/DatePicker;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lb/a/b/a/l;->DatePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lb/a/b/a/l;->DatePicker_dialogMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    sget v3, Lb/a/b/a/l;->DatePicker_android_datePickerMode:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Lb/a/b/a/l;->DatePicker_android_firstDayOfWeek:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lb/a/b/a/g;->date_picker_mode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/picker/DatePicker;->b:I

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/google/android/material/picker/DatePicker;->b:I

    :goto_0
    iget v1, p0, Lcom/google/android/material/picker/DatePicker;->b:I

    if-eq v1, v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/picker/DatePicker;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/picker/DatePicker$b;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/picker/DatePicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/picker/DatePicker$b;

    move-result-object p1

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/material/picker/DatePicker;->setFirstDayOfWeek(I)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    new-instance p2, Lcom/google/android/material/picker/DatePicker$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/DatePicker$a;-><init>(Lcom/google/android/material/picker/DatePicker;)V

    invoke-interface {p1, p2}, Lcom/google/android/material/picker/DatePicker$b;->r(Lcom/google/android/material/picker/DatePicker$c;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/picker/DatePicker$b;
    .locals 7

    new-instance v6, Lcom/google/android/material/picker/a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/picker/a;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/picker/DatePicker$b;
    .locals 7

    new-instance v6, Lcom/google/android/material/picker/b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/picker/b;-><init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/material/picker/DatePicker;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " could not be autofilled into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/material/picker/DatePicker$b;->g(J)V

    :cond_2
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->n()Landroid/widget/CalendarView;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->d()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->p()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->c()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->h()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->u()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/DatePicker;->b:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->m()I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->i()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->l()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/DatePicker$b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    instance-of p2, p1, Lcom/google/android/material/picker/a;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/material/picker/a;

    invoke-virtual {p1}, Lcom/google/android/material/picker/a;->D()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/view/View$BaseSavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/DatePicker$b;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v1, v0}, Lcom/google/android/material/picker/DatePicker$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/DatePicker$b;->e(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0}, Lcom/google/android/material/picker/DatePicker$b;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/DatePicker$b;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/DatePicker$b;->k(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxDate(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1, p2}, Lcom/google/android/material/picker/DatePicker$b;->q(J)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1, p2}, Lcom/google/android/material/picker/DatePicker$b;->s(J)V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/google/android/material/picker/DatePicker$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/DatePicker$b;->f(Lcom/google/android/material/picker/DatePicker$c;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/DatePicker$b;->o(Z)V

    return-void
.end method

.method public setValidationCallback(Lcom/google/android/material/picker/DatePicker$d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker;->a:Lcom/google/android/material/picker/DatePicker$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/DatePicker$b;->t(Lcom/google/android/material/picker/DatePicker$d;)V

    return-void
.end method
