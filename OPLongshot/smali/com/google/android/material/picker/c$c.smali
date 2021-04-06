.class Lcom/google/android/material/picker/c$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/view/View;

.field public final c:Lcom/google/android/material/picker/SimpleMonthView;


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/google/android/material/picker/SimpleMonthView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/picker/c$c;->a:I

    iput-object p2, p0, Lcom/google/android/material/picker/c$c;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    return-void
.end method
