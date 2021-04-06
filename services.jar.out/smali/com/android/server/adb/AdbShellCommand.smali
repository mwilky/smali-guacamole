.class Lcom/android/server/adb/AdbShellCommand;
.super Landroid/os/BasicShellCommandHandler;
.source "AdbShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/BasicShellCommandHandler;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/adb/AdbService;

    iput-object v0, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x83dba29

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x19eab6f9

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "is-wifi-supported"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "is-wifi-qr-supported"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbService;->isAdbWifiQrSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_5
    iget-object v1, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    invoke-virtual {v1}, Lcom/android/server/adb/AdbService;->isAdbWifiSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/adb/AdbShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Adb service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help or -h"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  is-wifi-supported"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Returns \"true\" if adb over wifi is supported."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  is-wifi-qr-supported"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Returns \"true\" if adb over wifi + QR pairing is supported."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
