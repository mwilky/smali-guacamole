.class Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;
.super Ljava/lang/Object;
.source "OpAodDisplayViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager$4;->onTimeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->onTimeChanged()V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/slice/OpSliceManager;->onTimeChanged()V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodMain;->onTimeChanged()V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->onTimeChanged()V

    :cond_0
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mContinuousHorizonLights:Z
    
    if-eqz v0, :cond_mw
    
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$900(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_mw
    
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Z
    
    move-result v0
    
    if-eqz v0, :cond_mw

    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$4$1;->this$1:Lcom/oneplus/aod/OpAodDisplayViewManager$4;

    iget-object v0, v0, Lcom/oneplus/aod/OpAodDisplayViewManager$4;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;
    
    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1600(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodLightEffectContainer;
    
    move-result-object v0
    
    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->doContinuousHorizonLights()V
    
    :cond_mw
    return-void
.end method
