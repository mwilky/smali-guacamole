.class Lcom/google/android/material/indicator/animation/type/WormAnimation$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/indicator/animation/type/WormAnimation;->createWormAnimator(IIZLcom/google/android/material/indicator/a/b/b;ZI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/indicator/a/b/b;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lcom/google/android/material/indicator/animation/type/WormAnimation;


# direct methods
.method constructor <init>(Lcom/google/android/material/indicator/animation/type/WormAnimation;Lcom/google/android/material/indicator/a/b/b;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->e:Lcom/google/android/material/indicator/animation/type/WormAnimation;

    iput-object p2, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->a:Lcom/google/android/material/indicator/a/b/b;

    iput-boolean p3, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->b:Z

    iput-boolean p4, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->c:Z

    iput p5, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->e:Lcom/google/android/material/indicator/animation/type/WormAnimation;

    iget-object v1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->a:Lcom/google/android/material/indicator/a/b/b;

    iget-boolean v3, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->b:Z

    iget-boolean v4, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->c:Z

    iget v5, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$a;->d:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->access$000(Lcom/google/android/material/indicator/animation/type/WormAnimation;Lcom/google/android/material/indicator/a/b/b;Landroid/animation/ValueAnimator;ZZI)V

    return-void
.end method
