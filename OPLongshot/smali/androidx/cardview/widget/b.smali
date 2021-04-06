.class Landroidx/cardview/widget/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/cardview/widget/d;


# instance fields
.field private final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/b;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$000(Landroidx/cardview/widget/b;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/b;->mCornerRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/e;
    .locals 7

    new-instance v6, Landroidx/cardview/widget/e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/e;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;
    .locals 0

    invoke-interface {p1}, Landroidx/cardview/widget/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/e;

    return-object p1
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/c;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/e;->f()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getElevation(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/e;->l()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/e;->i()F

    move-result p1

    return p1
.end method

.method public getMinHeight(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/e;->j()F

    move-result p1

    return p1
.end method

.method public getMinWidth(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/e;->k()F

    move-result p1

    return p1
.end method

.method public getRadius(Landroidx/cardview/widget/c;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/e;->g()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .locals 1

    new-instance v0, Landroidx/cardview/widget/b$a;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/b$a;-><init>(Landroidx/cardview/widget/b;)V

    sput-object v0, Landroidx/cardview/widget/e;->r:Landroidx/cardview/widget/e$a;

    return-void
.end method

.method public initialize(Landroidx/cardview/widget/c;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/b;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/e;

    move-result-object p2

    invoke-interface {p1}, Landroidx/cardview/widget/c;->g()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/cardview/widget/e;->m(Z)V

    invoke-interface {p1, p2}, Landroidx/cardview/widget/c;->f(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->updatePadding(Landroidx/cardview/widget/c;)V

    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/c;)V
    .locals 0

    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/c;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object v0

    invoke-interface {p1}, Landroidx/cardview/widget/c;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/e;->m(Z)V

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->updatePadding(Landroidx/cardview/widget/c;)V

    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/c;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/e;->o(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/e;->r(F)V

    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/c;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/e;->q(F)V

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->updatePadding(Landroidx/cardview/widget/c;)V

    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/c;F)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/e;->p(F)V

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->updatePadding(Landroidx/cardview/widget/c;)V

    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/c;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->getShadowBackground(Landroidx/cardview/widget/c;)Landroidx/cardview/widget/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/e;->h(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->getMinWidth(Landroidx/cardview/widget/c;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->getMinHeight(Landroidx/cardview/widget/c;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1, v1, v2}, Landroidx/cardview/widget/c;->e(II)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroidx/cardview/widget/c;->a(IIII)V

    return-void
.end method
