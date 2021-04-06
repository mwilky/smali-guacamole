.class public Lcom/google/android/material/transition/MaterialSharedAxis;
.super Lcom/google/android/material/transition/MaterialVisibility;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/MaterialVisibility<",
        "Lcom/google/android/material/transition/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field private final axis:I

.field private final context:Landroid/content/Context;

.field private final forward:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/transition/MaterialVisibility;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->context:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->axis:I

    iput-boolean p3, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/transition/Visibility;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialVisibility;->initialize()V

    return-void
.end method

.method public static create(Landroid/content/Context;IZ)Lcom/google/android/material/transition/MaterialSharedAxis;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/transition/MaterialSharedAxis;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/transition/MaterialSharedAxis;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method


# virtual methods
.method public getAxis()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->axis:I

    return v0
.end method

.method getDefaultPrimaryAnimatorProvider()Lcom/google/android/material/transition/e;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->axis:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/material/transition/ScaleProvider;

    iget-boolean v1, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    invoke-direct {v0, v1}, Lcom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->axis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/material/transition/SlideDistanceProvider;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x50

    goto :goto_0

    :cond_2
    const/16 v2, 0x30

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(Landroid/content/Context;I)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/material/transition/SlideDistanceProvider;

    iget-object v1, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    if-eqz v2, :cond_4

    const v2, 0x800005

    goto :goto_1

    :cond_4
    const v2, 0x800003

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/transition/SlideDistanceProvider;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getDefaultSecondaryAnimatorProvider()Lcom/google/android/material/transition/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/google/android/material/transition/FadeThroughProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/FadeThroughProvider;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/e;

    move-result-object v0

    return-object v0
.end method

.method public isEntering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialSharedAxis;->forward:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/e;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/material/transition/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/e;)V

    return-void
.end method
