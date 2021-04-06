.class public Lcom/oneplus/screenshot/anim/FlashInterpolator;
.super Lcom/oneplus/screenshot/anim/BaseInterpolator;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/BaseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    iget v0, p0, Lcom/oneplus/screenshot/anim/BaseInterpolator;->mDurationFactor:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    div-float/2addr p1, v0

    float-to-double v3, p1

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
