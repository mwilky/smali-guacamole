.class Lcom/android/server/ConnectivityService$6;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7500(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$7600(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    :cond_2
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$7700(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    :cond_3
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$7800(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    :cond_4
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$7900(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    :cond_5
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$8000(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    :cond_6
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v5, v3}, Lcom/android/server/ConnectivityService;->access$8100(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v5, v3}, Lcom/android/server/ConnectivityService;->access$8200(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_1

    :cond_8
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v6, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v5, v3, v2}, Lcom/android/server/ConnectivityService;->access$8300(Lcom/android/server/ConnectivityService;Ljava/lang/String;IZ)V

    :cond_9
    :goto_1
    return-void
.end method
