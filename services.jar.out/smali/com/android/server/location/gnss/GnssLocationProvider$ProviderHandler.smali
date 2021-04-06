.class final Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private handleInitialize()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3600(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    new-instance v2, Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3900(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4000(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4100(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/location/gnss/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3802(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssVisibilityControl;)Lcom/android/server/location/gnss/GnssVisibilityControl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4200(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.oneplus.intent.OEM_LOG_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3900(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4300(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4400(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3900(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    const-string/jumbo v7, "passive"

    invoke-static {v7, v5, v6, v3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    new-instance v8, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;

    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {v8, v9, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v1, v8, v4}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$1100(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v4, v7}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$800(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb

    if-eq v0, v2, :cond_6

    const/16 v2, 0xd

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2711

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3100(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    move v2, v1

    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    invoke-static {v3, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3000(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    move v2, v1

    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2700(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2800(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2600(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/NtpTimeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/gnss/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3300(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2902(Lcom/android/server/location/gnss/GnssLocationProvider;I)I

    goto :goto_0

    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v5, v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    invoke-static {v3, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2500(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3200(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    nop

    :goto_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_9

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3400(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$200()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock released by handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3500(Lcom/android/server/location/gnss/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
