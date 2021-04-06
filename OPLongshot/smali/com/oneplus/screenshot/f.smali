.class public final synthetic Lcom/oneplus/screenshot/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oneplus/screenshot/GlobalScreenshot;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/screenshot/f;->a:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/oneplus/screenshot/f;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/f;->a:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget v1, p0, Lcom/oneplus/screenshot/f;->b:I

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->e(I)V

    return-void
.end method
