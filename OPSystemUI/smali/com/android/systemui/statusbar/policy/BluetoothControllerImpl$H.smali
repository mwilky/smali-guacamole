.class final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private fireActvieDeviceChange()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private firePairedDevicesChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDevicesChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireActvieDeviceChange()V

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireStateChange()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_7

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$702(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)Z

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long p1, v2, v4

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;J)J

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->firePairedDevicesChanged()V

    :cond_7
    :goto_0
    return-void
.end method
