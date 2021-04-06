.class Lcom/android/server/ServiceWatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServiceWatcher;->register()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x31af1c32

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const v4, 0x392cb822

    if-eq v3, v4, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    :goto_0
    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/ServiceWatcher;->onUserUnlocked(I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/ServiceWatcher;->onUserSwitched(I)V

    nop

    :goto_1
    return-void
.end method
