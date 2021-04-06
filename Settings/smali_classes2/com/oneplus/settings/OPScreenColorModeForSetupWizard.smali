.class public Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "OPScreenColorModeForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$layout;->op_screen_color_mode_for_setupwizard_layout:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    new-instance p1, Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {p1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;-><init>(Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
