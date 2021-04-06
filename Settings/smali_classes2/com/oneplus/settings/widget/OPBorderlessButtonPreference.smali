.class public Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPBorderlessButtonPreference.java"


# instance fields
.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;-><init>(Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;-><init>(Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;-><init>(Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;)V

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;->initView()V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/android/settings/R$layout;->op_boderless_button_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
