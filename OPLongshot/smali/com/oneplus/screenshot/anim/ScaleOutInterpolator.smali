.class public Lcom/oneplus/screenshot/anim/ScaleOutInterpolator;
.super Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleOutInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;->getInterpolation(F)F

    move-result p1

    const v0, 0x3f27ef9e    # 0.656f

    add-float/2addr p1, v0

    return p1
.end method
