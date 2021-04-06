.class public final Lcom/google/android/material/shape/ShapeAppearanceModel$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/google/android/material/shape/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Lcom/google/android/material/shape/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/google/android/material/shape/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Lcom/google/android/material/shape/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Lcom/google/android/material/shape/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:Lcom/google/android/material/shape/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:Lcom/google/android/material/shape/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private k:Lcom/google/android/material/shape/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:Lcom/google/android/material/shape/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/material/shape/f;->b()Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/f;->b()Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/f;->b()Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/f;->b()Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/b;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/b;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/b;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/b;

    invoke-static {}, Lcom/google/android/material/shape/f;->c()Lcom/google/android/material/shape/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/e;

    invoke-static {}, Lcom/google/android/material/shape/f;->c()Lcom/google/android/material/shape/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j:Lcom/google/android/material/shape/e;

    invoke-static {}, Lcom/google/android/material/shape/f;->c()Lcom/google/android/material/shape/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/e;

    invoke-static {}, Lcom/google/android/material/shape/f;->c()Lcom/google/android/material/shape/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l:Lcom/google/android/material/shape/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/material/shape/f;->b()Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/f;->b()Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/f;->b()Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/c;

    invoke-static {}, Lcom/google/android/material/shape/f;->b()Lcom/google/android/material/shape/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/c;

    new-instance v0, Lcom/google/android/material/shape/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/b;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/b;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/b;

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/b;

    invoke-static {}, Lcom/google/android/material/shape/f;->c()Lcom/google/android/material/shape/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/e;

    invoke-static {}, Lcom/google/android/material/shape/f;->c()Lcom/google/android/material/shape/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j:Lcom/google/android/material/shape/e;

    invoke-static {}, Lcom/google/android/material/shape/f;->c()Lcom/google/android/material/shape/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/e;

    invoke-static {}, Lcom/google/android/material/shape/f;->c()Lcom/google/android/material/shape/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l:Lcom/google/android/material/shape/e;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->a:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/c;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/c;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/c;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/c;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/c;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/b;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/b;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/b;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/b;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/b;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/b;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/b;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/b;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/e;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/e;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/e;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j:Lcom/google/android/material/shape/e;

    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/e;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/e;

    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/e;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l:Lcom/google/android/material/shape/e;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->j:Lcom/google/android/material/shape/e;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->k:Lcom/google/android/material/shape/e;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->l:Lcom/google/android/material/shape/e;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/c;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/shape/ShapeAppearanceModel$b;)Lcom/google/android/material/shape/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/e;

    return-object p0
.end method

.method private static n(Lcom/google/android/material/shape/c;)F
    .locals 1

    instance-of v0, p0, Lcom/google/android/material/shape/h;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/shape/h;

    iget p0, p0, Lcom/google/android/material/shape/h;->a:F

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/material/shape/d;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/material/shape/d;

    iget p0, p0, Lcom/google/android/material/shape/d;->a:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public A(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method public B(Lcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->e:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method public C(ILcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/shape/f;->a(I)Lcom/google/android/material/shape/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->D(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->F(Lcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    return-object p0
.end method

.method public D(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->b:Lcom/google/android/material/shape/c;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->n(Lcom/google/android/material/shape/c;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->E(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    :cond_0
    return-object p0
.end method

.method public E(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method public F(Lcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->f:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method public m()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$b;Lcom/google/android/material/shape/ShapeAppearanceModel$a;)V

    return-object v0
.end method

.method public o(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->A(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->E(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->v(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->r(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    return-object p0
.end method

.method public p(ILcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/shape/f;->a(I)Lcom/google/android/material/shape/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->q(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->s(Lcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    return-object p0
.end method

.method public q(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->d:Lcom/google/android/material/shape/c;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->n(Lcom/google/android/material/shape/c;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->r(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    :cond_0
    return-object p0
.end method

.method public r(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method public s(Lcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->h:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method public t(ILcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/shape/f;->a(I)Lcom/google/android/material/shape/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->u(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->w(Lcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    return-object p0
.end method

.method public u(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->c:Lcom/google/android/material/shape/c;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->n(Lcom/google/android/material/shape/c;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->v(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    :cond_0
    return-object p0
.end method

.method public v(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/shape/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method public w(Lcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->g:Lcom/google/android/material/shape/b;

    return-object p0
.end method

.method public x(Lcom/google/android/material/shape/e;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->i:Lcom/google/android/material/shape/e;

    return-object p0
.end method

.method public y(ILcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/google/android/material/shape/f;->a(I)Lcom/google/android/material/shape/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->z(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->B(Lcom/google/android/material/shape/b;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    return-object p0
.end method

.method public z(Lcom/google/android/material/shape/c;)Lcom/google/android/material/shape/ShapeAppearanceModel$b;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->a:Lcom/google/android/material/shape/c;

    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->n(Lcom/google/android/material/shape/c;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->A(F)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    :cond_0
    return-object p0
.end method
