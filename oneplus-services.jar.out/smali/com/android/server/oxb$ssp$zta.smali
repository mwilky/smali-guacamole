.class Lcom/android/server/oxb$ssp$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oxb$ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oxb$ssp;


# direct methods
.method constructor <init>(Lcom/android/server/oxb$ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb$ssp$zta;->zta:Lcom/android/server/oxb$ssp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oxb$ssp$zta;->zta:Lcom/android/server/oxb$ssp;

    iget-boolean v1, v0, Lcom/android/server/oxb$ssp;->zgw:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/oxb$ssp;->tsu()V

    iget-object v0, p0, Lcom/android/server/oxb$ssp$zta;->zta:Lcom/android/server/oxb$ssp;

    iget-object v1, v0, Lcom/android/server/oxb$ssp;->zta:Landroid/os/Handler;

    iget-wide v2, v0, Lcom/android/server/oxb$ssp;->bvj:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
