.class public Landroidx/transition/b;
.super Landroidx/transition/p;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    invoke-direct {p0}, Landroidx/transition/b;->u()V

    return-void
.end method

.method private u()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/transition/p;->q(I)Landroidx/transition/p;

    new-instance v1, Landroidx/transition/e;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/transition/e;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/p;->f(Landroidx/transition/Transition;)Landroidx/transition/p;

    new-instance v1, Landroidx/transition/ChangeBounds;

    invoke-direct {v1}, Landroidx/transition/ChangeBounds;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/transition/p;->f(Landroidx/transition/Transition;)Landroidx/transition/p;

    new-instance v1, Landroidx/transition/e;

    invoke-direct {v1, v0}, Landroidx/transition/e;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/p;->f(Landroidx/transition/Transition;)Landroidx/transition/p;

    return-void
.end method
