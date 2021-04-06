.class final Landroidx/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/animation/AnimatorSet$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/animation/AnimatorSet$c;Landroidx/animation/AnimatorSet$c;)I
    .locals 7

    invoke-virtual {p1}, Landroidx/animation/AnimatorSet$c;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/animation/AnimatorSet$c;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget p2, p2, Landroidx/animation/AnimatorSet$c;->b:I

    iget p1, p1, Landroidx/animation/AnimatorSet$c;->b:I

    add-int v0, p2, p1

    if-ne v0, v5, :cond_0

    sub-int/2addr p1, p2

    return p1

    :cond_0
    sub-int/2addr p2, p1

    return p2

    :cond_1
    const-wide/16 p1, -0x1

    cmp-long v4, v2, p1

    const/4 v6, -0x1

    if-nez v4, :cond_2

    return v6

    :cond_2
    cmp-long p1, v0, p1

    if-nez p1, :cond_3

    return v5

    :cond_3
    sub-long/2addr v0, v2

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    move v5, v6

    :goto_0
    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/animation/AnimatorSet$c;

    check-cast p2, Landroidx/animation/AnimatorSet$c;

    invoke-virtual {p0, p1, p2}, Landroidx/animation/AnimatorSet$3;->compare(Landroidx/animation/AnimatorSet$c;Landroidx/animation/AnimatorSet$c;)I

    move-result p1

    return p1
.end method
