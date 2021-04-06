.class public Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;
.super Landroidx/preference/PreferenceCategory;
.source "OPFingerPrintInputViewCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;
    }
.end annotation


# instance fields
.field private mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

.field public mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/android/settings/R$id;->op_finger_recognition_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionView;

    sget v0, Lcom/android/settings/R$id;->op_finger_recognition_continue_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueView;

    sget v0, Lcom/android/settings/R$id;->opfinger_input_tips_title_tv:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$id;->opfinger_input_tips_subtitle_tv:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$id;->opfinger_input_completed_comfirm_btn:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
