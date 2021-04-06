.class final Lcom/oneplus/android/server/adfr/tsu$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DesiredDisplayModeSpecsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/adfr/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/adfr/tsu;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/adfr/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/tsu$you;->zta:Lcom/oneplus/android/server/adfr/tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/adfr/tsu;Lcom/oneplus/android/server/adfr/tsu$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/adfr/tsu$you;-><init>(Lcom/oneplus/android/server/adfr/tsu;)V

    return-void
.end method


# virtual methods
.method public onAfterDisplayModeSpecsChange(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAfterDisplayModeSpecsChange modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPlusQSyncController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/tsu$you;->zta:Lcom/oneplus/android/server/adfr/tsu;

    invoke-static {v0}, Lcom/oneplus/android/server/adfr/tsu;->zta(Lcom/oneplus/android/server/adfr/tsu;)Lcom/oneplus/android/server/adfr/tsu$sis;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/tsu$you;->zta:Lcom/oneplus/android/server/adfr/tsu;

    invoke-static {p0}, Lcom/oneplus/android/server/adfr/tsu;->zta(Lcom/oneplus/android/server/adfr/tsu;)Lcom/oneplus/android/server/adfr/tsu$sis;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBeforeDisplayModeSpecsChange(I)V
    .locals 0

    const-string p0, "OPlusQSyncController"

    const-string p1, "onBeforeDisplayModeSpecsChange"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
