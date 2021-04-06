.class public Lcom/google/android/material/shape/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/material/shape/i;FFF)V
    .param p1    # Lcom/google/android/material/shape/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public b(Lcom/google/android/material/shape/i;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/b;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p5, p4}, Lcom/google/android/material/shape/b;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/c;->a(Lcom/google/android/material/shape/i;FFF)V

    return-void
.end method
