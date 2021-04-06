.class public Landroidx/appcompat/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$AlertParams$e;
    }
.end annotation


# instance fields
.field public A:Landroid/view/View;

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Z

.field public G:[Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public L:Landroid/database/Cursor;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public P:Landroidx/appcompat/app/AlertController$AlertParams$e;

.field public Q:Landroid/graphics/drawable/Drawable;

.field public R:Z

.field public S:Landroid/widget/FrameLayout;

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/content/DialogInterface$OnClickListener;

.field public r:Z

.field public s:Landroid/content/DialogInterface$OnCancelListener;

.field public t:Landroid/content/DialogInterface$OnDismissListener;

.field public u:Landroid/content/DialogInterface$OnKeyListener;

.field public v:[Ljava/lang/CharSequence;

.field public w:[Ljava/lang/CharSequence;

.field public x:Landroid/widget/ListAdapter;

.field public y:Landroid/content/DialogInterface$OnClickListener;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->c:I

    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->e:I

    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->F:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->J:I

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->r:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private b(Landroidx/appcompat/app/AlertController;)V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    iget v1, p1, Landroidx/appcompat/app/AlertController;->H:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->H:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->L:Landroid/database/Cursor;

    if-nez v1, :cond_1

    iget v1, p1, Landroidx/appcompat/app/AlertController;->I:I

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->w:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    sget v1, La/a/g;->select_dialog_multichoice_with_subtitle_material:I

    :cond_0
    move v4, v1

    new-instance v9, Landroidx/appcompat/app/AlertController$AlertParams$1;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    const v5, 0x1020014

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->v:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/app/AlertController$AlertParams$1;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto/16 :goto_1

    :cond_1
    new-instance v9, Landroidx/appcompat/app/AlertController$AlertParams$a;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->L:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/app/AlertController$AlertParams$a;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->I:Z

    if-eqz v1, :cond_3

    iget v1, p1, Landroidx/appcompat/app/AlertController;->J:I

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->w:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    array-length v2, v2

    if-lez v2, :cond_4

    sget v1, La/a/g;->select_dialog_singlechoice_with_subtitle_material:I

    goto :goto_0

    :cond_3
    iget v1, p1, Landroidx/appcompat/app/AlertController;->K:I

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->w:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    array-length v2, v2

    if-lez v2, :cond_4

    sget v1, La/a/g;->select_dialog_item_with_subtitle_material:I

    :cond_4
    :goto_0
    move v5, v1

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->L:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->L:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->M:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v6, v4

    new-array v7, v8, [I

    const v2, 0x1020014

    aput v2, v7, v4

    move-object v2, v9

    move v4, v5

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_1

    :cond_5
    iget-object v9, p0, Landroidx/appcompat/app/AlertController$AlertParams;->x:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    new-instance v9, Landroidx/appcompat/app/AlertController$AlertParams$b;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    const v6, 0x1020014

    iget-object v7, p0, Landroidx/appcompat/app/AlertController$AlertParams;->v:[Ljava/lang/CharSequence;

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/app/AlertController$AlertParams$b;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->P:Landroidx/appcompat/app/AlertController$AlertParams$e;

    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Landroidx/appcompat/app/AlertController$AlertParams$e;->a(Landroid/widget/ListView;)V

    :cond_7
    iput-object v9, p1, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/ListAdapter;

    iget v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->J:I

    iput v1, p1, Landroidx/appcompat/app/AlertController;->F:I

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->y:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_8

    new-instance v1, Landroidx/appcompat/app/AlertController$AlertParams$c;

    invoke-direct {v1, p0, p1, v0}, Landroidx/appcompat/app/AlertController$AlertParams$c;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->K:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_9

    new-instance v1, Landroidx/appcompat/app/AlertController$AlertParams$d;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/app/AlertController$AlertParams$d;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->O:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_a
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->I:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_4

    :cond_b
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->H:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_c
    :goto_4
    iput-object v0, p1, Landroidx/appcompat/app/AlertController;->f:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/AlertController;)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->r(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->p(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->S:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertController;->b(Landroidx/appcompat/app/AlertController;Landroid/widget/FrameLayout;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->v(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->t(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->c:I

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->s(I)V

    :cond_5
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->e:I

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->f(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->s(I)V

    :cond_6
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->R:Z

    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertController;->c(Landroidx/appcompat/app/AlertController;Z)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->u(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    :cond_8
    const/4 v2, -0x1

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->i:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->j:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->o(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->l:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    :cond_a
    const/4 v2, -0x2

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->l:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->m:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->o(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->o:Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    :cond_c
    const/4 v2, -0x3

    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->o:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->q:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->p:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->o(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->v:[Ljava/lang/CharSequence;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->L:Landroid/database/Cursor;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->x:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    :cond_e
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController$AlertParams;->b(Landroidx/appcompat/app/AlertController;)V

    :cond_f
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->A:Landroid/view/View;

    if-eqz v2, :cond_11

    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->F:Z

    if-eqz v0, :cond_10

    iget v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->B:I

    iget v4, p0, Landroidx/appcompat/app/AlertController$AlertParams;->C:I

    iget v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->D:I

    iget v6, p0, Landroidx/appcompat/app/AlertController$AlertParams;->E:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->y(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_10
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertController;->x(Landroid/view/View;)V

    goto :goto_1

    :cond_11
    iget v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->z:I

    if-eqz v0, :cond_12

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->w(I)V

    :cond_12
    :goto_1
    return-void
.end method
