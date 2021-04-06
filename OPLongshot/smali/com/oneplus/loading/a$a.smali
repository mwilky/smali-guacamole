.class Lcom/oneplus/loading/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/loading/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/loading/a;


# direct methods
.method constructor <init>(Lcom/oneplus/loading/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/loading/a$a;->a:Lcom/oneplus/loading/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/loading/a$a;->a:Lcom/oneplus/loading/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/loading/a;->a(Lcom/oneplus/loading/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/oneplus/loading/a$a;->a:Lcom/oneplus/loading/a;

    invoke-virtual {v0}, Lcom/oneplus/loading/a;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/loading/a;->c(Lcom/oneplus/loading/a;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/loading/a$a;->a:Lcom/oneplus/loading/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/loading/a;->d(Lcom/oneplus/loading/a;J)J

    return-void
.end method
