.class Lcom/google/android/material/picker/TimePickerClockDelegate$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/picker/TextInputTimePickerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$l;->a:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$l;->a:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, p2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->z(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$l;->a:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, p2, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->y(Lcom/google/android/material/picker/TimePickerClockDelegate;II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$l;->a:Lcom/google/android/material/picker/TimePickerClockDelegate;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->u(Lcom/google/android/material/picker/TimePickerClockDelegate;IIZ)V

    :goto_0
    return-void
.end method
