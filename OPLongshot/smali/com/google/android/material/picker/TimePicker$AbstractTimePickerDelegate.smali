.class abstract Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/picker/TimePicker$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/material/picker/TimePicker;

.field protected final b:Landroid/content/Context;

.field protected final c:Ljava/util/Locale;

.field protected d:Lcom/google/android/material/picker/TimePicker$b;

.field protected e:Lcom/google/android/material/picker/TimePicker$b;


# direct methods
.method public constructor <init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->a:Lcom/google/android/material/picker/TimePicker;

    iput-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->c:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public b()J
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->c:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$c;->o()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$c;->c()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Lcom/google/android/material/picker/TimePicker$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->e:Lcom/google/android/material/picker/TimePicker$b;

    return-void
.end method

.method public h(J)V
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$c;->g(I)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$c;->j(I)V

    return-void
.end method

.method public k(Lcom/google/android/material/picker/TimePicker$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->d:Lcom/google/android/material/picker/TimePicker$b;

    return-void
.end method
