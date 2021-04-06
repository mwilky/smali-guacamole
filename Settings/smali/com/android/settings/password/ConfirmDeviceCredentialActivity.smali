.class public Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

.field private mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private mCheckDevicePolicyManager:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mContext:Landroid/content/Context;

.field private mCredentialMode:I

.field private mDetails:Ljava/lang/String;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mGoingToBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTitle:Ljava/lang/String;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWaitingForBiometricCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/password/-$$Lambda$ConfirmDeviceCredentialActivity$VQO3VIMPrDVxMFsVWCFMzR8CT74;

    invoke-direct {v0, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmDeviceCredentialActivity$VQO3VIMPrDVxMFsVWCFMzR8CT74;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p0, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object v0
.end method

.method private getDetailsFromCredentialType(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic_profile:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic_profile:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_generic_profile:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_generic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getTitleFromCredentialType(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pin_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    if-eqz p2, :cond_5

    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pattern_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget p1, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isBiometricAllowed(II)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isStrongAuthRequired(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->hasPendingEscrowToken(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInternalActivity()Z
    .locals 0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    return p0
.end method

.method private isStrongAuthRequired(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showBiometricPrompt(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricManager;->setActiveUser(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/BiometricFragment;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/settings/password/BiometricFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/password/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/settings/password/BiometricFragment;->setUser(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricFragment:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private showConfirmCredentials()V
    .locals 11

    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    iget v10, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v1, "No pin/pattern/pass set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ConfirmDeviceCredentialActivity(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    const-class p1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    const-class p1, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTrustManager:Landroid/app/trust/TrustManager;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Landroid/content/Context;

    const-string v2, "check_dpm"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    const-string v3, "android.app.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    const-string v3, "android.app.extra.DESCRIPTION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    const-string v3, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    iput v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v5, "Invalid intent extra"

    invoke-static {v0, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {p1, v5}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    iget v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, v6}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    :cond_1
    new-instance v6, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v6, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    const-string v9, "title"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    const-string v9, "description"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCheckDevicePolicyManager:Z

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/settings/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v2

    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    if-nez v8, :cond_2

    invoke-direct {p0, v2, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromCredentialType(IZ)Ljava/lang/String;

    move-result-object v8

    const-string v9, "device_credential_title"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v8, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    if-nez v8, :cond_3

    invoke-direct {p0, v2, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getDetailsFromCredentialType(IZ)Ljava/lang/String;

    move-result-object v2

    const-string v8, "device_credential_subtitle"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x1

    if-eqz v4, :cond_4

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v1, v4, v5, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchFrpConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    move v10, v1

    move v1, p1

    move p1, v10

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, p1, v3}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v7}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    goto :goto_2

    :cond_6
    iput v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mCredentialMode:I

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mUserId:I

    invoke-direct {p0, p1, v3}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isBiometricAllowed(II)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, v7}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showBiometricPrompt(Landroid/os/Bundle;)V

    :goto_1
    move p1, v2

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->showConfirmCredentials()V

    :goto_2
    move p1, v1

    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    goto :goto_4

    :cond_9
    const-string p1, "No pattern, password or PIN set."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_4
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mWaitingForBiometricCallback:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->mGoingToBackground:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
