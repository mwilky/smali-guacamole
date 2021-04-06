.class final Lcom/android/server/biometrics/BiometricService$AuthSession;
.super Ljava/lang/Object;
.source "BiometricService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AuthSession"
.end annotation


# instance fields
.field private mAuthenticatedTimeMs:J

.field final mBundle:Landroid/os/Bundle;

.field final mCallingPid:I

.field final mCallingUid:I

.field final mCallingUserId:I

.field final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field mErrorEscrow:I

.field final mModalitiesMatched:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mModalitiesWaiting:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mModality:I

.field final mOpPackageName:Ljava/lang/String;

.field final mRequireConfirmation:Z

.field final mSessionId:J

.field private mStartTimeMs:J

.field mState:I

.field final mSysUiSessionId:I

.field final mToken:Landroid/os/IBinder;

.field mTokenEscrow:[B

.field final mUserId:I

.field mVendorCodeEscrow:I

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Ljava/util/HashMap;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/IBinder;",
            "JI",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "IIIIZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    move-object/from16 v4, p3

    iput-object v4, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    move-wide/from16 v5, p4

    iput-wide v5, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    move/from16 v7, p6

    iput v7, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    move-object/from16 v8, p7

    iput-object v8, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 v10, p9

    iput-object v10, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    iput v11, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    move/from16 v11, p10

    iput v11, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    move/from16 v12, p11

    iput v12, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    move/from16 v13, p12

    iput v13, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    move/from16 v14, p13

    iput v14, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    move/from16 v15, p14

    iput-boolean v15, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New AuthSession, mSysUiSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Unable to link to death"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/BiometricService$AuthSession;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mAuthenticatedTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mAuthenticatedTimeMs:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/BiometricService$AuthSession;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mStartTimeMs:J

    return-wide p1
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, sysUiSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method containsCookie(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isAllowDeviceCredential()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method isCrypto()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
