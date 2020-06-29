.class public Lcom/android/systemui/qs/tileimpl/QSTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.source "QSTileView.java"


# instance fields
.field protected mColor:I

.field private mExpandIndicator:Landroid/view/View;

.field private mExpandSpace:Landroid/view/View;

.field protected mLabel:Landroid/widget/TextView;

.field private mLabelContainer:Landroid/view/ViewGroup;

.field private mPadLock:Landroid/widget/ImageView;

.field protected mSecondLine:Landroid/widget/TextView;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColor:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x31

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1010038

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateThemeColor(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mColor:I

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_tile_label:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->restricted_padlock:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->underline:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->expand_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->expand_space:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->app_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->hideQsLabel()V

    return-void
.end method

.method public getDetailY()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 9
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 82
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v0, v1, :cond_2d

    .line 84
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getOPColorForState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_2d
    const/4 v0, 0x0

    .line 89
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_56

    .line 90
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v4, v3

    :goto_53
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :cond_56
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mShowQsDetail:Z

    .line 94
    .local v1, "x":Z
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 95
    .local v4, "z":Z
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    and-int v6, v1, v4

    if-eqz v6, :cond_62

    move v6, v3

    goto :goto_63

    :cond_62
    move v6, v2

    :goto_63
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    and-int v6, v1, v4

    if-eqz v6, :cond_6d

    move v2, v3

    :cond_6d
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    and-int v6, v1, v4

    if-eqz v6, :cond_7a

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    goto :goto_7b

    :cond_7a
    const/4 v6, 0x0

    :goto_7b
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_88

    move v3, v6

    :cond_88
    and-int/2addr v3, v1

    if-eqz v3, :cond_a2

    .line 100
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 101
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 102
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    .line 103
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    and-int v5, v1, v4

    if-eqz v5, :cond_9f

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 106
    :cond_9f
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_a2
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    .line 110
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-nez v5, :cond_b2

    .line 111
    const/16 v0, 0x8

    .line 113
    :cond_b2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->updateThemeColor(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 115
    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->op_qs_tile_text_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$dimen;->op_qs_tile_text_size:I

    invoke-static {p0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    invoke-static {p0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public hideQsLabel()V
	.locals 3

	sget-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsLabels:Z

	iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

	if-nez v2, :cond_hide

	const v2, 0x0

	goto :goto_skip

    :cond_hide
    const v2, 0x8

    :goto_skip
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

	return-void
.end method
