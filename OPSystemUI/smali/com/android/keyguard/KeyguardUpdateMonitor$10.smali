.class Lcom/android/keyguard/KeyguardUpdateMonitor$10;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x12d

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object v0

    const/16 v1, 0x13d

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, v1, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "com.android.facelock.FACE_UNLOCK_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x147

    if-eqz v0, :cond_2

    const-string p1, "KeyguardUpdateMonitor.mBroadcastAllReceiver#onReceive ACTION_FACE_UNLOCK_STARTED"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-virtual {p2, v4, v0, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "com.android.facelock.FACE_UNLOCK_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-virtual {p2, v4, v3, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p2

    const/16 v0, 0x135

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p2

    const/16 v0, 0x14e

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-virtual {p2, v0, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x154

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, v0, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    const/16 v0, 0x155

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, v0, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_7
    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$OpHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_0
    return-void
.end method
