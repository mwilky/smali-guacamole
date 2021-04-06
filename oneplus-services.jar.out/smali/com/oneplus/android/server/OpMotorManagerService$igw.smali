.class Lcom/oneplus/android/server/OpMotorManagerService$igw;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$igw;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "OpMotorManagerService"

    const-string p2, "onCallStateChanged ...CALL_STATE_IDLE"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$igw;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->you(Lcom/oneplus/android/server/OpMotorManagerService;)Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    move-result-object p0

    const/16 p1, 0x13

    invoke-static {}, Lcom/oneplus/android/server/OpMotorManagerService;->rtg()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
