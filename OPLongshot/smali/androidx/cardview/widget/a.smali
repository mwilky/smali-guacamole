.class public Landroidx/cardview/widget/a;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final e:Landroidx/cardview/widget/d;


# instance fields
.field private a:Z

.field private b:Z

.field final c:Landroid/graphics/Rect;

.field private final d:Landroidx/cardview/widget/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/cardview/widget/CardViewApi21Impl;

    invoke-direct {v0}, Landroidx/cardview/widget/CardViewApi21Impl;-><init>()V

    :goto_0
    sput-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    goto :goto_1

    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/cardview/widget/CardViewApi17Impl;

    invoke-direct {v0}, Landroidx/cardview/widget/CardViewApi17Impl;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/cardview/widget/b;

    invoke-direct {v0}, Landroidx/cardview/widget/b;-><init>()V

    goto :goto_0

    :goto_1
    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    invoke-interface {v0}, Landroidx/cardview/widget/d;->initStatic()V

    return-void
.end method


# virtual methods
.method public c(IIII)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/cardview/widget/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p1, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object p2, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {p1, p2}, Landroidx/cardview/widget/d;->updatePadding(Landroidx/cardview/widget/c;)V

    return-void
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/d;->getBackgroundColor(Landroidx/cardview/widget/c;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/d;->getElevation(Landroidx/cardview/widget/c;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/a;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/a;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/a;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/a;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/d;->getMaxElevation(Landroidx/cardview/widget/c;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/a;->b:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/d;->getRadius(Landroidx/cardview/widget/c;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/a;->a:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    instance-of v0, v0, Landroidx/cardview/widget/CardViewApi21Impl;

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v4, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v3, v4}, Landroidx/cardview/widget/d;->getMinWidth(Landroidx/cardview/widget/c;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v2, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v1, v2}, Landroidx/cardview/widget/d;->getMinHeight(Landroidx/cardview/widget/c;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/d;->setBackgroundColor(Landroidx/cardview/widget/c;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/d;->setBackgroundColor(Landroidx/cardview/widget/c;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/d;->setElevation(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/d;->setMaxElevation(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/a;->b:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/a;->b:Z

    sget-object p1, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v0, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {p1, v0}, Landroidx/cardview/widget/d;->onPreventCornerOverlapChanged(Landroidx/cardview/widget/c;)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v1, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {v0, v1, p1}, Landroidx/cardview/widget/d;->setRadius(Landroidx/cardview/widget/c;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/a;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/a;->a:Z

    sget-object p1, Landroidx/cardview/widget/a;->e:Landroidx/cardview/widget/d;

    iget-object v0, p0, Landroidx/cardview/widget/a;->d:Landroidx/cardview/widget/c;

    invoke-interface {p1, v0}, Landroidx/cardview/widget/d;->onCompatPaddingChanged(Landroidx/cardview/widget/c;)V

    :cond_0
    return-void
.end method
