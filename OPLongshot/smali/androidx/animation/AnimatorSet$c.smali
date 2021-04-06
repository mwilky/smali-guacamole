.class Landroidx/animation/AnimatorSet$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Landroidx/animation/AnimatorSet$e;

.field final b:I


# direct methods
.method constructor <init>(Landroidx/animation/AnimatorSet$e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/animation/AnimatorSet$c;->a:Landroidx/animation/AnimatorSet$e;

    iput p2, p0, Landroidx/animation/AnimatorSet$c;->b:I

    return-void
.end method


# virtual methods
.method a()J
    .locals 6

    iget v0, p0, Landroidx/animation/AnimatorSet$c;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/animation/AnimatorSet$c;->a:Landroidx/animation/AnimatorSet$e;

    iget-wide v0, v0, Landroidx/animation/AnimatorSet$e;->h:J

    return-wide v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/animation/AnimatorSet$c;->a:Landroidx/animation/AnimatorSet$e;

    iget-wide v1, v0, Landroidx/animation/AnimatorSet$e;->h:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/animation/AnimatorSet$e;->a:Landroidx/animation/b;

    invoke-virtual {v0}, Landroidx/animation/b;->g()J

    move-result-wide v3

    add-long/2addr v3, v1

    :goto_0
    return-wide v3

    :cond_2
    iget-object v0, p0, Landroidx/animation/AnimatorSet$c;->a:Landroidx/animation/AnimatorSet$e;

    iget-wide v0, v0, Landroidx/animation/AnimatorSet$e;->i:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/animation/AnimatorSet$c;->b:I

    if-nez v0, :cond_0

    const-string v0, "start"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "delay ended"

    goto :goto_0

    :cond_1
    const-string v0, "end"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/animation/AnimatorSet$c;->a:Landroidx/animation/AnimatorSet$e;

    iget-object v0, v0, Landroidx/animation/AnimatorSet$e;->a:Landroidx/animation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
