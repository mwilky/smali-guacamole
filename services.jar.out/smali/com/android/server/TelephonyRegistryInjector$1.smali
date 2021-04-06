.class Lcom/android/server/TelephonyRegistryInjector$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistryInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistryInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistryInjector;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistryInjector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TelephonyRegistryInjector$1;->this$0:Lcom/android/server/TelephonyRegistryInjector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oem.intent.action.ONLINE_CONFIG_TELEPHONY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/TelephonyRegistryInjector;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ACTION_ONLINE_CONFIG_CHANGED"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistryInjector;->access$000(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistryInjector$1;->this$0:Lcom/android/server/TelephonyRegistryInjector;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistryInjector;->access$100(Lcom/android/server/TelephonyRegistryInjector;)V

    :cond_1
    return-void
.end method
