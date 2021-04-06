.class public final synthetic Lcom/oneplus/screenshot/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oneplus/screenshot/GlobalScreenshot$36;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot$36;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/screenshot/a;->a:Lcom/oneplus/screenshot/GlobalScreenshot$36;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/a;->a:Lcom/oneplus/screenshot/GlobalScreenshot$36;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/GlobalScreenshot$36;->a()V

    return-void
.end method
