.class Lcom/oneplus/loading/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/loading/a;->h(Lcom/oneplus/loading/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/loading/a$d;

.field final synthetic b:Lcom/oneplus/loading/a;


# direct methods
.method constructor <init>(Lcom/oneplus/loading/a;Lcom/oneplus/loading/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/loading/a$b;->b:Lcom/oneplus/loading/a;

    iput-object p2, p0, Lcom/oneplus/loading/a$b;->a:Lcom/oneplus/loading/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/loading/a$b;->b:Lcom/oneplus/loading/a;

    iget-object v1, p0, Lcom/oneplus/loading/a$b;->a:Lcom/oneplus/loading/a$d;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oneplus/loading/a;->e(Lcom/oneplus/loading/a;Lcom/oneplus/loading/a$d;Z)V

    return-void
.end method
