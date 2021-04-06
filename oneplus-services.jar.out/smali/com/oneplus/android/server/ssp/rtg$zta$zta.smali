.class Lcom/oneplus/android/server/ssp/rtg$zta$zta;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/ssp/rtg$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/ssp/rtg$zta;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emergency call, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLocMngrSrv"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {v0}, Lcom/oneplus/android/server/ssp/rtg$zta;->zta(Lcom/oneplus/android/server/ssp/rtg$zta;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "disable turning on location when 911"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "it is emergency call"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->cno(Lcom/oneplus/android/server/ssp/rtg$zta;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->bio(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->igw(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->wtn(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->gck(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->dma(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->ywr(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->qbh(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->you(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p0, p2}, Lcom/oneplus/android/server/ssp/rtg$zta;->kth(Lcom/oneplus/android/server/ssp/rtg$zta;Z)Z

    const-string p0, "emergency call start, modify state done"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->sis(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->tsu(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->rtg(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->ssp(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta$zta;->zta:Lcom/oneplus/android/server/ssp/rtg$zta;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/ssp/rtg$zta;->kth(Lcom/oneplus/android/server/ssp/rtg$zta;Z)Z

    const-string p0, "emergency call end, restore state done"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
