.class Lcom/google/analytics/tracking/android/n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/n;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/n;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/n$b;->a:Lcom/google/analytics/tracking/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/google/analytics/tracking/android/n;->d()Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/analytics/tracking/android/GAUsage;->d(Z)V

    iget-object p1, p0, Lcom/google/analytics/tracking/android/n$b;->a:Lcom/google/analytics/tracking/android/n;

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/n;->h()V

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->c()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/analytics/tracking/android/GAUsage;->d(Z)V

    iget-object p1, p0, Lcom/google/analytics/tracking/android/n$b;->a:Lcom/google/analytics/tracking/android/n;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/n;->e(Lcom/google/analytics/tracking/android/n;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/analytics/tracking/android/n$b;->a:Lcom/google/analytics/tracking/android/n;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/n;->f(Lcom/google/analytics/tracking/android/n;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/analytics/tracking/android/n$b;->a:Lcom/google/analytics/tracking/android/n;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/n;->g(Lcom/google/analytics/tracking/android/n;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/n$b;->a:Lcom/google/analytics/tracking/android/n;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/n;->g(Lcom/google/analytics/tracking/android/n;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/google/analytics/tracking/android/n;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/google/analytics/tracking/android/n$b;->a:Lcom/google/analytics/tracking/android/n;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/n;->e(Lcom/google/analytics/tracking/android/n;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return v1
.end method
