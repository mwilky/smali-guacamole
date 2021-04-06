.class Lb/b/c/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/c/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/c/a;


# direct methods
.method constructor <init>(Lb/b/c/a;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/a$a;->a:Lb/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lb/b/c/a$a;->a:Lb/b/c/a;

    invoke-static {v0}, Lb/b/c/a;->a(Lb/b/c/a;)F

    move-result v0

    iget-object v1, p0, Lb/b/c/a$a;->a:Lb/b/c/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p1}, Lb/b/c/a;->b(Lb/b/c/a;F)F

    iget-object p1, p0, Lb/b/c/a$a;->a:Lb/b/c/a;

    invoke-static {p1}, Lb/b/c/a;->a(Lb/b/c/a;)F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/c/a$a;->a:Lb/b/c/a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
