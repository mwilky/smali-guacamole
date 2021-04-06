.class Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$a;
.super Lcom/google/android/material/transition/TransitionListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;->setUpEnterTransform(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$a;->a:Landroid/view/Window;

    invoke-direct {p0}, Lcom/google/android/material/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$a;->a:Landroid/view/Window;

    invoke-static {p1}, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;->access$100(Landroid/view/Window;)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$a;->a:Landroid/view/Window;

    invoke-static {p1}, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;->access$000(Landroid/view/Window;)V

    return-void
.end method
