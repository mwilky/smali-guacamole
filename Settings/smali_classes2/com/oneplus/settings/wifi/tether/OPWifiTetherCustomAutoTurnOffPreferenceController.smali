.class public Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPWifiTetherCustomAutoTurnOffPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CUSTOM_AUTO_TURN_OFF_10_MIN_INDEX:I = 0x2

.field private static final CUSTOM_AUTO_TURN_OFF_10_MIN_VALUE:I = 0x2

.field private static final CUSTOM_AUTO_TURN_OFF_15_MIN_INDEX:I = 0x3

.field private static final CUSTOM_AUTO_TURN_OFF_15_MIN_VALUE:I = 0x3

.field private static final CUSTOM_AUTO_TURN_OFF_20_MIN_INDEX:I = 0x4

.field private static final CUSTOM_AUTO_TURN_OFF_20_MIN_VALUE:I = 0x4

.field private static final CUSTOM_AUTO_TURN_OFF_30_MIN_INDEX:I = 0x5

.field private static final CUSTOM_AUTO_TURN_OFF_30_MIN_VALUE:I = 0x6

.field private static final CUSTOM_AUTO_TURN_OFF_5_MIN_INDEX:I = 0x1

.field private static final CUSTOM_AUTO_TURN_OFF_5_MIN_VALUE:I = 0x1

.field private static final CUSTOM_AUTO_TURN_OFF_60_MIN_INDEX:I = 0x6

.field private static final CUSTOM_AUTO_TURN_OFF_60_MIN_VALUE:I = 0xc

.field private static final CUSTOM_AUTO_TURN_OFF_ALWAYS_INDEX:I = 0x0

.field private static final CUSTOM_AUTO_TURN_OFF_ALWAYS_VALUE:I = 0x0

.field private static final CUSTOM_AUTO_TURN_OFF_TIME_DEFAULT:I = 0x927c0

.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_custom_auto_turn_off"


# instance fields
.field private final mCustomEntries:[Ljava/lang/String;

.field private mCustomTimes:[Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "wifi_tether_custom_auto_turn_off"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$array;->wifi_tether_verizon_custom_auto_turn_off_summary:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$array;->wifi_tether_custom_auto_turn_off_summary:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_tether_custom_auto_turn_off_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomTimes:[Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_1
    return-void
.end method

.method private getCustomAutoOffTimeOut(I)J
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getTimeOut(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getTimeOut(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getTimeOut(I)J

    move-result-wide p0

    return-wide p0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getTimeOut(I)J

    move-result-wide p0

    return-wide p0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getTimeOut(I)J

    move-result-wide p0

    return-wide p0

    :cond_4
    const/16 v1, 0xc

    if-ne p1, v1, :cond_5

    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getTimeOut(I)J

    move-result-wide p0

    return-wide p0

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getTimeOut(I)J

    move-result-wide p0

    return-wide p0

    :cond_6
    const-wide/32 p0, 0x927c0

    return-wide p0
.end method

.method private getCustomAutoOffTimeOutIndex(J)I
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomTimes:[Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomTimes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getTimeOut(I)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    const/4 p0, 0x1

    if-eq v2, p0, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_4

    const/4 p0, 0x4

    if-eq v2, p0, :cond_4

    const/4 p0, 0x5

    const/4 p1, 0x6

    if-eq v2, p0, :cond_3

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    const/16 p0, 0xc

    return p0

    :cond_3
    return p1

    :cond_4
    return p0

    :cond_5
    return v0

    :cond_6
    return v1
.end method

.method private getSummaryForDisplay(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_6

    if-ne p1, v3, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0

    :cond_0
    if-ne p1, v4, :cond_1

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v3

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v4

    return-object p0

    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_3
    const/16 v1, 0xc

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    const/4 p1, 0x5

    aget-object p0, p0, p1

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v4

    return-object p0

    :cond_6
    if-ne p1, v3, :cond_7

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0

    :cond_7
    if-ne p1, v4, :cond_8

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v3

    return-object p0

    :cond_8
    if-ne p1, v1, :cond_9

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v4

    return-object p0

    :cond_9
    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0
.end method

.method private getTimeOut(I)J
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomTimes:[Ljava/lang/String;

    if-eqz p0, :cond_0

    :try_start_0
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    const-wide/32 p0, 0x927c0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mCustomEntries:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$array;->wifi_tether_verizon_custom_auto_turn_off_values:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$array;->wifi_tether_custom_auto_turn_off_values:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getCustomAutoOffTimeOutIndex(J)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "soft_ap_timeout_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getSummaryForDisplay(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_custom_auto_turn_off"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
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

    invoke-direct {p0, p2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getSummaryForDisplay(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "soft_ap_timeout_enabled"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    move-object p1, v1

    :goto_1
    invoke-direct {p0, p2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->getCustomAutoOffTimeOut(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
