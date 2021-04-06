.class Lcom/android/server/oxb$tsu;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oxb;->registerObserver(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oxb;


# direct methods
.method constructor <init>(Lcom/android/server/oxb;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-static {p1}, Lcom/android/server/oxb;->dma(Lcom/android/server/oxb;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/oxb$tsu;->zta:Lcom/android/server/oxb;

    invoke-static {p0}, Lcom/android/server/oxb;->ywr(Lcom/android/server/oxb;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
