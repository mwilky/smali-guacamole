.class Lcom/android/server/display/DisplayPowerController$4;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/RampAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method public onBrightnessChanged(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/OpBrightnessReasonAndRate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->updateBrightnessValue(F)V

    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$900()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->notifyNitsChange(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayOLC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayOLC;->getSunReadableVoteEnableStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1200(Lcom/android/server/display/DisplayPowerController;Z)V

    :cond_2
    return-void
.end method
