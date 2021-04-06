.class public Lcom/android/settings/applications/manageapplications/ResetAppsHelper;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static volatile isResetting:Z


# instance fields
.field private final mAom:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mNm:Landroid/app/INotificationManager;

.field private final mNpm:Landroid/net/NetworkPolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResetDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isResetting:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->resetDefaultApps(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->sendResetAllModesIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method private isAppExist(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetDefaultApps(Landroid/content/Context;)V
    .locals 12

    const-string v0, "com.android.chrome"

    const-string v1, "com.google.android.gm"

    const-string v2, "com.heytap.browser"

    const-string v3, "com.android.dialer"

    const-string v4, "com.oneplus.camera"

    const-string v5, "com.google.android.dialer"

    const-string v6, "com.oneplus.gallery"

    const-string v7, "ResetAppsHelper"

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sget-object v10, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v10}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initDefaultAppSettings(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v10, "com.android.mms"

    invoke-static {v10, p1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isAppExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {p1, v5, v8}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isH2()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isAppExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1, v3, v8}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isAppExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "reset op_default_app_gallerycom.oneplus.gallery"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object p1

    const-string v3, "op_default_app_gallery"

    invoke-virtual {p1, v3, v6}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->resetAppByType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isAppExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "reset op_default_app_cameracom.oneplus.camera"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object p1

    const-string v3, "op_default_app_camera"

    invoke-virtual {p1, v3, v4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->resetAppByType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isAppExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "reset op_default_app_emailcom.google.android.gm"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object p1

    const-string v2, "op_default_app_email"

    invoke-virtual {p1, v2, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->resetAppByType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isAppExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "reset DEFAULT_BROWSER_OXYGENcom.android.chrome"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v0, v8}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isAppExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "reset DEFAULT_BROWSER_HYDROGENcom.heytap.browser"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v2, v8}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    :cond_6
    :goto_1
    new-instance p0, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.category.HOME"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string p1, "android.intent.category.DEFAULT"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string v0, "net.oneplus.launcher/net.oneplus.launcher.Launcher"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/high16 v2, 0x100000

    new-array v1, v1, [Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ComponentName;

    invoke-virtual {v9, p0, v2, p1, v0}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reset default app exception."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private sendResetAllModesIntent(Landroid/content/Context;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.RESET_ALL_MODES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->reset_app_preferences_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->reset_app_preferences_desc:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->reset_app_preferences_button:I

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->isResetting:Z

    if-eqz p1, :cond_1

    const-string p0, "ResetAppsHelper"

    const-string p1, "isResetting return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$1;-><init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "resetDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->buildResetDialog()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string v0, "resetDialog"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->mResetDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method
