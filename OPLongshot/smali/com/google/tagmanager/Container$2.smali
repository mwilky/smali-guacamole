.class Lcom/google/tagmanager/Container$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/tagmanager/LoadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/LoadCallback<",
        "Lcom/google/tagmanager/c1/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Container;

.field final synthetic val$clock:Lcom/google/tagmanager/h;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iput-object p2, p0, Lcom/google/tagmanager/Container$2;->val$clock:Lcom/google/tagmanager/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;
    .locals 1

    sget-object v0, Lcom/google/tagmanager/Container$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p1

    :cond_1
    sget-object p1, Lcom/google/tagmanager/Container$RefreshFailure;->IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p1

    :cond_2
    sget-object p1, Lcom/google/tagmanager/Container$RefreshFailure;->NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p1
.end method


# virtual methods
.method public onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container$2;->failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/tagmanager/Container;->i(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V

    iget-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {p1}, Lcom/google/tagmanager/Container;->u()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/Container;->v(J)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onSuccess(Lcom/google/tagmanager/c1/a;)V
    .locals 10

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/tagmanager/c1/a;->e:Lcom/google/analytics/containertag/proto/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    iget-object v3, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v3, v0}, Lcom/google/tagmanager/Container;->c(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/i;)Lcom/google/analytics/containertag/proto/i;

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/google/tagmanager/c1/a;->d:Lcom/google/analytics/containertag/proto/f;

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v0}, Lcom/google/tagmanager/Container;->b(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/i;

    move-result-object v0

    iput-object v2, v0, Lcom/google/analytics/containertag/proto/i;->d:Lcom/google/analytics/containertag/proto/f;

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v0}, Lcom/google/tagmanager/Container;->b(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/i;

    move-result-object v0

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v0}, Lcom/google/tagmanager/Container;->b(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/i;

    move-result-object v0

    iget-object v3, v2, Lcom/google/analytics/containertag/proto/f;->n:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/analytics/containertag/proto/i;->e:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v0, v2}, Lcom/google/tagmanager/Container;->d(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/f;)V

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v0}, Lcom/google/tagmanager/Container;->b(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/i;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v0}, Lcom/google/tagmanager/Container;->b(Lcom/google/tagmanager/Container;)Lcom/google/analytics/containertag/proto/i;

    move-result-object v2

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/i;->c:[Lcom/google/analytics/containertag/proto/h;

    invoke-static {v0, v2}, Lcom/google/tagmanager/Container;->e(Lcom/google/tagmanager/Container;[Lcom/google/analytics/containertag/proto/h;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting refresh time to saved time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/google/tagmanager/c1/a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i0;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iget-wide v2, p1, Lcom/google/tagmanager/c1/a;->c:J

    invoke-static {v0, v2, v3}, Lcom/google/tagmanager/Container;->g(Lcom/google/tagmanager/Container;J)J

    iget-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    const-wide/16 v2, 0x0

    invoke-static {p1}, Lcom/google/tagmanager/Container;->f(Lcom/google/tagmanager/Container;)J

    move-result-wide v4

    const-wide/32 v6, 0x2932e00

    add-long/2addr v4, v6

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->val$clock:Lcom/google/tagmanager/h;

    invoke-interface {v0}, Lcom/google/tagmanager/h;->a()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/Container;->v(J)V

    throw v1

    :cond_2
    iget-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v0, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-static {p1, v0}, Lcom/google/tagmanager/Container;->h(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/tagmanager/c1/a;

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Container$2;->onSuccess(Lcom/google/tagmanager/c1/a;)V

    return-void
.end method

.method public startLoad()V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-static {v0, v1}, Lcom/google/tagmanager/Container;->a(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method
