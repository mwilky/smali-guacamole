.class public Landroidx/animation/AnimatorSet$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:Landroidx/animation/AnimatorSet$e;

.field final synthetic b:Landroidx/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroidx/animation/AnimatorSet;Landroidx/animation/b;)V
    .locals 1

    iput-object p1, p0, Landroidx/animation/AnimatorSet$d;->b:Landroidx/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/animation/AnimatorSet;->i:Z

    invoke-virtual {p1, p2}, Landroidx/animation/AnimatorSet;->C(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$e;

    move-result-object p1

    iput-object p1, p0, Landroidx/animation/AnimatorSet$d;->a:Landroidx/animation/AnimatorSet$e;

    return-void
.end method


# virtual methods
.method public a(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$d;
    .locals 1
    .param p1    # Landroidx/animation/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/animation/AnimatorSet$d;->b:Landroidx/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroidx/animation/AnimatorSet;->C(Landroidx/animation/b;)Landroidx/animation/AnimatorSet$e;

    move-result-object p1

    iget-object v0, p0, Landroidx/animation/AnimatorSet$d;->a:Landroidx/animation/AnimatorSet$e;

    invoke-virtual {v0, p1}, Landroidx/animation/AnimatorSet$e;->d(Landroidx/animation/AnimatorSet$e;)V

    return-object p0
.end method
