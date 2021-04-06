.class public Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "OPPagerAdapter.java"


# instance fields
.field private mCurrentItem:Landroidx/fragment/app/Fragment;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTransaction:Landroidx/fragment/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private getFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mCurrentItem:Landroidx/fragment/app/Fragment;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mCurrentItem:Landroidx/fragment/app/Fragment;

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mCurrentItem:Landroidx/fragment/app/Fragment;

    :cond_0
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
