.class public Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPLabFeatureDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;


# static fields
.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mActiviteFeatureToggle:Landroid/view/View;

.field private mDCDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDescriptionSummary:Landroid/widget/TextView;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDislikeImageButton:Landroid/widget/ImageButton;

.field private mFeatureToggleNames:[Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mLikeImageButton:Landroid/widget/ImageButton;

.field private mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

.field private mOneplusLabFeatureKey:Ljava/lang/String;

.field private mOneplusLabFeatureTitle:Ljava/lang/String;

.field private mOneplusLabFeatureToggleCount:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$1;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method private confirmAlertDialog()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->oneplus_is_turn_on_feature:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_is_turn_on_feature_summary:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_turn_on_feature_ok:I

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_turn_on_feature_cancel:I

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$2;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private confirmDCDialog()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDCDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->op_lab_dc_warn_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->op_lab_dc_still_on:I

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_turn_on_feature_cancel:I

    iget-object v2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity$3;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDCDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDCDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private highlightUserChoose(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_accent_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_like_fill:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    sget p1, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_dislike:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_accent_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_like:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    sget p1, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_dislike_fill:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_like:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_dislike:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_0
    return-void
.end method

.method private initIntent()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_toggle_count"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_toggle_names"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mFeatureToggleNames:[Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_icon_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget v0, Lcom/android/settings/R$id;->op_lab_feature_description_summary:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_summary:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$id;->op_lab_feature_toggle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->op_lab_feature_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v1, "show_importance_slider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_multi_toggle_group:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->isMultiToggle()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    iget v3, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mFeatureToggleNames:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->addChild(I[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setOnRadioGroupClickListener(Lcom/oneplus/settings/laboratory/OPRadioButtinGroup$OnRadioGroupClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;->setSelect(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mMultiToggleGroup:Lcom/oneplus/settings/laboratory/OPRadioButtinGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_like:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_dislike:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mActiviteFeatureToggle:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_Summary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDescriptionSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    return-void
.end method

.method private saveActitiveHistory(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_feedback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->showToastTip()V

    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->setLikeOrDislike()V

    return-void
.end method

.method private setLikeOrDislike()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->highlightUserChoose(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->oneplus_laboratory_grey_color:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mLikeImageButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_like:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDislikeImageButton:Landroid/widget/ImageButton;

    sget v0, Lcom/android/settings/R$drawable;->op_ic_oneplus_lab_feature_dislike:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showToastTip()V
    .locals 2

    sget-object v0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->oneplus_lab_feedback_toast:I

    const/16 v1, 0xbb8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public isMultiToggle()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureToggleCount:I

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->op_lab_feature_toggle:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v0, "oneplus_dc_dimming_value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "0"

    const-string v3, "status"

    const-string v4, "dc_dimming"

    const/16 v5, 0x3eb

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v6}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4, v3, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->confirmAlertDialog()V

    :goto_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, p1, v5}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    goto/16 :goto_5

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isH2()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v6}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4, v3, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->confirmDCDialog()V

    :goto_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, p1, v5}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, p1, v5}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibratePattern:[J

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v6

    :goto_3
    iget-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    const-string v0, "show_importance_slider"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_5

    :cond_8
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_like:I

    if-ne p1, v0, :cond_9

    invoke-direct {p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    goto :goto_5

    :cond_9
    sget v0, Lcom/android/settings/R$id;->op_lab_feature_communiry_dislike:I

    if-ne p1, v0, :cond_a

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->saveActitiveHistory(I)V

    :cond_a
    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/settings/R$layout;->op_lab_feature_details_activity:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->initIntent()V

    invoke-direct {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onRadioGroupClick(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureDetailActivity;->mOneplusLabFeatureKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method
