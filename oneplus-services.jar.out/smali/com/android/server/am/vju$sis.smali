.class Lcom/android/server/am/vju$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/vju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/vju;


# direct methods
.method public constructor <init>(Lcom/android/server/am/vju;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/vju$sis;->zta:Lcom/android/server/am/vju;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/am/vju$sis;->zta:Lcom/android/server/am/vju;

    invoke-static {v0}, Lcom/android/server/am/vju;->you(Lcom/android/server/am/vju;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DoFrameInBG"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/vju$sis;->zta:Lcom/android/server/am/vju;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/vju;->zta(Lcom/android/server/am/vju;Lorg/json/JSONArray;)V

    :goto_0
    return-void
.end method
