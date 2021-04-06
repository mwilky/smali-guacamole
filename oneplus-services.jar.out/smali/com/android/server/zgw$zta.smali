.class Lcom/android/server/zgw$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/zgw;


# direct methods
.method constructor <init>(Lcom/android/server/zgw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-static {p0}, Lcom/android/server/zgw;->ugm(Lcom/android/server/zgw;)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v3, [I

    aput v1, p1, v2

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-static {p0}, Lcom/android/server/zgw;->gwm(Lcom/android/server/zgw;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "CommonFrontMonitor"

    if-nez v0, :cond_3

    const-string p0, "[scene] arguments is null while handling CMD_FETCH_CONFIG"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-array v4, v3, [I

    aput v1, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CONFIG_NAME_VIDEO_ENHANCEMENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-static {v4, v1}, Lcom/android/server/zgw;->you(Lcom/android/server/zgw;Ljava/lang/String;)V

    :cond_4
    new-array v1, v3, [I

    const/16 v4, 0x67

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "CONFIG_NAME_SMART5G"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-static {v4, v1}, Lcom/android/server/zgw;->you(Lcom/android/server/zgw;Ljava/lang/String;)V

    :cond_5
    new-array v1, v3, [I

    const/16 v4, 0xef

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "CONFIG_NAME_FASTOUTPUT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-static {v4, v1}, Lcom/android/server/zgw;->you(Lcom/android/server/zgw;Ljava/lang/String;)V

    :cond_6
    new-array v1, v3, [I

    const/16 v3, 0x112

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CONFIG_NAME_GAME_DOLBY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-static {v2, v1}, Lcom/android/server/zgw;->you(Lcom/android/server/zgw;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/server/zgw;->dma()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "CONFIG_NAME_LMKD_WATERMARK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-static {v2, v1}, Lcom/android/server/zgw;->you(Lcom/android/server/zgw;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/android/server/zgw;->ibl()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ready to resolve config for adaptive color gamut!"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "CONFIG_NAME_ADAPTIVE_COLOR_GAMUT"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/zgw$zta;->zta:Lcom/android/server/zgw;

    invoke-static {p0, p1}, Lcom/android/server/zgw;->you(Lcom/android/server/zgw;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method
