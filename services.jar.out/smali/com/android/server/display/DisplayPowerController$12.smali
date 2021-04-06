.class Lcom/android/server/display/DisplayPowerController$12;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2700(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$2800(Lcom/android/server/display/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$2900()Z

    move-result v6

    const-string v7, ", positive = "

    const-string v8, "P-Sensor Changed: distance = "

    const-string v9, "DisplayPowerController"

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$3002(Z)Z

    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$3100()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v4, 0x0

    :cond_1
    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3, v0, v1, v4}, Lcom/android/server/display/DisplayPowerController;->access$3200(Lcom/android/server/display/DisplayPowerController;JZ)V

    goto :goto_1

    :cond_3
    sget-boolean v6, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v6, v0, v1, v4}, Lcom/android/server/display/DisplayPowerController;->access$3300(Lcom/android/server/display/DisplayPowerController;JZ)V

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$12;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz v4, :cond_5

    move v3, v5

    :cond_5
    const-string v5, "display_ctrl_psensor_positive"

    invoke-static {v6, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_1
    return-void
.end method
