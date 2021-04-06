.class public final Landroidx/animation/f;
.super Landroidx/animation/h;
.source ""


# instance fields
.field private F:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/String;

.field private H:Landroid/util/Property;

.field private I:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/animation/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/animation/f;->I:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroidx/animation/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/animation/f;->I:Z

    invoke-virtual {p0, p1}, Landroidx/animation/f;->b0(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/animation/f;->a0(Ljava/lang/String;)V

    return-void
.end method

.method private X(Landroidx/animation/b;)Z
    .locals 5
    .param p1    # Landroidx/animation/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/animation/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/animation/f;

    invoke-virtual {p1}, Landroidx/animation/h;->F()[Landroidx/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/animation/f;->W()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/animation/f;->W()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    array-length p1, p1

    array-length v2, v0

    if-ne p1, v2, :cond_3

    move p1, v1

    :goto_0
    iget-object v2, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    array-length v3, v2

    if-ge p1, v3, :cond_2

    aget-object v2, v2, p1

    aget-object v3, v0, p1

    invoke-virtual {v2}, Landroidx/animation/PropertyValuesHolder;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroidx/animation/PropertyValuesHolder;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/animation/PropertyValuesHolder;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public static varargs Y(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/animation/f;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/animation/f;

    invoke-direct {v0, p0, p1}, Landroidx/animation/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroidx/animation/f;->P([F)V

    return-object v0
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/animation/h;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/animation/f;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method G()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-boolean v0, p0, Landroidx/animation/h;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/animation/f;->W()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroidx/animation/PropertyValuesHolder;->p(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/animation/h;->G()V

    :cond_1
    return-void
.end method

.method public bridge synthetic O(J)Landroidx/animation/h;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/animation/f;->Z(J)Landroidx/animation/f;

    return-object p0
.end method

.method public varargs P([F)V
    .locals 3
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/animation/h;->P([F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/animation/f;->H:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v2, v2, [Landroidx/animation/PropertyValuesHolder;

    invoke-static {v0, p1}, Landroidx/animation/PropertyValuesHolder;->i(Landroid/util/Property;[F)Landroidx/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Landroidx/animation/h;->Q([Landroidx/animation/PropertyValuesHolder;)V

    goto :goto_1

    :cond_2
    new-array v0, v2, [Landroidx/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroidx/animation/f;->G:Ljava/lang/String;

    invoke-static {v2, p1}, Landroidx/animation/PropertyValuesHolder;->j(Ljava/lang/String;[F)Landroidx/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroidx/animation/h;->Q([Landroidx/animation/PropertyValuesHolder;)V

    :goto_1
    return-void
.end method

.method public U()Landroidx/animation/f;
    .locals 1

    invoke-super {p0}, Landroidx/animation/h;->y()Landroidx/animation/h;

    move-result-object v0

    check-cast v0, Landroidx/animation/f;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/animation/f;->G:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/animation/f;->H:Landroid/util/Property;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/animation/PropertyValuesHolder;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public W()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/animation/f;->F:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Z(J)Landroidx/animation/f;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/animation/h;->O(J)Landroidx/animation/h;

    return-object p0
.end method

.method public a0(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/animation/PropertyValuesHolder;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Landroidx/animation/PropertyValuesHolder;->m(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/animation/h;->A:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/animation/h;->A:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Landroidx/animation/f;->G:Ljava/lang/String;

    iput-boolean v1, p0, Landroidx/animation/h;->q:Z

    return-void
.end method

.method public b0(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/animation/f;->W()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Landroidx/animation/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/animation/h;->c()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroidx/animation/f;->F:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/animation/h;->q:Z

    :cond_2
    return-void
.end method

.method c0(Landroidx/animation/AnimationHandler$b;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/animation/f;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/animation/f;

    iget-boolean v1, p1, Landroidx/animation/f;->I:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/animation/f;->X(Landroidx/animation/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/f;->U()Landroidx/animation/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Landroidx/animation/b;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/f;->U()Landroidx/animation/f;

    move-result-object v0

    return-object v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/animation/h;->q:Z

    return v0
.end method

.method public bridge synthetic p(J)Landroidx/animation/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/animation/f;->Z(J)Landroidx/animation/f;

    return-object p0
.end method

.method public s()V
    .locals 1

    invoke-static {}, Landroidx/animation/AnimationHandler;->h()Landroidx/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/animation/AnimationHandler;->c(Landroidx/animation/f;)V

    invoke-super {p0}, Landroidx/animation/h;->s()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/animation/f;->W()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method w(F)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Landroidx/animation/f;->W()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/animation/f;->F:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/animation/h;->c()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/animation/h;->w(F)V

    iget-object p1, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    array-length p1, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Landroidx/animation/h;->z:[Landroidx/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroidx/animation/PropertyValuesHolder;->k(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic y()Landroidx/animation/h;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/f;->U()Landroidx/animation/f;

    move-result-object v0

    return-object v0
.end method
