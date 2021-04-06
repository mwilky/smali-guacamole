.class Landroidx/animation/PropertyValuesHolder$a;
.super Landroidx/animation/PropertyValuesHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private r:Landroidx/animation/FloatProperty;

.field s:Landroidx/animation/Keyframes$FloatKeyframes;

.field t:F


# direct methods
.method varargs constructor <init>(Landroid/util/Property;[F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    invoke-virtual {p0, p2}, Landroidx/animation/PropertyValuesHolder$a;->l([F)V

    instance-of p1, p1, Landroidx/animation/FloatProperty;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/animation/PropertyValuesHolder;->b:Landroid/util/Property;

    check-cast p1, Landroidx/animation/FloatProperty;

    iput-object p1, p0, Landroidx/animation/PropertyValuesHolder$a;->r:Landroidx/animation/FloatProperty;

    :cond_0
    return-void
.end method

.method varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/animation/PropertyValuesHolder$a;->l([F)V

    return-void
.end method


# virtual methods
.method a(F)V
    .locals 1

    iget-object v0, p0, Landroidx/animation/PropertyValuesHolder$a;->s:Landroidx/animation/Keyframes$FloatKeyframes;

    invoke-interface {v0, p1}, Landroidx/animation/Keyframes$FloatKeyframes;->getFloatValue(F)F

    move-result p1

    iput p1, p0, Landroidx/animation/PropertyValuesHolder$a;->t:F

    return-void
.end method

.method public bridge synthetic b()Landroidx/animation/PropertyValuesHolder;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/PropertyValuesHolder$a;->r()Landroidx/animation/PropertyValuesHolder$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/PropertyValuesHolder$a;->r()Landroidx/animation/PropertyValuesHolder$a;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/animation/PropertyValuesHolder$a;->t:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method k(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder$a;->r:Landroidx/animation/FloatProperty;

    if-eqz v1, :cond_0

    iget v0, p0, Landroidx/animation/PropertyValuesHolder$a;->t:F

    invoke-virtual {v1, p1, v0}, Landroidx/animation/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder;->b:Landroid/util/Property;

    if-eqz v1, :cond_1

    iget v0, p0, Landroidx/animation/PropertyValuesHolder$a;->t:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder;->g:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/animation/PropertyValuesHolder$a;->t:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Landroidx/animation/PropertyValuesHolder;->c:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroidx/animation/PropertyValuesHolder;->g:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public varargs l([F)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/animation/PropertyValuesHolder;->l([F)V

    iget-object p1, p0, Landroidx/animation/PropertyValuesHolder;->f:Landroidx/animation/Keyframes;

    check-cast p1, Landroidx/animation/Keyframes$FloatKeyframes;

    iput-object p1, p0, Landroidx/animation/PropertyValuesHolder$a;->s:Landroidx/animation/Keyframes$FloatKeyframes;

    return-void
.end method

.method public r()Landroidx/animation/PropertyValuesHolder$a;
    .locals 2

    invoke-super {p0}, Landroidx/animation/PropertyValuesHolder;->b()Landroidx/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Landroidx/animation/PropertyValuesHolder$a;

    iget-object v1, v0, Landroidx/animation/PropertyValuesHolder;->f:Landroidx/animation/Keyframes;

    check-cast v1, Landroidx/animation/Keyframes$FloatKeyframes;

    iput-object v1, v0, Landroidx/animation/PropertyValuesHolder$a;->s:Landroidx/animation/Keyframes$FloatKeyframes;

    return-object v0
.end method
