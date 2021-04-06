.class Landroidx/core/graphics/drawable/c$a;
.super Landroidx/core/graphics/drawable/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/b;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/view/b;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public hasMipMap()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/graphics/drawable/b;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMipMap(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/core/graphics/drawable/b;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/graphics/a;->b(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
