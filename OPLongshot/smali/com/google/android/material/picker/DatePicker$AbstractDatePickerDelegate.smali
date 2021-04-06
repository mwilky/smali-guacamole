.class abstract Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/picker/DatePicker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/material/picker/DatePicker;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/Calendar;

.field protected d:Ljava/util/Locale;

.field protected e:Lcom/google/android/material/picker/DatePicker$c;

.field protected f:Lcom/google/android/material/picker/DatePicker$c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/picker/DatePicker;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->a:Lcom/google/android/material/picker/DatePicker;

    iput-object p2, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->x(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Lcom/google/android/material/picker/DatePicker$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->e:Lcom/google/android/material/picker/DatePicker$c;

    return-void
.end method

.method public g(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->d:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/material/picker/DatePicker$b;->j(III)V

    return-void
.end method

.method public r(Lcom/google/android/material/picker/DatePicker$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->f:Lcom/google/android/material/picker/DatePicker$c;

    return-void
.end method

.method public t(Lcom/google/android/material/picker/DatePicker$d;)V
    .locals 0

    return-void
.end method

.method protected v()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected w(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method

.method protected x(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->d:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->d:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DatePicker$AbstractDatePickerDelegate;->w(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method
