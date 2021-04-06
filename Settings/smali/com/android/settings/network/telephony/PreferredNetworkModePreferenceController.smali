.class public Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "PreferredNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PreferredNetworkMode"


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mIsGlobalCdma:Z

.field mIsPrimaryCardEnabled:Z

.field mIsPrimaryCardLWEnabled:Z

.field mIsSubsidyLockFeatureEnabled:Z

.field private mPersistableBundle:Landroid/os/PersistableBundle;

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

.field private mSubsidySettingsObserver:Landroid/database/ContentObserver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsPrimaryCardEnabled:Z

    iput-boolean p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsPrimaryCardLWEnabled:Z

    iput-boolean p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    new-instance p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$1;-><init>(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    new-instance p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$2;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$2;-><init>(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private getPreferredNetworkMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v1, Landroid/telephony/TelephonyManager;->DEFAULT_PREFERRED_NETWORK_MODE:I

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getPreferredNetworkModeSummaryResId(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_global_summary:I

    return p0

    :pswitch_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    :pswitch_1
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_gsm_wcdma_summary:I

    return p0

    :pswitch_2
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_wcdma_summary:I

    return p0

    :pswitch_3
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_gsm_summary:I

    return p0

    :pswitch_4
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_summary:I

    return p0

    :pswitch_5
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_wcdma_summary:I

    return p0

    :pswitch_6
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_cdma_evdo_gsm_wcdma_summary:I

    return p0

    :pswitch_7
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_gsm_wcdma_summary:I

    return p0

    :pswitch_8
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_cdma_evdo_summary:I

    return p0

    :pswitch_9
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_summary:I

    return p0

    :pswitch_a
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_only_summary:I

    return p0

    :pswitch_b
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    :pswitch_c
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    :pswitch_d
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_gsm_wcdma_summary:I

    return p0

    :pswitch_e
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_wcdma_summary:I

    return p0

    :pswitch_f
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_gsm_wcdma_summary:I

    return p0

    :pswitch_10
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_gsm_summary:I

    return p0

    :pswitch_11
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_gsm_summary:I

    return p0

    :pswitch_12
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_summary:I

    return p0

    :pswitch_13
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_wcdma_summary:I

    return p0

    :pswitch_14
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_summary:I

    return p0

    :pswitch_15
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_wcdma_summary:I

    return p0

    :pswitch_16
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_summary:I

    return p0

    :pswitch_17
    iget-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {p1, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_summary:I

    return p0

    :cond_1
    :goto_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_global_summary:I

    return p0

    :pswitch_18
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_gsm_wcdma_summary:I

    return p0

    :pswitch_19
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_cdma_evdo_summary:I

    return p0

    :pswitch_1a
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_evdo_gsm_wcdma_summary:I

    return p0

    :pswitch_1b
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_evdo_only_summary:I

    return p0

    :pswitch_1c
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_only_summary:I

    return p0

    :pswitch_1d
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_summary:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_evdo_summary:I

    :goto_1
    return p0

    :pswitch_1e
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_gsm_wcdma_summary:I

    return p0

    :pswitch_1f
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_wcdma_only_summary:I

    return p0

    :pswitch_20
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_gsm_only_summary:I

    return p0

    :pswitch_21
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_wcdma_perf_summary:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadPrimaryCardAndSubsidyLockValues()V
    .locals 3

    const-string v0, "PreferredNetworkMode"

    const-string v1, "loadPrimaryCardAndSubsidyLockValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isPrimaryCardEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsPrimaryCardEnabled:Z

    invoke-static {}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isPrimaryCardLWEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsPrimaryCardLWEnabled:Z

    invoke-static {}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isSubsidyLockFeatureEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    sget-boolean v1, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPrimaryCardEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsPrimaryCardEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPrimaryCardLWEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsPrimaryCardLWEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSubsidyLockFeatureEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updatePreferenceEntries(Landroidx/preference/ListPreference;)V
    .locals 7

    sget v0, Lcom/android/settings/R$array;->preferred_network_mode_choices:I

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    sget v0, Lcom/android/settings/R$array;->preferred_network_mode_values:I

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_current_primary_sub"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentPrimarySlot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isCurrentPrimarySlotValid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", currentPhoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PreferredNetworkMode"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsPrimaryCardEnabled:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "isPrimaryCardEnabled: true"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v3, :cond_3

    if-eq v4, v0, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsPrimaryCardLWEnabled:Z

    if-eqz v5, :cond_2

    const-string v1, "Primary card LW is enabled"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/settings/R$array;->preferred_network_mode_gsm_wcdma_choices:I

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    sget v1, Lcom/android/settings/R$array;->preferred_network_mode_gsm_wcdma_values:I

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v5

    if-ne v5, v1, :cond_3

    const-string v1, "Network mode is GSM only, disabling the preference"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSubsidyLockFeatureEnabled: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSubsidyUnlocked: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-boolean p0, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->DBG:Z

    if-eqz p0, :cond_5

    const-string p0, "Subsidy is unlocked"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v3, :cond_7

    if-ne v4, v0, :cond_6

    const-string p0, "Primary sub, change to subsidy choices"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/android/settings/R$array;->enabled_networks_subsidy_locked_choices:I

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntries(I)V

    sget p0, Lcom/android/settings/R$array;->enabled_networks_subsidy_locked_values:I

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_2

    :cond_6
    const-string p0, "Non-primary sub, disable the preference"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    move p0, v0

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "hide_carrier_network_settings_bool"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hide_preferred_network_type_bool"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "world_phone_bool"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    :goto_2
    return v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 2

    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "show_cdma_choices_bool"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsGlobalCdma:Z

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeBitmask(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkModeSummaryResId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->loadPrimaryCardAndSubsidyLockValues()V

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsSubsidyLockFeatureEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subsidy_status"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mSubsidySettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreferredNetworkModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->updatePreferenceEntries(Landroidx/preference/ListPreference;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkModeSummaryResId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
