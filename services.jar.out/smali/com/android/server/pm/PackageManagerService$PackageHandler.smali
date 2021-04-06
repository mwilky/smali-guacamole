.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_21

    const/4 v7, 0x5

    const-wide/32 v8, 0x40000

    if-eq v0, v7, :cond_1f

    const/16 v7, 0x9

    if-eq v0, v7, :cond_14

    const/16 v7, 0xe

    const/16 v10, -0x16

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isIntegrityVerificationComplete()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Integrity verification timed out for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PackageManager"

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)I

    move-result v11

    if-ne v11, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Integrity check times out, continuing with "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "PackageManager"

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    :goto_0
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    const-string/jumbo v6, "integrity_verification"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleIntegrityVerificationFinished()V

    goto/16 :goto_10

    :pswitch_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Integrity verification with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found. It may be invalid or overridden by verifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_2
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    if-ne v4, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Integrity check passed for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "PackageManager"

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    :goto_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    const-string/jumbo v6, "integrity_verification"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleIntegrityVerificationFinished()V

    goto/16 :goto_10

    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    :cond_5
    goto/16 :goto_10

    :pswitch_3
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    :cond_6
    monitor-exit v3

    goto/16 :goto_10

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_4
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v3, v2, Landroid/os/Message;->arg2:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService$InstallParams;

    if-eqz v4, :cond_27

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enable rollback timed out for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->remove(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "enable_rollback"

    invoke-static {v8, v9, v7, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v8, 0x4000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v10, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_5
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v3, v2, Landroid/os/Message;->arg2:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService$InstallParams;

    if-nez v4, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid rollback enabled token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_7
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    if-eq v3, v6, :cond_8

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to enable rollback for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v5, "enable_rollback"

    invoke-static {v8, v9, v5, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    goto/16 :goto_10

    :pswitch_6
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/InstantAppRequest;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    goto/16 :goto_10

    :pswitch_7
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/16 v0, 0x13

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_8
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/IntentFilterVerificationState;

    if-nez v4, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IntentFilter verification token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " received"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PackageManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_9
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v5

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing IntentFilter verification with token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/IntentFilterVerificationResponse;

    iget v7, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    iget v8, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IntentFilter verification with token:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and userId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is settings verifier response with response code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v7, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    if-ne v7, v3, :cond_c

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Domains failing verification: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationResponse;->getFailedDomainsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_10

    :cond_d
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IntentFilter verification with token:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " was not said to be complete"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :pswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    iget-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->packageName:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->hasDomainUrls:Z

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->activities:Ljava/util/List;

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;IIZLjava/lang/String;ZLjava/util/List;)V

    goto/16 :goto_10

    :pswitch_a
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Verification timed out for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PackageManager"

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11, v14}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v11

    if-ne v11, v6, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Continuing with installation of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PackageManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v6, 0x2

    invoke-virtual {v4, v3, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v13, 0x1

    const/4 v3, 0x0

    iget v6, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    move v11, v0

    move-object v12, v15

    move-object/from16 v18, v14

    move-object v14, v3

    move-object/from16 v19, v15

    move v15, v6

    move-object/from16 v16, v18

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2

    :cond_e
    move-object/from16 v18, v14

    move-object/from16 v19, v15

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v14, -0x1

    const/4 v15, 0x0

    iget v6, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    move v12, v0

    move-object/from16 v13, v19

    move/from16 v16, v6

    move-object/from16 v17, v18

    invoke-static/range {v11 .. v17}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    invoke-virtual {v5, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    :goto_2
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_f
    const-string/jumbo v3, "verification"

    invoke-static {v8, v9, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    goto/16 :goto_10

    :pswitch_b
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    if-nez v3, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verification with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found. It may be invalid or overridden by integrity verification"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_10
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageVerificationResponse;

    iget v5, v4, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v6, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v6

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v13, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const/4 v14, 0x0

    iget v15, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    move v11, v0

    move-object v12, v7

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_3

    :cond_11
    invoke-virtual {v5, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    :goto_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    const-string/jumbo v10, "verification"

    invoke-static {v8, v9, v10, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    goto/16 :goto_10

    :pswitch_c
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_4

    :cond_13
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_d
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/16 v0, 0xd

    :try_start_5
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_14
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling post-install for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget v3, v2, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_16

    move/from16 v18, v6

    goto :goto_5

    :cond_16
    move/from16 v18, v5

    :goto_5
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v0, :cond_17

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    :cond_17
    if-eqz v0, :cond_18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_b

    :cond_18
    if-eqz v0, :cond_1d

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_19

    move v12, v6

    goto :goto_6

    :cond_19
    move v12, v5

    :goto_6
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_1a

    move v13, v6

    goto :goto_7

    :cond_1a
    move v13, v5

    :goto_7
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v10, 0x10000

    and-int/2addr v7, v10

    if-eqz v7, :cond_1b

    move v14, v6

    goto :goto_8

    :cond_1b
    move v14, v5

    :goto_8
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    iget v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v7, 0x400000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1c

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_1c

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_9

    :cond_1c
    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->whitelistedRestrictedPermissions:Ljava/util/List;

    move-object/from16 v16, v6

    :goto_9
    nop

    iget v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->autoRevokePermissionsMode:I

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v11, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    move/from16 v21, v11

    move-object v11, v4

    move-object/from16 v20, v15

    move-object v15, v5

    move/from16 v17, v6

    move-object/from16 v19, v7

    invoke-static/range {v10 .. v21}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v3}, Lcom/android/server/pm/RecordInstallAndUninstallInfoInjector;->recordInstallInfo(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$InstallArgs;)V

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/android/server/pm/RecordInstallAndUninstallInfoInjector;->recordInstallFailInfo(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v7, :cond_1e

    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    iget v10, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    invoke-static {v8, v9, v7, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_a

    :cond_1d
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing to do for post-install token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1e
    :goto_a
    nop

    :goto_b
    iget v3, v2, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "postInstall"

    invoke-static {v8, v9, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_10

    :cond_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    if-eqz v0, :cond_27

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init_copy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    nop

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v4, "queueInstall"

    invoke-static {v8, v9, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo v3, "startCopy"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_10

    :cond_21
    const/4 v6, 0x0

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v0

    move v6, v0

    if-gtz v6, :cond_22

    monitor-exit v5

    return-void

    :cond_22
    new-array v0, v6, [Ljava/lang/String;

    new-array v7, v6, [Ljava/util/ArrayList;

    new-array v8, v6, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_c
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v11

    if-ge v10, v11, :cond_25

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v11

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24

    if-ge v9, v6, :cond_24

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v0, v9

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    aput-object v14, v7, v9

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v14, v14, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    if-eqz v14, :cond_23

    iget v15, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v11, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    goto :goto_e

    :cond_23
    move v15, v3

    :goto_e
    aput v15, v8, v9

    nop

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_25
    move v6, v9

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v6, :cond_26

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v0, v3

    const/4 v11, 0x1

    aget-object v12, v7, v3

    aget v13, v8, v3

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_26
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    nop

    :cond_27
    :goto_10
    return-void

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method
