.class Lcom/oneplus/android/server/OpMotorManagerService$gck;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/OpMotorManagerService;->i1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/oneplus/android/server/OpMotorManagerService;

.field final synthetic you:I

.field final synthetic zta:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/OpMotorManagerService;JJLandroid/widget/Button;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->sis:Lcom/oneplus/android/server/OpMotorManagerService;

    iput-object p6, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->zta:Landroid/widget/Button;

    iput p7, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->you:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->zta:Landroid/widget/Button;

    iget v1, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->you:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->zta:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->sis:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {v1}, Lcom/oneplus/android/server/OpMotorManagerService;->kth(Lcom/oneplus/android/server/OpMotorManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x50f013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->zta:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->zta:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$gck;->sis:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->kth(Lcom/oneplus/android/server/OpMotorManagerService;)Landroid/content/Context;

    move-result-object p0

    const v2, 0x50f013b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "S)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method