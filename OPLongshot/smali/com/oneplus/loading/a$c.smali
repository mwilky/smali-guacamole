.class Lcom/oneplus/loading/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/loading/a;->g(Lcom/oneplus/loading/a$d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oneplus/loading/a$d;

.field final synthetic c:Lcom/oneplus/loading/a;


# direct methods
.method constructor <init>(Lcom/oneplus/loading/a;ZLcom/oneplus/loading/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/loading/a$c;->c:Lcom/oneplus/loading/a;

    iput-boolean p2, p0, Lcom/oneplus/loading/a$c;->a:Z

    iput-object p3, p0, Lcom/oneplus/loading/a$c;->b:Lcom/oneplus/loading/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/loading/a$c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/loading/a$c;->c:Lcom/oneplus/loading/a;

    invoke-static {v0}, Lcom/oneplus/loading/a;->b(Lcom/oneplus/loading/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/loading/a;->i(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/loading/a$c;->b:Lcom/oneplus/loading/a$d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/loading/a$d;->a(Z)V

    :cond_1
    return-void
.end method
