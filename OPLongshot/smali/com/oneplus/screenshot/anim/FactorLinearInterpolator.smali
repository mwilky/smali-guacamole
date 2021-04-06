.class public Lcom/oneplus/screenshot/anim/FactorLinearInterpolator;
.super Lcom/oneplus/screenshot/anim/BaseInterpolator;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FactorLinearInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/BaseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/anim/BaseInterpolator;->mFactor:F

    mul-float/2addr p1, v0

    return p1
.end method
