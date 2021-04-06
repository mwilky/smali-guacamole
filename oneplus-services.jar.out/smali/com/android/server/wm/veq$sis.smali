.class Lcom/android/server/wm/veq$sis;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/veq;->vdw(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/veq;


# direct methods
.method constructor <init>(Lcom/android/server/wm/veq;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/veq$sis;->zta:Lcom/android/server/wm/veq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq$sis;->zta:Lcom/android/server/wm/veq;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/wm/veq;->ssp(Lcom/android/server/wm/veq;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/veq$sis;->zta:Lcom/android/server/wm/veq;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/veq;->ssp(Lcom/android/server/wm/veq;Z)Z

    return-void
.end method
