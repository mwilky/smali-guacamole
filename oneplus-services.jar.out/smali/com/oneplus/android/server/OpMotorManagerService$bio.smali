.class Lcom/oneplus/android/server/OpMotorManagerService$bio;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus.intent.action.INCALLUI_ANSWER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "isVideo"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {}, Lcom/oneplus/android/server/OpMotorManagerService;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOneplusTelReceiver isVideoTelConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/OpMotorManagerService;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/OpMotorManagerService;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/OpMotorManagerService;->B(Lcom/oneplus/android/server/OpMotorManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {v0, v1}, Lcom/oneplus/android/server/OpMotorManagerService;->D(Lcom/oneplus/android/server/OpMotorManagerService;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/OpMotorManagerService;->Q(Lcom/oneplus/android/server/OpMotorManagerService;)Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/OpMotorManagerService;->Q(Lcom/oneplus/android/server/OpMotorManagerService;)Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/android/server/scene/GameModeObserver;->isGameModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/OpMotorManagerService;->Q(Lcom/oneplus/android/server/OpMotorManagerService;)Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/scene/GameModeObserver;->isAnswerCallBySpeaker(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    if-nez p2, :cond_4

    invoke-static {}, Lcom/oneplus/android/server/OpMotorManagerService;->R()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {p1, v2}, Lcom/oneplus/android/server/OpMotorManagerService;->S(Lcom/oneplus/android/server/OpMotorManagerService;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {p1}, Lcom/oneplus/android/server/OpMotorManagerService;->sis(Lcom/oneplus/android/server/OpMotorManagerService;)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$bio;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->tsu(Lcom/oneplus/android/server/OpMotorManagerService;)I

    :cond_4
    return-void
.end method
