.class public Landroidx/leanback/app/HeadersSupportFragment;
.super Landroidx/leanback/app/BaseRowSupportFragment;
.source "HeadersSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/HeadersSupportFragment$NoOverlappingFrameLayout;,
        Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;,
        Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;
    }
.end annotation


# static fields
.field private static final sHeaderPresenter:Landroidx/leanback/widget/PresenterSelector;

.field static sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mHeadersEnabled:Z

.field private mHeadersGone:Z

.field mOnHeaderClickedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

.field private mOnHeaderViewSelectedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

.field final mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroidx/leanback/widget/ClassPresenterSelector;-><init>()V

    const-class v1, Landroidx/leanback/widget/DividerRow;

    new-instance v2, Landroidx/leanback/widget/DividerPresenter;

    invoke-direct {v2}, Landroidx/leanback/widget/DividerPresenter;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    const-class v1, Landroidx/leanback/widget/SectionRow;

    new-instance v2, Landroidx/leanback/widget/RowHeaderPresenter;

    sget v3, Landroidx/leanback/R$layout;->lb_section_header:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/leanback/widget/RowHeaderPresenter;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    const-class v1, Landroidx/leanback/widget/Row;

    new-instance v2, Landroidx/leanback/widget/RowHeaderPresenter;

    sget v3, Landroidx/leanback/R$layout;->lb_header:I

    invoke-direct {v2, v3}, Landroidx/leanback/widget/RowHeaderPresenter;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroidx/leanback/widget/Presenter;)Landroidx/leanback/widget/ClassPresenterSelector;

    sput-object v0, Landroidx/leanback/app/HeadersSupportFragment;->sHeaderPresenter:Landroidx/leanback/widget/PresenterSelector;

    new-instance v0, Landroidx/leanback/app/HeadersSupportFragment$2;

    invoke-direct {v0}, Landroidx/leanback/app/HeadersSupportFragment$2;-><init>()V

    sput-object v0, Landroidx/leanback/app/HeadersSupportFragment;->sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/leanback/app/BaseRowSupportFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersGone:Z

    new-instance v0, Landroidx/leanback/app/HeadersSupportFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/HeadersSupportFragment$1;-><init>(Landroidx/leanback/app/HeadersSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    new-instance v0, Landroidx/leanback/app/HeadersSupportFragment$3;

    invoke-direct {v0, p0}, Landroidx/leanback/app/HeadersSupportFragment$3;-><init>(Landroidx/leanback/app/HeadersSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    sget-object v0, Landroidx/leanback/app/HeadersSupportFragment;->sHeaderPresenter:Landroidx/leanback/widget/PresenterSelector;

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BaseRowSupportFragment;->setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getBridgeAdapter()Landroidx/leanback/widget/ItemBridgeAdapter;

    move-result-object p0

    invoke-static {p0}, Landroidx/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroidx/leanback/widget/ItemBridgeAdapter;)V

    return-void
.end method

.method private updateFadingEdgeToBrandColor(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    sget v0, Landroidx/leanback/R$id;->fade_out_edge:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_0
    return-void
.end method

.method private updateListViewVisibility()V
    .locals 4

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersGone:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersGone:Z

    if-nez v1, :cond_2

    iget-boolean p0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/BaseGridView;->setChildrenVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/BaseGridView;->setChildrenVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method findGridViewFromRoot(Landroid/view/View;)Landroidx/leanback/widget/VerticalGridView;
    .locals 0

    sget p0, Landroidx/leanback/R$id;->browse_headers:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/VerticalGridView;

    return-object p0
.end method

.method getLayoutResourceId()I
    .locals 0

    sget p0, Landroidx/leanback/R$layout;->lb_headers_fragment:I

    return p0
.end method

.method public isScrolling()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onRowSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mOnHeaderViewSelectedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    check-cast p2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {p2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {p2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/Row;

    invoke-interface {p1, p0, p2}, Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;->onHeaderSelected(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mOnHeaderViewSelectedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;->onHeaderSelected(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTransitionEnd()V
    .locals 2

    iget-boolean v0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    invoke-super {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->onTransitionEnd()V

    return-void
.end method

.method public onTransitionStart()V
    .locals 1

    invoke-super {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->onTransitionStart()V

    iget-boolean v0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/leanback/app/BaseRowSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Landroidx/leanback/app/HeadersSupportFragment;->mBackgroundColorSet:Z

    if-eqz p2, :cond_1

    iget p2, p0, Landroidx/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    invoke-direct {p0, p1}, Landroidx/leanback/app/HeadersSupportFragment;->updateFadingEdgeToBrandColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/leanback/app/HeadersSupportFragment;->updateFadingEdgeToBrandColor(I)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/app/HeadersSupportFragment;->updateListViewVisibility()V

    return-void
.end method

.method setBackgroundColor(I)V
    .locals 1

    iput p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mBackgroundColorSet:Z

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    iget v0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mBackgroundColor:I

    invoke-direct {p0, p1}, Landroidx/leanback/app/HeadersSupportFragment;->updateFadingEdgeToBrandColor(I)V

    :cond_0
    return-void
.end method

.method setHeadersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersEnabled:Z

    invoke-direct {p0}, Landroidx/leanback/app/HeadersSupportFragment;->updateListViewVisibility()V

    return-void
.end method

.method setHeadersGone(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mHeadersGone:Z

    invoke-direct {p0}, Landroidx/leanback/app/HeadersSupportFragment;->updateListViewVisibility()V

    return-void
.end method

.method public setOnHeaderClickedListener(Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mOnHeaderClickedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    return-void
.end method

.method public setOnHeaderViewSelectedListener(Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mOnHeaderViewSelectedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    return-void
.end method

.method updateAdapter()V
    .locals 2

    invoke-super {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getBridgeAdapter()Landroidx/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/HeadersSupportFragment;->mAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    iget-object p0, p0, Landroidx/leanback/app/HeadersSupportFragment;->mWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    return-void
.end method
