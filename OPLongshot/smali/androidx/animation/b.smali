.class public abstract Landroidx/animation/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/animation/b$b;,
        Landroidx/animation/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/b$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/b$b;",
            ">;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/animation/b;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/animation/b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/animation/b;->d:Z

    return-void
.end method

.method static a(Landroidx/animation/AnimationHandler$b;)V
    .locals 1

    invoke-static {}, Landroidx/animation/AnimationHandler;->h()Landroidx/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/animation/AnimationHandler;->b(Landroidx/animation/AnimationHandler$b;)V

    return-void
.end method

.method static m(Landroidx/animation/AnimationHandler$b;)V
    .locals 1

    invoke-static {}, Landroidx/animation/AnimationHandler;->h()Landroidx/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/animation/AnimationHandler;->l(Landroidx/animation/AnimationHandler$b;)V

    return-void
.end method


# virtual methods
.method public b(Landroidx/animation/b$a;)V
    .locals 1
    .param p1    # Landroidx/animation/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/b;->d()Landroidx/animation/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroidx/animation/b;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/b;

    iget-object v1, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Landroidx/animation/b;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/animation/b;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/b;->b:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public abstract f()J
.end method

.method public abstract g()J
.end method

.method public h()J
    .locals 5

    invoke-virtual {p0}, Landroidx/animation/b;->f()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p0}, Landroidx/animation/b;->g()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract j()Z
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/b;->j()Z

    move-result v0

    return v0
.end method

.method l(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public n(Landroidx/animation/b$a;)V
    .locals 1
    .param p1    # Landroidx/animation/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/animation/b;->a:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method o()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reverse is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract p(J)Landroidx/animation/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract q(Landroidx/animation/d;)V
    .param p1    # Landroidx/animation/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method r(Z)V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method t(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/animation/b;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/animation/b;->s()V

    :goto_0
    return-void
.end method
