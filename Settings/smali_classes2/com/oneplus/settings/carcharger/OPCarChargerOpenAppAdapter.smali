.class public Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPCarChargerOpenAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private hasRecommendedCount:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOpenAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object p3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/better/OPAppModel;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->op_car_charger_open_app_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;)V

    sget v1, Lcom/android/settings/R$id;->parent:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sget v1, Lcom/android/settings/R$id;->tv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$id;->name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$id;->bottom_line:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->group_divider_area:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->radio_button:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;

    :goto_0
    iget-object v1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    iget-object v4, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->oneplus_auto_open_app_recommended:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->hasRecommendedCount:I

    add-int/2addr v4, v3

    if-ne p1, v4, :cond_2

    iget-object v4, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->oneplus_auto_open_app_other_applications:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-ge p1, v3, :cond_3

    iget-object v4, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v4, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_5

    iget v4, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->hasRecommendedCount:I

    if-ne p1, v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_5

    :cond_6
    iget-object p0, v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_5
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mOpenAppList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setHasRecommendedCount(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->hasRecommendedCount:I

    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->mPackageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
