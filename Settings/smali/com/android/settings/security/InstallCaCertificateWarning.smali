.class public Lcom/android/settings/security/InstallCaCertificateWarning;
.super Lcom/oneplus/settings/BaseActivity;
.source "InstallCaCertificateWarning.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private installCaCertificate()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/settings/security/-$$Lambda$InstallCaCertificateWarning$zyPh1JGA8ya2G74aw_uK5DpjoQo;

    invoke-direct {v0, p0}, Lcom/android/settings/security/-$$Lambda$InstallCaCertificateWarning$zyPh1JGA8ya2G74aw_uK5DpjoQo;-><init>(Lcom/android/settings/security/InstallCaCertificateWarning;)V

    return-object v0
.end method

.method private synthetic lambda$installCaCertificate$0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.credentials.INSTALL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "certificate_install_usage"

    const-string v1, "ca"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$returnToInstallCertificateFromStorage$1(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/android/settings/R$string;->cert_not_installed:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private returnToInstallCertificateFromStorage()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/settings/security/-$$Lambda$InstallCaCertificateWarning$cMHKz1h0aYs7diZ7cAm8c_jG_z8;

    invoke-direct {v0, p0}, Lcom/android/settings/security/-$$Lambda$InstallCaCertificateWarning$cMHKz1h0aYs7diZ7cAm8c_jG_z8;-><init>(Lcom/android/settings/security/InstallCaCertificateWarning;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$installCaCertificate$0$InstallCaCertificateWarning(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/InstallCaCertificateWarning;->lambda$installCaCertificate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$returnToInstallCertificateFromStorage$1$InstallCaCertificateWarning(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/InstallCaCertificateWarning;->lambda$returnToInstallCertificateFromStorage$1(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/BaseActivity;->mNeedShowAppBar:Z

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$layout;->ca_certificate_warning_dialog:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    sget p1, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->certificate_warning_install_anyway:I

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p0}, Lcom/android/settings/security/InstallCaCertificateWarning;->installCaCertificate()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget v0, Lcom/android/settings/R$style;->OnePlusSecondaryButtonStyle:I

    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->certificate_warning_dont_install:I

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p0}, Lcom/android/settings/security/InstallCaCertificateWarning;->returnToInstallCertificateFromStorage()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget p0, Lcom/android/settings/R$style;->OnePlusPrimaryButtonStyle:I

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    return-void
.end method
