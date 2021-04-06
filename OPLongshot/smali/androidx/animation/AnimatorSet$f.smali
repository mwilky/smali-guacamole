.class Landroidx/animation/AnimatorSet$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field final synthetic c:Landroidx/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroidx/animation/AnimatorSet;)V
    .locals 2

    iput-object p1, p0, Landroidx/animation/AnimatorSet$f;->c:Landroidx/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/animation/AnimatorSet$f;->a:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/animation/AnimatorSet$f;->b:Z

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Landroidx/animation/AnimatorSet$f;->a:J

    return-wide v0
.end method

.method b()J
    .locals 4

    iget-object v0, p0, Landroidx/animation/AnimatorSet$f;->c:Landroidx/animation/AnimatorSet;

    iget-boolean v1, v0, Landroidx/animation/AnimatorSet;->t:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/animation/AnimatorSet;->h()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/animation/AnimatorSet$f;->c:Landroidx/animation/AnimatorSet;

    iget-wide v2, v2, Landroidx/animation/AnimatorSet;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/animation/AnimatorSet$f;->a:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroidx/animation/AnimatorSet$f;->a:J

    return-wide v0
.end method

.method c()Z
    .locals 4

    iget-wide v0, p0, Landroidx/animation/AnimatorSet$f;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/animation/AnimatorSet$f;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/animation/AnimatorSet$f;->b:Z

    return-void
.end method

.method e(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/animation/AnimatorSet$f;->c:Landroidx/animation/AnimatorSet;

    invoke-virtual {v0}, Landroidx/animation/AnimatorSet;->h()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Error: Cannot reverse infinite animator set"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/animation/AnimatorSet$f;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Landroidx/animation/AnimatorSet$f;->b:Z

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroidx/animation/AnimatorSet$f;->c:Landroidx/animation/AnimatorSet;

    invoke-virtual {v0}, Landroidx/animation/AnimatorSet;->h()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/animation/AnimatorSet$f;->c:Landroidx/animation/AnimatorSet;

    iget-wide v2, v2, Landroidx/animation/AnimatorSet;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/animation/AnimatorSet$f;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/animation/AnimatorSet$f;->a:J

    iput-boolean p1, p0, Landroidx/animation/AnimatorSet$f;->b:Z

    :cond_2
    return-void
.end method
