.class public final synthetic Lcom/oneplus/screenshot/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oneplus/screenshot/GlobalScreenshot$36;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot$36;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/screenshot/b;->a:Lcom/oneplus/screenshot/GlobalScreenshot$36;

    iput p2, p0, Lcom/oneplus/screenshot/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/b;->a:Lcom/oneplus/screenshot/GlobalScreenshot$36;

    iget v1, p0, Lcom/oneplus/screenshot/b;->b:I

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/GlobalScreenshot$36;->c(I)V

    return-void
.end method
