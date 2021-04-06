.class public Lcom/android/server/recoverysystem/RecoverySystemService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"

# interfaces
.implements Lcom/android/internal/widget/RebootEscrowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;,
        Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;,
        Lcom/android/server/recoverysystem/RecoverySystemService$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final INIT_SERVICE_CLEAR_BCB:Ljava/lang/String; = "init.svc.clear-bcb"

.field static final INIT_SERVICE_SETUP_BCB:Ljava/lang/String; = "init.svc.setup-bcb"

.field static final INIT_SERVICE_UNCRYPT:Ljava/lang/String; = "init.svc.uncrypt"

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "RecoverySystemService"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

.field private mPreparedForReboot:Z

.field private mPreparedForRebootIntentSender:Landroid/content/IntentSender;

.field private mUnattendedRebootToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/recoverysystem/RecoverySystemService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v3, "init.svc.uncrypt"

    invoke-virtual {v1, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v4, "init.svc.setup-bcb"

    invoke-virtual {v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v5, "init.svc.clear-bcb"

    invoke-virtual {v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "running"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v2, v7

    :cond_1
    if-nez v2, :cond_2

    return v7

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->threadSleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "RecoverySystemService"

    const-string v7, "Interrupted:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private enforceShell()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isCallerShell()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

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

.method private sendPreparedForRebootIntentIfNeeded()V
    .locals 7

    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForRebootIntentSender:Landroid/content/IntentSender;

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not send intent for prepared reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecoverySystemService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_0

    const-string v3, "uncrypt service is unavailable."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v3, "ctl.start"

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v5, "setup-bcb"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v5, "clear-bcb"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {v3, p2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendCommand(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V

    const/16 v5, 0x64

    if-ne v4, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncrypt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string v6, "setup"

    goto :goto_1

    :cond_4
    const-string v6, "clear"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " bcb successfully finished."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    nop

    const/4 v1, 0x1

    return v1

    :cond_5
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncrypt failed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "IOException when communicating with uncrypt:"

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v1

    :goto_2
    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    throw v1
.end method


# virtual methods
.method public clearBcb()Z
    .locals 3

    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearLskf()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    iput-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForRebootIntentSender:Landroid/content/IntentSender;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockSettingsInternal;->clearRebootEscrow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPreparedForReboot(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "RecoverySystemService"

    const-string v1, "onPreparedForReboot called when mUnattendedRebootToken is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded()V

    :cond_1
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforceShell()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    :try_start_1
    invoke-direct {v3, p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method onSystemServicesReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockSettingsInternal;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    return-void
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    const-string v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rebootWithLskf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    const/4 v1, 0x0

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_0

    const-string v0, "Reboot requested before prepare completed"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Reboot requested after preparation, but with mismatching token"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->armRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Failure to escrow key for reboot"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForReboot:Z

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mUnattendedRebootToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mPreparedForRebootIntentSender:Landroid/content/IntentSender;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockSettingsInternal;->prepareRebootEscrow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 9

    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "RecoverySystemService"

    const-string v3, "uncrypt service is unavailable."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->uncryptPackageFileDelete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileWriter()Ljava/io/FileWriter;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    nop

    :try_start_4
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v3, "ctl.start"

    const-string v4, "uncrypt"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v3, "RecoverySystemService"

    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return v2

    :cond_2
    const/high16 v3, -0x80000000

    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result v4

    if-ne v4, v3, :cond_3

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    if-ltz v4, :cond_6

    const/16 v5, 0x64

    if-gt v4, v5, :cond_6

    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uncrypt read status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_4

    :try_start_6
    invoke-interface {p2, v4}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_7
    const-string v7, "RecoverySystemService"

    const-string v8, "RemoteException when posting progress"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    if-ne v4, v5, :cond_5

    const-string v5, "RecoverySystemService"

    const-string v6, "uncrypt successfully finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    nop

    const/4 v2, 0x1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return v2

    :cond_5
    goto :goto_0

    :cond_6
    :try_start_9
    const-string v5, "RecoverySystemService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uncrypt failed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    nop

    :try_start_a
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    return v2

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_b
    const-string v4, "RecoverySystemService"

    const-string v5, "IOException when reading status: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    nop

    :try_start_c
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0

    return v2

    :goto_2
    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    nop

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_7

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catch_2
    move-exception v1

    :try_start_f
    const-string v3, "RecoverySystemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException when writing \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return v2

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v1
.end method
