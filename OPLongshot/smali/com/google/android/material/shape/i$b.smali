.class Lcom/google/android/material/shape/i$b;
.super Lcom/google/android/material/shape/i$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/google/android/material/shape/i$d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/i$d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/i$g;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/shape/i$b;->b:Lcom/google/android/material/shape/i$d;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 8
    .param p2    # Lcom/google/android/material/shadow/ShadowRenderer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/shape/i$b;->b:Lcom/google/android/material/shape/i$d;

    invoke-static {v0}, Lcom/google/android/material/shape/i$d;->h(Lcom/google/android/material/shape/i$d;)F

    move-result v6

    iget-object v0, p0, Lcom/google/android/material/shape/i$b;->b:Lcom/google/android/material/shape/i$d;

    invoke-static {v0}, Lcom/google/android/material/shape/i$d;->i(Lcom/google/android/material/shape/i$d;)F

    move-result v7

    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/shape/i$b;->b:Lcom/google/android/material/shape/i$d;

    invoke-static {v0}, Lcom/google/android/material/shape/i$d;->b(Lcom/google/android/material/shape/i$d;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/i$b;->b:Lcom/google/android/material/shape/i$d;

    invoke-static {v1}, Lcom/google/android/material/shape/i$d;->c(Lcom/google/android/material/shape/i$d;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/shape/i$b;->b:Lcom/google/android/material/shape/i$d;

    invoke-static {v2}, Lcom/google/android/material/shape/i$d;->d(Lcom/google/android/material/shape/i$d;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/shape/i$b;->b:Lcom/google/android/material/shape/i$d;

    invoke-static {v3}, Lcom/google/android/material/shape/i$d;->e(Lcom/google/android/material/shape/i$d;)F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/shadow/ShadowRenderer;->drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
