.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$g;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$g;->e:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$k;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$a;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$g;->e:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->elevation:F

    iget v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->pressedTranslationZ:F

    add-float/2addr v1, v0

    return v1
.end method
