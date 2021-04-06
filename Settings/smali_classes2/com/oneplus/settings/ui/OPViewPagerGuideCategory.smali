.class public Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;
.super Landroidx/preference/Preference;
.source "OPViewPagerGuideCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;
    }
.end annotation


# instance fields
.field private mAnimationDarkId:[Ljava/lang/String;

.field private mAnimationWhiteId:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrIndex:I

.field private mDescriptionId:[I

.field private mDotContainer:Lcom/google/android/material/indicator/PageIndicator;

.field private mDotContainerArea:Landroid/view/View;

.field private mGuideViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInited:Z

.field private mLayoutItemID:I

.field private mLayoutResId:I

.field private mTitleId:[I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$layout;->op_viewpager_guide_category:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutResId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mCurrIndex:I

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mHasInited:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    sget v0, Lcom/android/settings/R$layout;->op_viewpager_guide_item_vertical_layout:I

    iput v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutItemID:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p2, Lcom/android/settings/R$layout;->op_viewpager_guide_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutResId:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mCurrIndex:I

    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mHasInited:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    sget p2, Lcom/android/settings/R$layout;->op_viewpager_guide_item_vertical_layout:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutItemID:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/android/settings/R$layout;->op_viewpager_guide_category:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutResId:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mCurrIndex:I

    iput-boolean p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mHasInited:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    sget p2, Lcom/android/settings/R$layout;->op_viewpager_guide_item_vertical_layout:I

    iput p2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutItemID:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mCurrIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Lcom/google/android/material/indicator/PageIndicator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mDotContainer:Lcom/google/android/material/indicator/PageIndicator;

    return-object p0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mContentResolver:Landroid/content/ContentResolver;

    iget p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutResId:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public initViewPage()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mTitleId:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget v3, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutItemID:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/settings/R$id;->guide_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mTitleId:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    sget v4, Lcom/android/settings/R$id;->guide_summary:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mDescriptionId:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    sget v4, Lcom/android/settings/R$id;->guide_anim:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mAnimationDarkId:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mAnimationWhiteId:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->showDotView(Z)V

    :cond_2
    new-instance v0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;-><init>(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v3, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mCurrIndex:I

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mDotContainer:Lcom/google/android/material/indicator/PageIndicator;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/indicator/PageIndicator;->setNumPages(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mDotContainer:Lcom/google/android/material/indicator/PageIndicator;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/PageIndicator;->setLocation(F)V

    iput-boolean v2, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mHasInited:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->startAnim()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/android/settings/R$id;->op_viewpager_guide_dot_area:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mDotContainerArea:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->op_viewpager_guide_dot_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/indicator/PageIndicator;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mDotContainer:Lcom/google/android/material/indicator/PageIndicator;

    sget v0, Lcom/android/settings/R$id;->op_viewpager_guide_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->op_viewpager_guide_viewpager:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->initViewPage()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public playCurrentPageAnim(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->guide_anim:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    if-ne p1, v0, :cond_0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseAnim()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->stopAnim()V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mGuideViews:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setAnimationDarkResources([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mAnimationDarkId:[Ljava/lang/String;

    return-void
.end method

.method public setAnimationWhiteResources([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mAnimationWhiteId:[Ljava/lang/String;

    return-void
.end method

.method public setDescriptionIdResources([I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mDescriptionId:[I

    return-void
.end method

.method public setTitleResources([I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mTitleId:[I

    return-void
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$layout;->op_viewpager_guide_item_landscape_layout:I

    iput p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutItemID:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settings/R$layout;->op_viewpager_guide_item_vertical_layout:I

    iput p1, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mLayoutItemID:I

    :goto_0
    return-void
.end method

.method public showDotView(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mDotContainerArea:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public startAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mCurrIndex:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->playCurrentPageAnim(I)V

    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->playCurrentPageAnim(I)V

    :cond_0
    return-void
.end method
