.class final Lcom/google/analytics/tracking/android/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/b;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/b$a;->a:Lcom/google/analytics/tracking/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "service connected, binder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bound to service"

    invoke-static {p1}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/analytics/tracking/android/b$a;->a:Lcom/google/analytics/tracking/android/b;

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/a$a;->d(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/analytics/tracking/android/b;->e(Lcom/google/analytics/tracking/android/b;Lcom/google/android/gms/analytics/internal/a;)Lcom/google/android/gms/analytics/internal/a;

    iget-object p1, p0, Lcom/google/analytics/tracking/android/b$a;->a:Lcom/google/analytics/tracking/android/b;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/b;->f(Lcom/google/analytics/tracking/android/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/google/analytics/tracking/android/b$a;->a:Lcom/google/analytics/tracking/android/b;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/b;->g(Lcom/google/analytics/tracking/android/b;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/google/analytics/tracking/android/b$a;->a:Lcom/google/analytics/tracking/android/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/analytics/tracking/android/b;->h(Lcom/google/analytics/tracking/android/b;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object p1, p0, Lcom/google/analytics/tracking/android/b$a;->a:Lcom/google/analytics/tracking/android/b;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/b;->i(Lcom/google/analytics/tracking/android/b;)Lcom/google/analytics/tracking/android/b$c;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Lcom/google/analytics/tracking/android/b$c;->g(ILandroid/content/Intent;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/analytics/tracking/android/b$a;->a:Lcom/google/analytics/tracking/android/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/analytics/tracking/android/b;->h(Lcom/google/analytics/tracking/android/b;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object p1, p0, Lcom/google/analytics/tracking/android/b$a;->a:Lcom/google/analytics/tracking/android/b;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/b;->j(Lcom/google/analytics/tracking/android/b;)Lcom/google/analytics/tracking/android/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/analytics/tracking/android/b$b;->c()V

    return-void
.end method
