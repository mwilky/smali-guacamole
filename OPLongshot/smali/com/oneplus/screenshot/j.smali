.class public final synthetic Lcom/oneplus/screenshot/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/oneplus/screenshot/GlobalScreenshot;

.field public final synthetic b:Landroid/widget/RelativeLayout;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/screenshot/j;->a:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/j;->b:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/oneplus/screenshot/j;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/j;->a:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/oneplus/screenshot/j;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/j;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->g(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
