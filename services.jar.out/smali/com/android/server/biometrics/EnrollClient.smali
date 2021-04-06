.class public abstract Lcom/android/server/biometrics/EnrollClient;
.super Lcom/android/server/biometrics/OpClientMonitor;
.source "EnrollClient.java"


# instance fields
.field private final mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

.field private final mCryptoToken:[B

.field private final mDisabledFeatures:[I

.field private mEnrollmentStartTimeMs:J

.field private final mTimeoutSec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;[II)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v14, p10

    move-object/from16 v15, p14

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/OpClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    move-object/from16 v0, p13

    iput-object v0, v13, Lcom/android/server/biometrics/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    array-length v1, v14

    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/biometrics/EnrollClient;->mCryptoToken:[B

    array-length v1, v15

    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    move/from16 v1, p15

    iput v1, v13, Lcom/android/server/biometrics/EnrollClient;->mTimeoutSec:I

    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 4

    invoke-super {p0, p2}, Lcom/android/server/biometrics/OpClientMonitor;->sendEnrollResult(I)V

    iget-object v0, p0, Lcom/android/server/biometrics/EnrollClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/server/biometrics/EnrollClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->actionBiometricEnroll()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to notify EnrollResult:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/biometrics/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/EnrollClient;->logOnEnrolled(IJZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->notifyUserActivity()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/EnrollClient;->sendEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v0

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/biometrics/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onError(JII)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/EnrollClient;->logOnEnrolled(IJZ)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/OpClientMonitor;->onError(JII)Z

    move-result v0

    return v0
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/biometrics/EnrollClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract shouldVibrate()Z
.end method

.method public start()I
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getGroupId()I

    move-result v4

    iget v5, p0, Lcom/android/server/biometrics/EnrollClient;->mTimeoutSec:I

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->enroll([BIILjava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startEnroll failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v4, p0, Lcom/android/server/biometrics/EnrollClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v4}, Lcom/android/server/biometrics/Constants;->tagEnrollStartError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getHalDeviceId()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/android/server/biometrics/EnrollClient;->onError(JII)Z

    return v2

    :cond_1
    invoke-super {p0}, Lcom/android/server/biometrics/OpClientMonitor;->start()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "startEnroll failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method protected statsAction()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop(Z)I
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/biometrics/EnrollClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopEnroll: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollCancel failed, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    return v0

    :cond_1
    nop

    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "stopEnrollment failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 v0, 0x5

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/EnrollClient;->onError(JII)Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/EnrollClient;->mAlreadyCancelled:Z

    return v1

    :goto_2
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    throw v0
.end method
