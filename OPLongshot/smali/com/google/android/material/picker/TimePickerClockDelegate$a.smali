.class Lcom/google/android/material/picker/TimePickerClockDelegate$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$a;->a:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$a;->a:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->B(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/picker/NumericTextView;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->g(I)V

    return-void
.end method
