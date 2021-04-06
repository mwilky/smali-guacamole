.class Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/cardview/widget/d;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCardBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/RoundRectDrawable;
    .locals 0

    invoke-interface {p1}, Landroidx/cardview/widget/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/RoundRectDrawable;

    return-object p1
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/c;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getElevation(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-interface {p1}, Landroidx/cardview/widget/c;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawable;->getPadding()F

    move-result p1

    return p1
.end method

.method public getMinHeight(Landroidx/cardview/widget/c;)F
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/c;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getMinWidth(Landroidx/cardview/widget/c;)F
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/c;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getRadius(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/RoundRectDrawable;->getRadius()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Landroidx/cardview/widget/c;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    new-instance p2, Landroidx/cardview/widget/RoundRectDrawable;

    invoke-direct {p2, p3, p4}, Landroidx/cardview/widget/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    invoke-interface {p1, p2}, Landroidx/cardview/widget/c;->f(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Landroidx/cardview/widget/c;->b()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/c;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/c;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/c;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/c;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/CardViewApi21Impl;->setMaxElevation(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/c;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/RoundRectDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/c;F)V
    .locals 0

    invoke-interface {p1}, Landroidx/cardview/widget/c;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/c;F)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object v0

    invoke-interface {p1}, Landroidx/cardview/widget/c;->c()Z

    move-result v1

    invoke-interface {p1}, Landroidx/cardview/widget/c;->g()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroidx/cardview/widget/RoundRectDrawable;->setPadding(FZZ)V

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->updatePadding(Landroidx/cardview/widget/c;)V

    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getCardBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/RoundRectDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/RoundRectDrawable;->setRadius(F)V

    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/c;)V
    .locals 4

    invoke-interface {p1}, Landroidx/cardview/widget/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Landroidx/cardview/widget/c;->a(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getMaxElevation(Landroidx/cardview/widget/c;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewApi21Impl;->getRadius(Landroidx/cardview/widget/c;)F

    move-result v1

    invoke-interface {p1}, Landroidx/cardview/widget/c;->g()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/e;->c(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Landroidx/cardview/widget/c;->g()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroidx/cardview/widget/e;->d(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v2, v0, v2, v0}, Landroidx/cardview/widget/c;->a(IIII)V

    return-void
.end method
