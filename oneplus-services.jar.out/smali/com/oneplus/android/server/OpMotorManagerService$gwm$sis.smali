.class Lcom/oneplus/android/server/OpMotorManagerService$gwm$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/OpMotorManagerService$gwm;->ssp(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/OpMotorManagerService$gwm;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/OpMotorManagerService$gwm;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$gwm$sis;->zta:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/OpMotorManagerService;->zta()Z

    move-result p1

    const-string v0, "OpMotorManagerService"

    if-eqz p1, :cond_0

    const-string p1, "DismissAnimation\'s onAnimationEnd called"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$gwm$sis;->zta:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    invoke-static {p1}, Lcom/oneplus/android/server/OpMotorManagerService$gwm;->sis(Lcom/oneplus/android/server/OpMotorManagerService$gwm;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$gwm$sis;->zta:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    invoke-static {p1}, Lcom/oneplus/android/server/OpMotorManagerService$gwm;->sis(Lcom/oneplus/android/server/OpMotorManagerService$gwm;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$gwm$sis;->zta:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    invoke-static {p1}, Lcom/oneplus/android/server/OpMotorManagerService$gwm;->tsu(Lcom/oneplus/android/server/OpMotorManagerService$gwm;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$gwm$sis;->zta:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    invoke-static {v0}, Lcom/oneplus/android/server/OpMotorManagerService$gwm;->sis(Lcom/oneplus/android/server/OpMotorManagerService$gwm;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/android/server/OpMotorManagerService;->zta()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "mUpMotorView is not attached to window, do not remove"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$gwm$sis;->zta:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$gwm;->ssp:Lcom/oneplus/android/server/OpMotorManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/OpMotorManagerService;->fto(Lcom/oneplus/android/server/OpMotorManagerService;Lcom/oneplus/android/server/OpMotorManagerService$gwm;)Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
