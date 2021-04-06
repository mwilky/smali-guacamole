.class Landroidx/fragment/app/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/e;


# instance fields
.field private a:Landroidx/lifecycle/f;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/lifecycle/f;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/lifecycle/f;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/f;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/lifecycle/f;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/f;

    invoke-direct {v0, p0}, Landroidx/lifecycle/f;-><init>(Landroidx/lifecycle/e;)V

    iput-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/lifecycle/f;

    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/lifecycle/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/l;->b()V

    iget-object v0, p0, Landroidx/fragment/app/l;->a:Landroidx/lifecycle/f;

    return-object v0
.end method
