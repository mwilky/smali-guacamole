.class final Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;
.super Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceAuthClient"
.end annotation


# instance fields
.field private mLastAcquire:I

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct/range {p0 .. p15}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public getAcquireIgnorelist()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$500(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$600(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$700(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$800(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public isStrongBiometric()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$300(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v0

    return v0
.end method

.method public onAcquired(II)Z
    .locals 12

    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->mLastAcquire:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040340

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040341

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104033f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.FACE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v7, v3

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v5, "FaceEnrollNotificationChannel"

    new-instance v6, Landroid/app/NotificationChannel;

    const/4 v7, 0x4

    const-string v8, "FaceEnrollNotificationChannel"

    invoke-direct {v6, v8, v0, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v7, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x10803c2

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string/jumbo v9, "sys"

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v9}, Lcom/android/server/biometrics/face/FaceService;->access$900(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v9, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v9}, Lcom/android/server/biometrics/face/FaceService;->access$900(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v11, "FaceService"

    invoke-virtual {v9, v11, v8, v7, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .locals 12
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

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/face/FaceService$UsageStats;

    move-result-object v1

    new-instance v11, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getStartTimeMs()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getStartTimeMs()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getTargetUserId()I

    move-result v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v11

    move v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;-><init>(JJZIII)V

    invoke-virtual {v1, v11}, Lcom/android/server/biometrics/face/FaceService$UsageStats;->addEvent(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)V

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onError(JII)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/face/FaceService$UsageStats;

    move-result-object v0

    new-instance v10, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getStartTimeMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getTargetUserId()I

    move-result v9

    const/4 v6, 0x0

    move-object v1, v10

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;-><init>(JJZIII)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/face/FaceService$UsageStats;->addEvent(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result v0

    return v0
.end method

.method public shouldFrameworkHandleLockout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected statsModality()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->statsModality()I

    move-result v0

    return v0
.end method

.method public wasUserDetected()Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->mLastAcquire:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
