.class Lcom/android/server/oxb$zta;
.super Lcom/android/server/oxb$igw;
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
.field final synthetic sis:Lcom/android/server/oxb;


# direct methods
.method constructor <init>(Lcom/android/server/oxb;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb$zta;->sis:Lcom/android/server/oxb;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oxb$igw;-><init>(Lcom/android/server/oxb;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method zta(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/oxb$zta;->sis:Lcom/android/server/oxb;

    invoke-static {v0}, Lcom/android/server/oxb;->zta(Lcom/android/server/oxb;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/oxb$zta;->sis:Lcom/android/server/oxb;

    invoke-static {p0, p1}, Lcom/android/server/oxb;->you(Lcom/android/server/oxb;Z)Z

    invoke-static {}, Lcom/android/server/oxb;->sis()Lcom/android/server/oxb$bio;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/oxb;->sis()Lcom/android/server/oxb$bio;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/oxb$bio;->tsu()V

    :cond_0
    return-void
.end method
