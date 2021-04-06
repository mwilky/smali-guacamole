.class Landroidx/transition/n$a$a;
.super Landroidx/transition/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/n$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/collection/ArrayMap;

.field final synthetic b:Landroidx/transition/n$a;


# direct methods
.method constructor <init>(Landroidx/transition/n$a;Landroidx/collection/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/n$a$a;->b:Landroidx/transition/n$a;

    iput-object p2, p0, Landroidx/transition/n$a$a;->a:Landroidx/collection/ArrayMap;

    invoke-direct {p0}, Landroidx/transition/m;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/n$a$a;->a:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Landroidx/transition/n$a$a;->b:Landroidx/transition/n$a;

    iget-object v1, v1, Landroidx/transition/n$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    return-void
.end method
