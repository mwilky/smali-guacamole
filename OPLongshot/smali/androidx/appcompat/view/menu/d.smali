.class final Landroidx/appcompat/view/menu/d;
.super Landroidx/appcompat/view/menu/c;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final v:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroidx/appcompat/view/menu/MenuBuilder;

.field private final d:Landroidx/appcompat/view/menu/MenuAdapter;

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:I

.field final i:Landroidx/appcompat/widget/MenuPopupWindow;

.field final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final k:Landroid/view/View$OnAttachStateChangeListener;

.field private l:Landroid/widget/PopupWindow$OnDismissListener;

.field private m:Landroid/view/View;

.field n:Landroid/view/View;

.field private o:Landroidx/appcompat/view/menu/MenuPresenter$a;

.field p:Landroid/view/ViewTreeObserver;

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, La/a/g;->op_abc_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/d;->v:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/view/menu/c;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/d$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroidx/appcompat/view/menu/d$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/d$b;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->k:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/d;->t:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/d;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/d;->e:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    new-instance v0, Landroidx/appcompat/view/menu/MenuAdapter;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/d;->e:Z

    sget v2, Landroidx/appcompat/view/menu/d;->v:I

    invoke-direct {v0, p2, p6, v1, v2}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    iput p4, p0, Landroidx/appcompat/view/menu/d;->g:I

    iput p5, p0, Landroidx/appcompat/view/menu/d;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    sget p6, La/a/d;->op_abc_config_prefDialogWidth:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/view/menu/d;->f:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/d;->m:Landroid/view/View;

    new-instance p3, Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p4, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    iget p5, p0, Landroidx/appcompat/view/menu/d;->g:I

    iget p6, p0, Landroidx/appcompat/view/menu/d;->h:I

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p5, p6}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method private p()Z
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/d;->q:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->m:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->n:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/y;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/y;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y;->setModal(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->n:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/y;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v3, p0, Landroidx/appcompat/view/menu/d;->t:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/y;->setDropDownGravity(I)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/d;->r:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    iget v5, p0, Landroidx/appcompat/view/menu/d;->f:I

    invoke-static {v0, v3, v4, v5}, Landroidx/appcompat/view/menu/c;->e(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/d;->s:I

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/d;->r:Z

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v4, p0, Landroidx/appcompat/view/menu/d;->s:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/y;->setContentWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/y;->setInputMethodMode(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/c;->c()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/y;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->show()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/d;->u:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, La/a/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, Landroidx/appcompat/view/menu/d;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/y;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->show()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->dismiss()V

    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->m:Landroid/view/View;

    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/d;->t:I

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/d;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->setHorizontalOffset(I)V

    return-void
.end method

.method public k(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->l:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->u:Z

    return-void
.end method

.method public m(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/y;->setVerticalOffset(I)V

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroidx/appcompat/view/menu/MenuPresenter$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$a;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/d;->q:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/d;->p:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->n:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->l:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/d;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 9

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/d;->n:Landroid/view/View;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/d;->e:Z

    iget v7, p0, Landroidx/appcompat/view/menu/d;->g:I

    iget v8, p0, Landroidx/appcompat/view/menu/d;->h:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->o:Landroidx/appcompat/view/menu/MenuPresenter$a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$a;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/c;->n(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    iget v2, p0, Landroidx/appcompat/view/menu/d;->t:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/view/menu/d;->l:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/y;->getHorizontalOffset()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/y;->getVerticalOffset()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->o:Landroidx/appcompat/view/menu/MenuPresenter$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$a;->a(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    :cond_0
    return v4

    :cond_1
    return v1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->o:Landroidx/appcompat/view/menu/MenuPresenter$a;

    return-void
.end method

.method public show()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenuView(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/d;->r:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/MenuAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
