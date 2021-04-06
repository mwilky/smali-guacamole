.class public Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
.super Landroid/os/ShellCommand;
.source "RecoverySystemShellCommand.java"


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method

.method private clearLskf()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearLskf()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear LSKF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v3, "success"

    goto :goto_0

    :cond_0
    const-string v3, "failure"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private rebootAndApply()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v2, v0, v1}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reboot and apply status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v5, "success"

    goto :goto_0

    :cond_0
    const-string v5, "failure"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4
.end method

.method private requestLskf()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request LSKF status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v4, "success"

    goto :goto_0

    :cond_0
    const-string v4, "failure"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x2e71d75e

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x4aea45a0    # 7676624.0f

    if-eq v1, v2, :cond_3

    const v2, 0x53c163d0

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "reboot-and-apply"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_3
    const-string v1, "request-lskf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-string v1, "clear-lskf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_5
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->rebootAndApply()I

    move-result v0

    return v0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->clearLskf()I

    move-result v0

    return v0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->requestLskf()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v0
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Recovery system commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  request-lskf <token>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  clear-lskf"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  reboot-and-apply <token> <reason>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
