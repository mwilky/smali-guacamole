.class public abstract Landroidx/fragment/app/i;
.super Landroidx/viewpager/widget/a;
.source ""


# instance fields
.field private final c:Landroidx/fragment/app/f;

.field private final d:I

.field private e:Landroidx/fragment/app/j;

.field private f:Landroidx/fragment/app/Fragment;


# direct methods
.method private static s(IJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/i;->c:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->a()Landroidx/fragment/app/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/j;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/j;

    iget-object p1, p0, Landroidx/fragment/app/i;->f:Landroidx/fragment/app/Fragment;

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/i;->f:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/j;->i()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    :cond_0
    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/i;->c:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->a()Landroidx/fragment/app/j;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/i;->r(I)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Landroidx/fragment/app/i;->s(IJ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/i;->c:Landroidx/fragment/app/f;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/f;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/j;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/i;->q(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object p2, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Landroidx/fragment/app/i;->s(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, v2, p1}, Landroidx/fragment/app/j;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/j;

    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/i;->f:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p2, p0, Landroidx/fragment/app/i;->d:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2, p2}, Landroidx/fragment/app/j;->q(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/j;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    :goto_1
    return-object v2
.end method

.method public h(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public k()Landroid/os/Parcelable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Landroidx/fragment/app/i;->f:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_5

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p1, p0, Landroidx/fragment/app/i;->d:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/i;->c:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->a()Landroidx/fragment/app/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    iget-object v0, p0, Landroidx/fragment/app/i;->f:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/j;->q(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/j;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/i;->f:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p1, p0, Landroidx/fragment/app/i;->d:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/fragment/app/i;->c:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->a()Landroidx/fragment/app/j;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/j;

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/j;->q(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/j;

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :goto_1
    iput-object p3, p0, Landroidx/fragment/app/i;->f:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method

.method public p(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract q(I)Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public r(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
