.class public abstract Lcom/google/android/material/indicator/animation/type/BaseAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/animation/Animator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_TIME:I = 0x7d


# instance fields
.field protected animationDuration:J

.field protected animator:Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected listener:Lcom/google/android/material/indicator/a/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/indicator/a/a/a;)V
    .locals 2
    .param p1    # Lcom/google/android/material/indicator/a/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d

    iput-wide v0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animationDuration:J

    iput-object p1, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->listener:Lcom/google/android/material/indicator/a/a/a;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->createAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public abstract createAnimator()Landroid/animation/Animator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public duration(J)Lcom/google/android/material/indicator/animation/type/BaseAnimation;
    .locals 2

    iput-wide p1, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animationDuration:J

    iget-object v0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_0
    return-object p0
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public abstract progress(F)Lcom/google/android/material/indicator/animation/type/BaseAnimation;
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
