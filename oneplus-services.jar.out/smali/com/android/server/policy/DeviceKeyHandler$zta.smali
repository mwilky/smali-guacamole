.class Lcom/android/server/policy/DeviceKeyHandler$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->oif(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->bvj(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->ibl(Lcom/android/server/policy/DeviceKeyHandler;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->gwm(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->vdb(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->zgw(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->ugm(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    const-string v0, "DeviceKeyHandler"

    const-string v1, "onScreenTurnedOff register pocket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->sis(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v1, v1, Lcom/android/server/policy/DeviceKeyHandler;->h:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$zta;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/DeviceKeyHandler;->you(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
