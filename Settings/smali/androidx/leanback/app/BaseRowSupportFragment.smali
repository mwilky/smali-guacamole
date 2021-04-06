.class abstract Landroidx/leanback/app/BaseRowSupportFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseRowSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field final mBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

.field mLateSelectionObserver:Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

.field private mPendingTransitionPrepare:Z

.field private mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

.field private final mRowSelectedListener:Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

.field mSelectedPosition:I

.field mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-direct {v0}, Landroidx/leanback/widget/ItemBridgeAdapter;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    new-instance v0, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;-><init>(Landroidx/leanback/app/BaseRowSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    new-instance v0, Landroidx/leanback/app/BaseRowSupportFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BaseRowSupportFragment$1;-><init>(Landroidx/leanback/app/BaseRowSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mRowSelectedListener:Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    return-void
.end method


# virtual methods
.method abstract findGridViewFromRoot(Landroid/view/View;)Landroidx/leanback/widget/VerticalGridView;
.end method

.method public final getAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    return-object p0
.end method

.method public final getBridgeAdapter()Landroidx/leanback/widget/ItemBridgeAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    return-object p0
.end method

.method abstract getLayoutResourceId()I
.end method

.method public getSelectedPosition()I
    .locals 0

    iget p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    return p0
.end method

.method public final getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;
    .locals 0

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->getLayoutResourceId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/app/BaseRowSupportFragment;->findGridViewFromRoot(Landroid/view/View;)Landroidx/leanback/widget/VerticalGridView;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    iget-boolean p2, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mPendingTransitionPrepare:Z

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mPendingTransitionPrepare:Z

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->onTransitionPrepare()Z

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    return-void
.end method

.method abstract onRowSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    const-string v0, "currentSelectedPosition"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setAnimateChildLayout(Z)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setPruneChild(Z)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setFocusSearchDisabled(Z)V

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/BaseGridView;->setScrollEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 3

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setAnimateChildLayout(Z)V

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/BaseGridView;->setScrollEnabled(Z)V

    return v1

    :cond_0
    iput-boolean v1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mPendingTransitionPrepare:Z

    return v2
.end method

.method public onTransitionStart()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setPruneChild(Z)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/BaseGridView;->setFocusSearchDisabled(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    const-string v0, "currentSelectedPosition"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->setAdapterAndSelection()V

    iget-object p1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mRowSelectedListener:Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {p1, p0}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public final setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    :cond_0
    return-void
.end method

.method setAdapterAndSelection()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->startLateSelection()V

    goto :goto_1

    :cond_3
    iget v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    if-ltz v0, :cond_4

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setAlignment(I)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffset(I)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffsetPercent(F)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffset(I)V

    iget-object p1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffsetPercent(F)V

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    :cond_0
    return-void
.end method

.method public final setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    :cond_0
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/app/BaseRowSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1

    iget v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    iget-boolean p0, p0, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-eqz p0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method updateAdapter()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setPresenter(Landroidx/leanback/widget/PresenterSelector;)V

    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment;->setAdapterAndSelection()V

    :cond_0
    return-void
.end method
