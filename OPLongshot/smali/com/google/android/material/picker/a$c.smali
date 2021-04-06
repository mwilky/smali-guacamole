.class Lcom/google/android/material/picker/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/a$c;->a:Lcom/google/android/material/picker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/a$c;->a:Lcom/google/android/material/picker/a;

    invoke-static {v0}, Lcom/google/android/material/picker/a;->z(Lcom/google/android/material/picker/a;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lb/a/b/a/f;->date_picker_header_year:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/a$c;->a:Lcom/google/android/material/picker/a;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/material/picker/a;->A(Lcom/google/android/material/picker/a;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lb/a/b/a/f;->date_picker_header_date:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/a$c;->a:Lcom/google/android/material/picker/a;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
