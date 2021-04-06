.class Lcom/google/android/material/edgeeffect/SpringNestScrollView$b;
.super Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringNestScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/edgeeffect/SpringNestScrollView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$b;->a:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Lcom/google/android/material/edgeeffect/SpringNestScrollView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$b;-><init>(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;I)Landroid/widget/EdgeEffect;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->a(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringNestScrollView$a;

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$b;->a:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$b;->a:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->L(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F

    move-result v1

    neg-float v1, v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$a;-><init>(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Landroid/content/Context;F)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringNestScrollView$a;

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$b;->a:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$b;->a:Lcom/google/android/material/edgeeffect/SpringNestScrollView;

    invoke-static {v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->L(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$a;-><init>(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Landroid/content/Context;F)V

    return-object p1
.end method
