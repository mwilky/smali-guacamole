.class Lcom/android/settings/network/ApnSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.telephony.extra.SUBSCRIPTION_ID"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/settings/network/SubscriptionUtil;->getPhoneId(Landroid/content/Context;I)I

    move-result p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;)I

    move-result p1

    if-eq p2, p1, :cond_1

    const-string p1, "Save previous sub info"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$500(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/network/ApnSettings;->access$402(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->access$302(Lcom/android/settings/network/ApnSettings;I)I

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->access$600(Lcom/android/settings/network/ApnSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->access$502(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$300(Lcom/android/settings/network/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->access$700(Lcom/android/settings/network/ApnSettings;I)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->access$100(Lcom/android/settings/network/ApnSettings;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x3e9

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$000()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->access$100(Lcom/android/settings/network/ApnSettings;)V

    goto/16 :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p0, v0}, Lcom/android/settings/network/ApnSettings;->access$800(Lcom/android/settings/network/ApnSettings;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "phone"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_5

    return-void

    :cond_5
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ABSENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "NOT_READY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_6
    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$500(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$500(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    if-eq p2, p1, :cond_8

    :cond_7
    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$400(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->access$400(Lcom/android/settings/network/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    if-ne p2, p1, :cond_d

    :cond_8
    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_CLOSE_SYSTEM_DIALOGS reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$000()Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "homekey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android.intent.action.restoreDefaultAPN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_RESTORE_DEFAULT_APN mRestoreDefaultApnMode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$000()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$000()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$900(Lcom/android/settings/network/ApnSettings;)Landroid/os/HandlerThread;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$900(Lcom/android/settings/network/ApnSettings;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->access$902(Lcom/android/settings/network/ApnSettings;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->access$1002(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;)Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;

    :cond_b
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$100(Lcom/android/settings/network/ApnSettings;)V

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$002(Z)Z

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1, v0}, Lcom/android/settings/network/ApnSettings;->access$1100(Lcom/android/settings/network/ApnSettings;I)V

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->restore_default_apn_completed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "subscription"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->access$1200(Lcom/android/settings/network/ApnSettings;)V

    iget-object p0, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/ApnSettings;->access$100(Lcom/android/settings/network/ApnSettings;)V

    :cond_d
    :goto_0
    return-void
.end method
