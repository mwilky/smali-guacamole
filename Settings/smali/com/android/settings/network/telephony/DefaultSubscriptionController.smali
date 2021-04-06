.class public abstract Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "DefaultSubscriptionController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# static fields
.field private static final EMERGENCY_ACCOUNT_HANDLE_ID:Ljava/lang/String; = "E"

.field private static final LIST_DATA_PREFERENCE_KEY:Ljava/lang/String; = "data_preference"

.field private static final PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "DefaultSubController"


# instance fields
.field private mCallState:[I

.field protected mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field protected mManager:Landroid/telephony/SubscriptionManager;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field protected mPreference:Landroidx/preference/ListPreference;

.field private mSelectableSubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelecomManager:Landroid/telecom/TelecomManager;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneCount:I

    new-array p2, p1, [Landroid/telephony/PhoneStateListener;

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mCallState:[I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/DefaultSubscriptionController;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mCallState:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/DefaultSubscriptionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/settings/network/telephony/DefaultSubscriptionController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController$1;-><init>(Lcom/android/settings/network/telephony/DefaultSubscriptionController;I)V

    aput-object v1, v0, p1

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private isCallStateIdle()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mCallState:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private registerPhoneStateListener()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateSubStatus()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateEntries()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateSubStatus()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "DefaultSubController"

    const-string/jumbo v0, "updateEntries: mSelectable subs is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v7, v4, :cond_3

    move v6, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "data_preference"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->isCallStateIdle()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->calls_and_sms_ask_every_time:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    new-array v7, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_7

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private updateSubStatus()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->getUiccCardProvisioningStatus(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
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

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
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

.method public getDefaultCallingAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object p0

    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    sget-object v3, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    const-string v4, "E"

    invoke-direct {v2, v3, v4}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v2}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method protected abstract getDefaultSubscriptionId()I
.end method

.method protected abstract getDefaultSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getLabelFromCallingAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultCallingAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->isCallingAccountBindToSubscription(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getLabelFromCallingAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->calls_and_sms_ask_every_time:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public isCallingAccountBindToSubscription(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

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

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->unRegisterPhoneStateListener()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->setDefaultSubscription(I)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->registerPhoneStateListener()V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSelectableSubs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateSubStatus()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method protected abstract setDefaultSubscription(I)V
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
