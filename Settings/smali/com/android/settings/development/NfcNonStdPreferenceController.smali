.class public Lcom/android/settings/development/NfcNonStdPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "NfcNonStdPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SETTING_VALUE_OFF:Ljava/lang/String; = "false"

.field static final SETTING_VALUE_ON:Ljava/lang/String; = "true"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/development/NfcNonStdPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/NfcNonStdPreferenceController$1;-><init>(Lcom/android/settings/development/NfcNonStdPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/NfcNonStdPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/development/NfcNonStdPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/NfcNonStdPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/NfcNonStdPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/development/NfcNonStdPreferenceController;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/NfcNonStdPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private resetNfcService()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/development/NfcNonStdPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/NfcNonStdPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/development/NfcNonStdPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "nxp_non_std_card"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string v0, "persist.vendor.nfc.nonstdenable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string p2, "persist.vendor.nfc.nonstdenable"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/development/NfcNonStdPreferenceController;->resetNfcService()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    const-string p1, "persist.vendor.nfc.nonstdenable"

    const-string v0, "false"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p0, "NfcNonStdPreferenceController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
