.class Lcom/android/server/display/OpLightSensorController$1;
.super Ljava/lang/Object;
.source "OpLightSensorController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OpLightSensorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OpLightSensorController;


# direct methods
.method constructor <init>(Lcom/android/server/display/OpLightSensorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v0}, Lcom/android/server/display/OpLightSensorController;->access$100(Lcom/android/server/display/OpLightSensorController;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v0}, Lcom/android/server/display/OpLightSensorController;->access$200(Lcom/android/server/display/OpLightSensorController;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OpLightSensorController"

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1, v0}, Lcom/android/server/display/OpLightSensorController;->access$302(Lcom/android/server/display/OpLightSensorController;F)F

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$400(Lcom/android/server/display/OpLightSensorController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$000(Lcom/android/server/display/OpLightSensorController;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1, v3}, Lcom/android/server/display/OpLightSensorController;->access$502(Lcom/android/server/display/OpLightSensorController;F)F

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$600(Lcom/android/server/display/OpLightSensorController;)Lcom/android/server/display/OpLightSensorController$Listener;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v3}, Lcom/android/server/display/OpLightSensorController;->access$300(Lcom/android/server/display/OpLightSensorController;)F

    move-result v3

    iget-object v6, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v6}, Lcom/android/server/display/OpLightSensorController;->access$500(Lcom/android/server/display/OpLightSensorController;)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v3}, Lcom/android/server/display/OpLightSensorController;->access$300(Lcom/android/server/display/OpLightSensorController;)F

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v3}, Lcom/android/server/display/OpLightSensorController;->access$500(Lcom/android/server/display/OpLightSensorController;)F

    move-result v3

    :goto_0
    invoke-interface {v1, v4, v5, v3}, Lcom/android/server/display/OpLightSensorController$Listener;->onSensorChanged(JF)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v0}, Lcom/android/server/display/OpLightSensorController;->access$700(Lcom/android/server/display/OpLightSensorController;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v0}, Lcom/android/server/display/OpLightSensorController;->access$400(Lcom/android/server/display/OpLightSensorController;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v0}, Lcom/android/server/display/OpLightSensorController;->access$000(Lcom/android/server/display/OpLightSensorController;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$800(Lcom/android/server/display/OpLightSensorController;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1, v0}, Lcom/android/server/display/OpLightSensorController;->access$900(Lcom/android/server/display/OpLightSensorController;F)F

    move-result v6

    invoke-static {v1, v6}, Lcom/android/server/display/OpLightSensorController;->access$502(Lcom/android/server/display/OpLightSensorController;F)F

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$1000(Lcom/android/server/display/OpLightSensorController;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$500(Lcom/android/server/display/OpLightSensorController;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Revise lux from "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v6}, Lcom/android/server/display/OpLightSensorController;->access$500(Lcom/android/server/display/OpLightSensorController;)F

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$300(Lcom/android/server/display/OpLightSensorController;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$600(Lcom/android/server/display/OpLightSensorController;)Lcom/android/server/display/OpLightSensorController$Listener;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v3}, Lcom/android/server/display/OpLightSensorController;->access$300(Lcom/android/server/display/OpLightSensorController;)F

    move-result v3

    iget-object v6, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v6}, Lcom/android/server/display/OpLightSensorController;->access$500(Lcom/android/server/display/OpLightSensorController;)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v3}, Lcom/android/server/display/OpLightSensorController;->access$300(Lcom/android/server/display/OpLightSensorController;)F

    move-result v3

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v3}, Lcom/android/server/display/OpLightSensorController;->access$500(Lcom/android/server/display/OpLightSensorController;)F

    move-result v3

    :goto_2
    invoke-interface {v1, v4, v5, v3}, Lcom/android/server/display/OpLightSensorController$Listener;->onSensorChanged(JF)V

    :cond_8
    goto :goto_4

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v0, v3}, Lcom/android/server/display/OpLightSensorController;->access$502(Lcom/android/server/display/OpLightSensorController;F)F

    return-void

    :cond_a
    const-string v0, "Ignore sensor event."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v0}, Lcom/android/server/display/OpLightSensorController;->access$1000(Lcom/android/server/display/OpLightSensorController;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSensorChanged(): mMainLastLux =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$300(Lcom/android/server/display/OpLightSensorController;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxLastLux = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OpLightSensorController$1;->this$0:Lcom/android/server/display/OpLightSensorController;

    invoke-static {v1}, Lcom/android/server/display/OpLightSensorController;->access$500(Lcom/android/server/display/OpLightSensorController;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method
