.class Lcom/google/android/material/picker/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/picker/SimpleMonthView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/c$a;->a:Lcom/google/android/material/picker/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/picker/SimpleMonthView;Ljava/util/Calendar;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/c$a;->a:Lcom/google/android/material/picker/c;

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/c;->C(Ljava/util/Calendar;)V

    iget-object p1, p0, Lcom/google/android/material/picker/c$a;->a:Lcom/google/android/material/picker/c;

    invoke-static {p1}, Lcom/google/android/material/picker/c;->q(Lcom/google/android/material/picker/c;)Lcom/google/android/material/picker/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/c$a;->a:Lcom/google/android/material/picker/c;

    invoke-static {p1}, Lcom/google/android/material/picker/c;->q(Lcom/google/android/material/picker/c;)Lcom/google/android/material/picker/c$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/picker/c$a;->a:Lcom/google/android/material/picker/c;

    invoke-interface {p1, v0, p2}, Lcom/google/android/material/picker/c$b;->a(Lcom/google/android/material/picker/c;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
