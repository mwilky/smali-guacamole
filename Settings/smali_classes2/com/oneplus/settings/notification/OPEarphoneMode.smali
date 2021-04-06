.class public Lcom/oneplus/settings/notification/OPEarphoneMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAutoAnswerViaBluetooth:Landroidx/preference/SwitchPreference;

.field private mAutoPlay:Landroidx/preference/SwitchPreference;

.field private mBluetoothVolume:Landroidx/preference/SwitchPreference;

.field private mCallInformationBroadcast:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mGoogleTTS:Landroidx/preference/Preference;

.field private mNotificationRingtone:Landroidx/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/notification/OPEarphoneMode$4;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPEarphoneMode$4;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPEarphoneMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/notification/OPEarphoneMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->sendTTSCallIntent(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPEarphoneMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->doClickLink()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private confirmCallInformationBroadcast()V
    .locals 4

    new-instance v0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPEarphoneMode$1;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    new-instance v1, Lcom/oneplus/settings/notification/OPEarphoneMode$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPEarphoneMode$2;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->oneplus_network_permission_alerts:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->oneplus_network_permission_alerts_message:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v1, Lcom/oneplus/settings/notification/OPEarphoneMode$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPEarphoneMode$3;-><init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private doClickLink()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getBrowserApp(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->oneplus_network_permission_alerts_html:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getBrowserApp(Landroid/content/Context;)Landroid/content/pm/ActivityInfo;
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "http://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_0
    return-object v1
.end method

.method private sendTTSCallIntent(Z)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.TTS_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tts_call_value"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x11000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private updateNotificationRingtoneSummary(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_notification_ringtone_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroidx/preference/ListPreference;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$xml;->op_earphone_mode:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "earmode_from_notify"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v0, :cond_0

    const-string p1, "ear.entrance"

    invoke-static {p1, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_0
    const-string p1, "auto_play"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoPlay:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoPlay:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_auto_play"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "auto_answer_via_bluetooth"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoAnswerViaBluetooth:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mAutoAnswerViaBluetooth:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "call_information_broadcast"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "oem_call_information_broadcast"

    invoke-static {v3, v5, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mCallInformationBroadcast:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGoogleCommSuit()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_5
    const-string p1, "notification_ringtone"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_6
    const-string p1, "bluetooth_volume_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mBluetoothVolume:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "google_tts"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_8
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "oem_auto_play"

    invoke-static {p0, p2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p0, "ear.Autoplay"

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "call_information_broadcast"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p2

    const-string v0, "oem_call_information_broadcast"

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroidx/preference/Preference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/oneplus/settings/notification/OPEarphoneMode;->sendTTSCallIntent(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    :goto_0
    const-string p0, "ear.TTS"

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "notification_ringtone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mNotificationRingtone:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->oneplus_notification_dialog_ringtone:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "oem_notification_ringtone"

    invoke-static {p2, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->updateNotificationRingtoneSummary(I)V

    const-string p0, "ear.remind"

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bluetooth_volume_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p2, "false"

    goto :goto_1

    :cond_6
    const-string p2, "true"

    :goto_1
    const-string v0, "persist.bluetooth.disableabsvol"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.avrcp.intent.action.ENABLE_ABSVOL"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "ear.vol"

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto_answer_via_bluetooth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_8
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "google_tts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.android.tts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_notification_ringtone"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->updateNotificationRingtoneSummary(I)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mBluetoothVolume:Landroidx/preference/SwitchPreference;

    const-string v1, "persist.bluetooth.disableabsvol"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_call_information_broadcast"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v2, v4

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode;->mGoogleTTS:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
