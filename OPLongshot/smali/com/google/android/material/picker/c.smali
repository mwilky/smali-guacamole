.class Lcom/google/android/material/picker/c;
.super Landroidx/viewpager/widget/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/c$b;,
        Lcom/google/android/material/picker/c$c;
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Calendar;

.field private final d:Ljava/util/Calendar;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/picker/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/view/LayoutInflater;

.field private final g:I

.field private final h:I

.field private i:Ljava/util/Calendar;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/content/res/ColorStateList;

.field private p:Lcom/google/android/material/picker/c$b;

.field private q:I

.field private r:I

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/picker/SimpleMonthView;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/google/android/material/picker/SimpleMonthView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/c;->d:Ljava/util/Calendar;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/picker/c;->i:Ljava/util/Calendar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/c;->s:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/material/picker/c$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/c$a;-><init>(Lcom/google/android/material/picker/c;)V

    iput-object v0, p0, Lcom/google/android/material/picker/c;->t:Lcom/google/android/material/picker/SimpleMonthView$b;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/c;->f:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/google/android/material/picker/c;->g:I

    iput p3, p0, Lcom/google/android/material/picker/c;->h:I

    const/4 p2, 0x1

    new-array p2, p2, [I

    const p3, 0x101042c

    const/4 v0, 0x0

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/c;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic q(Lcom/google/android/material/picker/c;)Lcom/google/android/material/picker/c$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/c;->p:Lcom/google/android/material/picker/c$b;

    return-object p0
.end method

.method private s(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0xc

    return p1
.end method

.method private t(Ljava/util/Calendar;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v2, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p1

    return v1
.end method

.method private u(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xc

    iget-object v0, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public A(Lcom/google/android/material/picker/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/c;->p:Lcom/google/android/material/picker/c$b;

    return-void
.end method

.method public B(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3
    .param p1    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/c;->d:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Lcom/google/android/material/picker/c;->d:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/material/picker/c;->d:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/material/picker/c;->q:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->i()V

    return-void
.end method

.method public C(Ljava/util/Calendar;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/c;->i:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/c;->t(Ljava/util/Calendar;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/c;->t(Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/c$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/google/android/material/picker/SimpleMonthView;->U(I)V

    :cond_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/c$c;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v0, v0, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/SimpleMonthView;->U(I)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/picker/c;->i:Ljava/util/Calendar;

    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/google/android/material/picker/c$c;

    iget-object p3, p3, Lcom/google/android/material/picker/c$c;->b:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/c;->q:I

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/material/picker/c$c;

    iget p1, p1, Lcom/google/android/material/picker/c$c;->a:I

    return p1
.end method

.method public g(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/picker/c;->f:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/material/picker/c;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/c;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/picker/SimpleMonthView;

    iget-object v2, p0, Lcom/google/android/material/picker/c;->t:Lcom/google/android/material/picker/SimpleMonthView$b;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->T(Lcom/google/android/material/picker/SimpleMonthView$b;)V

    iget v2, p0, Lcom/google/android/material/picker/c;->j:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->R(I)V

    iget v2, p0, Lcom/google/android/material/picker/c;->k:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->J(I)V

    iget v2, p0, Lcom/google/android/material/picker/c;->l:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->M(I)V

    iget-object v2, p0, Lcom/google/android/material/picker/c;->n:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->L(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/picker/c;->o:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->I(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/picker/c;->m:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->S(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/google/android/material/picker/c;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->K(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/google/android/material/picker/c;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/picker/SimpleMonthView;->N(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/material/picker/c;->s(I)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/google/android/material/picker/c;->u(I)I

    move-result v5

    iget-object v2, p0, Lcom/google/android/material/picker/c;->i:Ljava/util/Calendar;

    const/4 v3, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/google/android/material/picker/c;->i:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    move v7, v2

    iget-object v2, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/google/android/material/picker/c;->c:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v9, v2

    goto :goto_1

    :cond_4
    move v9, v8

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/picker/c;->d:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/google/android/material/picker/c;->d:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/google/android/material/picker/c;->d:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_2

    :cond_5
    const/16 v2, 0x1f

    :goto_2
    move v8, v2

    iget v6, p0, Lcom/google/android/material/picker/c;->r:I

    move-object v2, v1

    move v3, v7

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/picker/SimpleMonthView;->P(IIIIII)V

    new-instance v2, Lcom/google/android/material/picker/c$c;

    invoke-direct {v2, p2, v0, v1}, Lcom/google/android/material/picker/c$c;-><init>(ILandroid/view/View;Lcom/google/android/material/picker/SimpleMonthView;)V

    iget-object v1, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public h(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/picker/c$c;

    iget-object p2, p2, Lcom/google/android/material/picker/c$c;->b:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/a;->m(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/material/picker/c;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    add-int/lit8 p3, p2, -0x1

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/c$c;

    iget-object p1, p1, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/c;->s:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/c$c;

    iget-object p3, p3, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/c;->s:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/picker/c$c;

    iget-object p3, p3, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/c$c;

    iget-object p1, p1, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/c;->s:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/picker/c$c;

    iget-object p2, p2, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public r()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/picker/SimpleMonthView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/picker/c;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method v(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/c;->k:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->i()V

    return-void
.end method

.method w(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/c;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->i()V

    return-void
.end method

.method x(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/c;->l:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->i()V

    return-void
.end method

.method public y(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/picker/c;->r:I

    iget-object v0, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/picker/c;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/picker/c$c;

    iget-object v2, v2, Lcom/google/android/material/picker/c$c;->c:Lcom/google/android/material/picker/SimpleMonthView;

    invoke-virtual {v2, p1}, Lcom/google/android/material/picker/SimpleMonthView;->O(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method z(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/c;->j:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->i()V

    return-void
.end method
