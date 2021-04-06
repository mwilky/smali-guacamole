.class Landroidx/appcompat/app/AlertController$AlertParams$b;
.super Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->b(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_f

    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz v0, :cond_9

    check-cast p3, Landroid/widget/CheckedTextView;

    sget v0, La/a/f;->singlechoice_subtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->w:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v5, p1, :cond_0

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getLineCount()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_2

    if-gt v4, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v6, 0x32

    if-le v4, v6, :cond_2

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, La/a/d;->oneplus_dialog_subtitle_minHeight_multiline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le v5, v2, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, La/a/d;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le v5, v2, :cond_3

    :goto_0
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, La/a/d;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    add-int/2addr v1, v4

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setHeight(I)V

    invoke-virtual {p3, v7}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, La/a/d;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    if-le v5, v2, :cond_5

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, La/a/d;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    add-int/2addr v4, v5

    invoke-virtual {p3, v4}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, La/a/d;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget v0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->J:I

    if-ne p1, v0, :cond_8

    invoke-virtual {p3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p3, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_7

    :cond_9
    check-cast p3, Landroid/widget/TextView;

    sget v0, La/a/f;->singlechoice_subtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->w:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    array-length v5, v4

    if-le v5, p1, :cond_a

    aget-object p1, v4, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    if-le p1, v2, :cond_b

    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, La/a/d;->oneplus_dialog_subtitle_minHeight_multiline:I

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, La/a/d;->oneplus_dialog_subtitle_minHeight_singleline:I

    :goto_5
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHeight(I)V

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, La/a/d;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_d
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$b;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, La/a/d;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto :goto_6

    :cond_e
    :goto_7
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_f
    return-object p2
.end method
