.class final Lcom/oneplus/android/server/iris/you$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DesiredDisplayModeSpecsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/iris/you;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/iris/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/iris/you;Lcom/oneplus/android/server/iris/you$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you$tsu;-><init>(Lcom/oneplus/android/server/iris/you;)V

    return-void
.end method


# virtual methods
.method public onAfterDisplayModeSpecsChange(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAfterDisplayModeSpecsChange modId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v0}, Lcom/oneplus/android/server/iris/you;->ivd(Lcom/oneplus/android/server/iris/you;)Lcom/oneplus/android/server/iris/you$sis;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v0}, Lcom/oneplus/android/server/iris/you;->ivd(Lcom/oneplus/android/server/iris/you;)Lcom/oneplus/android/server/iris/you$sis;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/you;->ivd(Lcom/oneplus/android/server/iris/you;)Lcom/oneplus/android/server/iris/you$sis;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBeforeDisplayModeSpecsChange(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBeforeDisplayModeSpecsChange modeId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpIrisManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
