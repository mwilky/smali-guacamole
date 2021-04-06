.class public Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;
.super Lcom/android/settings/nfc/BaseNfcEnabler;
.source "PaymentSettingsEnabler.java"


# instance fields
.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mContext:Landroid/content/Context;

.field mIsPaymentAvailable:Z

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private final mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcEnabler;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mIsPaymentAvailable:Z

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected handleNfcStateChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mIsPaymentAvailable:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->app_list_preference_none:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->nfc_and_payment_settings_no_payment_installed_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->nfc_and_payment_settings_payment_off_nfc_off_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->isNfcAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v1, "payment"

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mIsPaymentAvailable:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->mIsPaymentAvailable:Z

    :goto_0
    invoke-super {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    return-void
.end method
