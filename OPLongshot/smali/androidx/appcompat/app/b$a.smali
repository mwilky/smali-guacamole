.class Landroidx/appcompat/app/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/app/SoftKeyBoardListener$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/b;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/b;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    invoke-static {v0}, Landroidx/appcompat/app/b;->h(Landroidx/appcompat/app/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/app/b;->i(Landroidx/appcompat/app/b;Z)Z

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, La/a/i;->Oneplus_popup_bottom_edittext_animation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, La/a/e;->op_dialog_material_background_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    invoke-static {p1}, Landroidx/appcompat/app/b;->h(Landroidx/appcompat/app/b;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/appcompat/app/b;->i(Landroidx/appcompat/app/b;Z)Z

    iget-object p1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, La/a/i;->Oneplus_popup_bottom_edit_animation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object p1, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, La/a/e;->op_dialog_material_background_bottom_edited:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method
