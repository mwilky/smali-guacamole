.class final Lcom/oneplus/android/server/adfr/tsu$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/adfr/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/adfr/tsu;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/adfr/tsu;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/tsu$sis;->zta:Lcom/oneplus/android/server/adfr/tsu;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu$sis;->zta:Lcom/oneplus/android/server/adfr/tsu;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->rtg(Lcom/oneplus/android/server/adfr/tsu;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu$sis;->zta:Lcom/oneplus/android/server/adfr/tsu;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->tsu(Lcom/oneplus/android/server/adfr/tsu;I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu$sis;->zta:Lcom/oneplus/android/server/adfr/tsu;

    invoke-static {p0}, Lcom/oneplus/android/server/adfr/tsu;->sis(Lcom/oneplus/android/server/adfr/tsu;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu$sis;->zta:Lcom/oneplus/android/server/adfr/tsu;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/adfr/tsu;->you(Lcom/oneplus/android/server/adfr/tsu;F)V

    :goto_0
    return-void
.end method
