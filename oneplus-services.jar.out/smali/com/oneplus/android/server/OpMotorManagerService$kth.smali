.class Lcom/oneplus/android/server/OpMotorManagerService$kth;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/OpMotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/OpMotorManagerService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$kth;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/android/server/OpMotorManagerService;->dma(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->veq(Z)Z

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string p0, ""

    invoke-static {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->dma(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/android/server/OpMotorManagerService;->veq(Z)Z

    :cond_2
    :goto_1
    return-void
.end method
