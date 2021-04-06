.class Lcom/oneplus/settings/notification/OPEarphoneMode$3;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v2, v1, Landroid/text/SpannableString;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v0, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    check-cast v1, Landroid/text/SpannableString;

    const-class p2, Landroid/text/style/ClickableSpan;

    invoke-virtual {v1, p1, p1, p2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    array-length p1, p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$400(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$3;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$500(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return v3
.end method
