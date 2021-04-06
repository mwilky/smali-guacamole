.class Lcom/android/settings/development/NfcNonStdPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcNonStdPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/NfcNonStdPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/NfcNonStdPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;->this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;->this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/NfcNonStdPreferenceController;->access$000(Lcom/android/settings/development/NfcNonStdPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    iget-object p1, p0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;->this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/NfcNonStdPreferenceController;->access$000(Lcom/android/settings/development/NfcNonStdPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;->this$0:Lcom/android/settings/development/NfcNonStdPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/NfcNonStdPreferenceController;->access$100(Lcom/android/settings/development/NfcNonStdPreferenceController;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
