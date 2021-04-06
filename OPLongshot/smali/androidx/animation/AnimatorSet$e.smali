.class Landroidx/animation/AnimatorSet$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Landroidx/animation/b;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimatorSet$e;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimatorSet$e;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimatorSet$e;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroidx/animation/AnimatorSet$e;

.field g:Z

.field h:J

.field i:J

.field j:J


# direct methods
.method constructor <init>(Landroidx/animation/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/animation/AnimatorSet$e;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/animation/AnimatorSet$e;->c:Z

    iput-object v0, p0, Landroidx/animation/AnimatorSet$e;->f:Landroidx/animation/AnimatorSet$e;

    iput-boolean v1, p0, Landroidx/animation/AnimatorSet$e;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/animation/AnimatorSet$e;->h:J

    iput-wide v0, p0, Landroidx/animation/AnimatorSet$e;->i:J

    iput-wide v0, p0, Landroidx/animation/AnimatorSet$e;->j:J

    iput-object p1, p0, Landroidx/animation/AnimatorSet$e;->a:Landroidx/animation/b;

    return-void
.end method


# virtual methods
.method a(Landroidx/animation/AnimatorSet$e;)V
    .locals 1

    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/animation/AnimatorSet$e;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/animation/AnimatorSet$e;->b(Landroidx/animation/AnimatorSet$e;)V

    :cond_1
    return-void
.end method

.method public b(Landroidx/animation/AnimatorSet$e;)V
    .locals 1

    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/animation/AnimatorSet$e;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/animation/AnimatorSet$e;->a(Landroidx/animation/AnimatorSet$e;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/animation/AnimatorSet$e;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/animation/AnimatorSet$e;

    invoke-virtual {p0, v2}, Landroidx/animation/AnimatorSet$e;->b(Landroidx/animation/AnimatorSet$e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/AnimatorSet$e;->e()Landroidx/animation/AnimatorSet$e;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroidx/animation/AnimatorSet$e;)V
    .locals 1

    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/animation/AnimatorSet$e;->d:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/animation/AnimatorSet$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/animation/AnimatorSet$e;->d(Landroidx/animation/AnimatorSet$e;)V

    :cond_1
    return-void
.end method

.method public e()Landroidx/animation/AnimatorSet$e;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/AnimatorSet$e;

    iget-object v1, p0, Landroidx/animation/AnimatorSet$e;->a:Landroidx/animation/b;

    invoke-virtual {v1}, Landroidx/animation/b;->d()Landroidx/animation/b;

    move-result-object v1

    iput-object v1, v0, Landroidx/animation/AnimatorSet$e;->a:Landroidx/animation/b;

    iget-object v1, p0, Landroidx/animation/AnimatorSet$e;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/animation/AnimatorSet$e;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/AnimatorSet$e;->b:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Landroidx/animation/AnimatorSet$e;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/animation/AnimatorSet$e;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/AnimatorSet$e;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Landroidx/animation/AnimatorSet$e;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/animation/AnimatorSet$e;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/AnimatorSet$e;->e:Ljava/util/ArrayList;

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/animation/AnimatorSet$e;->c:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
