.class public Lcom/google/android/material/picker/TimePicker;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;,
        Lcom/google/android/material/picker/TimePicker$c;,
        Lcom/google/android/material/picker/TimePicker$b;,
        Lcom/google/android/material/picker/TimePicker$TimePickerMode;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Landroid/view/Window;

.field private final b:Lcom/google/android/material/picker/TimePicker$c;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/picker/TimePicker;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lb/a/b/a/b;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lb/a/b/a/l;->TimePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lb/a/b/a/l;->TimePicker_dialogMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    sget v2, Lb/a/b/a/l;->TimePicker_android_timePickerMode:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/b/a/g;->time_picker_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/TimePicker;->c:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/android/material/picker/TimePicker;->c:I

    :goto_0
    iget v0, p0, Lcom/google/android/material/picker/TimePicker;->c:I

    if-eq v0, v3, :cond_1

    new-instance v0, Lcom/google/android/material/picker/d;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/picker/d;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    :goto_1
    iput-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/picker/TimePickerClockDelegate;-><init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    new-instance p2, Lcom/google/android/material/picker/TimePicker$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/TimePicker$a;-><init>(Lcom/google/android/material/picker/TimePicker;)V

    invoke-interface {p1, p2}, Lcom/google/android/material/picker/TimePicker$c;->e(Lcom/google/android/material/picker/TimePicker$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    return-object p0
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->isEnabled()Z

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

    sget-object v0, Lcom/google/android/material/picker/TimePicker;->d:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/material/picker/TimePicker$c;->h(J)V

    :cond_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->isEnabled()Z

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

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->b()J

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

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->f()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->o()I

    move-result v0

    return v0
.end method

.method public getHourView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->n()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->c()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/TimePicker;->c:I

    return v0
.end method

.method public getPmView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->l()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0}, Lcom/google/android/material/picker/TimePicker$c;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/view/View$BaseSavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/TimePicker$c;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v1, v0}, Lcom/google/android/material/picker/TimePicker$c;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePicker;->setHour(I)V

    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePicker;->setMinute(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/TimePicker$c;->setEnabled(Z)V

    return-void
.end method

.method public setHasTitle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->e0(Z)V

    :cond_0
    return-void
.end method

.method public setHour(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-static {p1, v1, v2}, Lb/a/b/a/p/a;->a(III)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/TimePicker$c;->g(I)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/TimePicker$c;->m(Z)V

    return-void
.end method

.method public setMinute(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {p1, v1, v2}, Lb/a/b/a/p/a;->a(III)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/TimePicker$c;->j(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/google/android/material/picker/TimePicker$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/TimePicker$c;->k(Lcom/google/android/material/picker/TimePicker$b;)V

    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker;->a:Landroid/view/Window;

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker;->b:Lcom/google/android/material/picker/TimePicker$c;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-virtual {v0, p1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->i0(Landroid/view/Window;)V

    :cond_0
    return-void
.end method
