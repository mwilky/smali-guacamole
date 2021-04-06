.class Lcom/oneplus/android/server/ssp/ssp$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/ssp/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/ssp/ssp;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/ssp/ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/ssp$zta;->zta:Lcom/oneplus/android/server/ssp/ssp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/ssp/ssp$zta;->zta:Lcom/oneplus/android/server/ssp/ssp;

    invoke-virtual {p0}, Lcom/oneplus/android/server/ssp/ssp;->mdmGetLocSwitchData()Z

    :goto_0
    return-void
.end method
