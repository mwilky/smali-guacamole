.class public Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;
.super Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;
.source "CaCertsCurrentUserPreferenceController.java"


# static fields
.field static final CA_CERTS_CURRENT_USER:Ljava/lang/String; = "ca_certs_current_user"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getNumberOfCaCerts()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getNumberOfOwnerInstalledCaCertsForCurrentUser()I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ca_certs_current_user"

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isInCompMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$string;->enterprise_privacy_ca_certs_personal:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->enterprise_privacy_ca_certs_device:I

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method
