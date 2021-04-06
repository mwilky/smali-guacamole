.class public final Landroidx/core/view/accessibility/a;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field private final a:I

.field private final b:Landroidx/core/view/accessibility/d;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/core/view/accessibility/d;I)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Landroidx/core/view/accessibility/a;->a:I

    iput-object p2, p0, Landroidx/core/view/accessibility/a;->b:Landroidx/core/view/accessibility/d;

    iput p3, p0, Landroidx/core/view/accessibility/a;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Landroidx/core/view/accessibility/a;->a:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/core/view/accessibility/a;->b:Landroidx/core/view/accessibility/d;

    iget v1, p0, Landroidx/core/view/accessibility/a;->c:I

    invoke-virtual {v0, v1, p1}, Landroidx/core/view/accessibility/d;->L(ILandroid/os/Bundle;)Z

    return-void
.end method
