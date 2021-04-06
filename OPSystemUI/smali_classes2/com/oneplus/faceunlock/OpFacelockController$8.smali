.class Lcom/oneplus/faceunlock/OpFacelockController$8;
.super Ljava/lang/Object;
.source "OpFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/OpFacelockController;->updateKeyguardAlpha(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/OpFacelockController;

.field final synthetic val$alpha:I

.field final synthetic val$delayScreenOn:Z

.field final synthetic val$isLiveWp:Z

.field final synthetic val$updateState:Z


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/OpFacelockController;ZIZZ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    iput-boolean p2, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$isLiveWp:Z

    iput p3, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$alpha:I

    iput-boolean p4, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$updateState:Z

    iput-boolean p5, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$delayScreenOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$isLiveWp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2700(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$alpha:I

    sget v2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2000(Lcom/oneplus/faceunlock/OpFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->setReportNextDraw()V

    iget v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$alpha:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$updateState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$100(Lcom/oneplus/faceunlock/OpFacelockController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {v1}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2800(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->val$delayScreenOn:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockController$8;->this$0:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-static {p0}, Lcom/oneplus/faceunlock/OpFacelockController;->access$2800(Lcom/oneplus/faceunlock/OpFacelockController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
