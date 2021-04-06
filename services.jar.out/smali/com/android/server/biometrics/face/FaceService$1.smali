.class Lcom/android/server/biometrics/face/FaceService$1;
.super Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired$1$FaceService$1(JII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->access$10601(Lcom/android/server/biometrics/face/FaceService;JII)V

    return-void
.end method

.method public synthetic lambda$onAuthenticated$2$FaceService$1(IJLjava/util/ArrayList;)V
    .locals 2

    new-instance v0, Landroid/hardware/face/Face;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1, v0, p4}, Lcom/android/server/biometrics/face/FaceService;->access$10501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic lambda$onEnrollResult$0$FaceService$1(IIJI)V
    .locals 6

    new-instance v0, Landroid/hardware/face/Face;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/biometrics/BiometricUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1, v0, p5}, Lcom/android/server/biometrics/face/FaceService;->access$10701(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    if-nez p5, :cond_1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$10800(Lcom/android/server/biometrics/face/FaceService;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v4, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v4

    iget-wide v4, v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "FaceService"

    const-string v4, "Unable to get authenticatorId"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public synthetic lambda$onEnumerate$5$FaceService$1(Ljava/util/ArrayList;J)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/hardware/face/Face;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, ""

    invoke-direct {v1, v3, v2, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/biometrics/face/FaceService;->access$9801(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$9901(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onError$3$FaceService$1(JII)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->access$10201(Lcom/android/server/biometrics/face/FaceService;JII)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const-string v0, "FaceService"

    const-string v1, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$7602(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$10302(Lcom/android/server/biometrics/face/FaceService;J)J

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$10402(Lcom/android/server/biometrics/face/FaceService;I)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$onLockoutChanged$6$FaceService$1(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9700(Lcom/android/server/biometrics/face/FaceService;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRemoved$4$FaceService$1(Ljava/util/ArrayList;J)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Landroid/hardware/face/Face;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v4, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v3, v5}, Lcom/android/server/biometrics/face/FaceService;->access$10001(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    new-instance v0, Landroid/hardware/face/Face;

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1, v0, v2}, Lcom/android/server/biometrics/face/FaceService;->access$10101(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v3, "face_unlock_re_enroll"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onAcquired(JIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9000(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$7DzDQwoPfgYi40WuB8Xi0hA3qVQ;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$7DzDQwoPfgYi40WuB8Xi0hA3qVQ;-><init>(Lcom/android/server/biometrics/face/FaceService$1;JII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9100(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-wide v4, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GcU4ZG1fdDLhKvSxuMwfPargEnI;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IJLjava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$8900(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$Dg7kqAVO92T8FbodjRCfn9vSkto;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnumerate(JLjava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9400(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$81olYJI06zsG8LvXV_gD76jaNyg;-><init>(Lcom/android/server/biometrics/face/FaceService$1;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JIII)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9200(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$s3kBxUsmTmDZC9YLbT5yPR3KOWo;-><init>(Lcom/android/server/biometrics/face/FaceService$1;JII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutChanged(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockoutChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$9502(Lcom/android/server/biometrics/face/FaceService;I)I

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$9502(Lcom/android/server/biometrics/face/FaceService;I)I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$9502(Lcom/android/server/biometrics/face/FaceService;I)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$OiHHyHFXrIcrZYUfSsf-E2as1qE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$OiHHyHFXrIcrZYUfSsf-E2as1qE;-><init>(Lcom/android/server/biometrics/face/FaceService$1;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoved(JLjava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9300(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$jaJb2y4UkoXOtV5wJimfIPNA_PM;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$jaJb2y4UkoXOtV5wJimfIPNA_PM;-><init>(Lcom/android/server/biometrics/face/FaceService$1;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
