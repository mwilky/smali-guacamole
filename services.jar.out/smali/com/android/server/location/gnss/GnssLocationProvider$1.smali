.class Lcom/android/server/location/gnss/GnssLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive broadcast intent, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "com.oneplus.intent.OEM_LOG_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_7
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_8
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$800(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$700(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :pswitch_2
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$500(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$600(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/DeviceIdleInternal$StationaryListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/DeviceIdleInternal;->registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$600(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/DeviceIdleInternal$StationaryListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/DeviceIdleInternal;->unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    :goto_1
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$700(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$400(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$300(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_8
        -0x76c1dde1 -> :sswitch_7
        -0x628ffd1f -> :sswitch_6
        -0x56ac2893 -> :sswitch_5
        -0x43dd7a3f -> :sswitch_4
        -0x2872215f -> :sswitch_3
        -0x18365bb -> :sswitch_2
        0x33e5d967 -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method