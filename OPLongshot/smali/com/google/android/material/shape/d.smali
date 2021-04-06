.class public Lcom/google/android/material/shape/d;
.super Lcom/google/android/material/shape/c;
.source ""


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/shape/c;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/d;->a:F

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/shape/i;FFF)V
    .locals 6
    .param p1    # Lcom/google/android/material/shape/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    mul-float v0, p4, p3

    const/high16 v1, 0x43340000    # 180.0f

    sub-float v2, v1, p2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/google/android/material/shape/i;->o(FFFF)V

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, p4

    mul-double/2addr v0, v2

    float-to-double p3, p3

    mul-double/2addr v0, p3

    double-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v1, p2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    mul-double/2addr v4, p3

    double-to-float p2, v4

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/shape/i;->m(FF)V

    return-void
.end method
