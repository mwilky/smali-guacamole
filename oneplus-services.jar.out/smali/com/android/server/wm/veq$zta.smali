.class Lcom/android/server/wm/veq$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/veq;->d(Z)V
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

    iput-object p1, p0, Lcom/android/server/wm/veq$zta;->zta:Lcom/android/server/wm/veq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/veq$zta;->zta:Lcom/android/server/wm/veq;

    invoke-static {v0, p1}, Lcom/android/server/wm/veq;->zta(Lcom/android/server/wm/veq;F)F

    iget-object p0, p0, Lcom/android/server/wm/veq$zta;->zta:Lcom/android/server/wm/veq;

    invoke-static {p0, p1}, Lcom/android/server/wm/veq;->you(Lcom/android/server/wm/veq;F)V

    return-void
.end method
