.class Lcom/android/server/vdb$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# static fields
.field public static final you:I


# instance fields
.field final synthetic zta:Lcom/android/server/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/vdb;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vdb$zta;->zta:Lcom/android/server/vdb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/vdb$zta;->zta:Lcom/android/server/vdb;

    invoke-static {v0}, Lcom/android/server/vdb;->you(Lcom/android/server/vdb;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/vdb;->sis()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ProcessManagement_IN"

    goto :goto_0

    :cond_1
    const-string v1, "ProcessManagement"

    :goto_0
    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vdb$zta;->zta:Lcom/android/server/vdb;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/vdb;->zta(Lcom/android/server/vdb;Lorg/json/JSONArray;)V

    :goto_1
    return-void
.end method
