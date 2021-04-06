.class public Lcom/oneplus/settings/quickpay/QuickPaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuickPaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mAllPayWaysPreference:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultLongPressOnHomeBehavior:I

.field private mFingerprintLongpressQuickpay:Landroidx/preference/SwitchPreference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasFingerprint:Z

.field private mHomeKeyActionName:[Ljava/lang/String;

.field private mHomeKeyActionValue:[Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPayWaysKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPayWaysName:[Ljava/lang/String;

.field private mPayWaysNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPayWaysValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceDividerLine2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

.field private mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

.field private mQuickpayInstructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

.field private mQuickpaySelectDefaultWayCategory:Landroidx/preference/PreferenceCategory;

.field private mQuickpayUninstallAppCategory:Landroidx/preference/PreferenceCategory;

.field private mQuickpayWayAlipayQrcode:Lcom/android/settings/widget/RadioButtonPreference;

.field private mQuickpayWayAlipayScanning:Lcom/android/settings/widget/RadioButtonPreference;

.field private mQuickpayWayPaytm:Lcom/android/settings/widget/RadioButtonPreference;

.field private mQuickpayWayWecahtQrcode:Lcom/android/settings/widget/RadioButtonPreference;

.field private mQuickpayWayWecahtRideCode:Lcom/android/settings/widget/RadioButtonPreference;

.field private mQuickpayWayWecahtScanning:Lcom/android/settings/widget/RadioButtonPreference;

.field private mSwitchLockscreen:Landroidx/preference/SwitchPreference;

.field private mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

.field private sPayWaysKey:[Ljava/lang/String;

.field private sPayWaysValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quickpay/QuickPaySettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    return-void
.end method

.method public static canShowQuickPay(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v4, "com.eg.android.AlipayGphone"

    invoke-static {p0, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "net.one97.paytm"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private checkFingerPrint()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    :goto_0
    return-void
.end method

.method private getLongPressHomeActionIndexByValue(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static gotoQuickPaySettingsPage(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.action.QUICKPAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity found for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickPaySettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initHomeActionName()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_quickpay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_quickpay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->methodIsMigrated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    sget v1, Lcom/android/settings/R$string;->hardware_keys_action_shelf:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private initPayWayData()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const-string v1, "net.one97.paytm"

    const-string v2, "com.eg.android.AlipayGphone"

    const-string v3, "com.tencent.mm"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtScanning:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtScanning:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayScanning:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayScanning:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayPaytm:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayPaytm:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtRideCode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtScanning:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtRideCode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtScanning:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtRideCode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayScanning:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayScanning:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_4
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayPaytm:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    :cond_6
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayPaytm:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_5
    return-void
.end method

.method private initPreference()V
    .locals 3

    sget v0, Lcom/android/settings/R$xml;->op_quickpay_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "key_switch_lockscreen"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_switch_unlockscreen"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    sget v2, Lcom/android/settings/R$string;->oneplus_fingerprint_quickpay_lock_swtch_summary:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    const-string v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayUninstallAppCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpaySelectDefaultWayCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_quickpay_instructions"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayInstructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;)V

    const-string v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPreferenceDividerLine2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    const-string v0, "key_quickpay_way_wecaht_qrcode"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v0, "key_quickpay_way_wecaht_scanning"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtScanning:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v0, "key_quickpay_way_wecaht_ridecode"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayWecahtRideCode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v0, "key_quickpay_way_alipay_qrcode"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayQrcode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v0, "key_quickpay_way_alipay_scanning"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayAlipayScanning:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v0, "key_quickpay_way_paytm"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayWayPaytm:Lcom/android/settings/widget/RadioButtonPreference;

    return-void
.end method

.method private initResourceData()V
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_quickpay_ways_key_O2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_quickpay_ways_value_O2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_quickpay_ways_name_O2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_quickpay_ways_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_quickpay_ways_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_quickpay_ways_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private refreshQuickPayEnableUI(Z)V
    .locals 1

    const-string v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    if-nez p1, :cond_0

    const-string p1, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpaySelectDefaultWayCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPreferenceDividerLine2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayUninstallAppCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private showConfirmChangeHomeAction(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    array-length v1, v0

    if-lt p2, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "longPressHomeActionIndex is out of max length.longPressHomeActionIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickPaySettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    aget-object p2, v0, p2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v2, Lcom/android/settings/R$string;->oneplus_quickpay_confirm_changehomebutton:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    sget v1, Lcom/android/settings/R$string;->oneplus_timer_shutdown_position:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V

    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    sget p2, Lcom/android/settings/R$string;->oneplus_timer_shutdown_nagative:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateLockHomeAction(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    return-void
.end method

.method private updatePreferenceState()V
    .locals 10

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPayWayData()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_default_way"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    const-string v6, "key_home_long_press_action"

    invoke-static {v4, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    const-string v7, "op_fingerprint_long_press_action"

    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpaySelectDefaultWayCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayUninstallAppCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpaySelectDefaultWayCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    move v5, v3

    move v7, v5

    :goto_0
    iget-object v8, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    iget-object v8, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpaySelectDefaultWayCategory:Landroidx/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/widget/RadioButtonPreference;

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v0, v9, :cond_1

    invoke-virtual {v8, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    move v7, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    invoke-virtual {v8, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    if-nez v7, :cond_4

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpaySelectDefaultWayCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayUninstallAppCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_6

    iget-boolean v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    move v0, v3

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v6

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "buttons_force_home_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v6

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    if-eqz v1, :cond_a

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    move v1, v3

    goto :goto_7

    :cond_a
    :goto_6
    move v1, v6

    :goto_7
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v2, 0xb

    if-ne v4, v2, :cond_b

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_8

    :cond_b
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_c
    :goto_8
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_d

    if-ne v0, v6, :cond_e

    :cond_d
    move v1, v6

    goto :goto_9

    :cond_e
    move v1, v3

    :goto_9
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-ne v0, v6, :cond_f

    move v3, v6

    :cond_f
    move v1, v3

    :cond_10
    invoke-direct {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    return-void
.end method

.method private updateUnLockFingerprintLongpressAction(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_fingerprint_long_press_action"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    return-void
.end method

.method private updateUnLockHomeAction(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_home_long_press_action"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public gotoFingerprintEnrollIntroduction(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    iget-boolean v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quickpay_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initResourceData()V

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance p1, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initResourceData()V

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayInstructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->stopAnim()V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchLockscreen:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoFingerprintEnrollIntroduction(I)V

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateLockHomeAction(Z)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mSwitchUnlockscreen:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    const-string v3, "key_home_long_press_action"

    invoke-static {p2, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getLongPressHomeActionIndexByValue(I)I

    move-result p2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->showConfirmChangeHomeAction(ZI)V

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockFingerprintLongpressAction(Z)V

    return v1

    :cond_4
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "op_quickpay_default_way"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickpayInstructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->playOrStopAnim()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
