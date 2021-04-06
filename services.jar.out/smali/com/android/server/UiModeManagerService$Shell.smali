.class Lcom/android/server/UiModeManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shell"
.end annotation


# static fields
.field public static final NIGHT_MODE_STR_AUTO:Ljava/lang/String; = "auto"

.field public static final NIGHT_MODE_STR_CUSTOM:Ljava/lang/String; = "custom"

.field public static final NIGHT_MODE_STR_NO:Ljava/lang/String; = "no"

.field public static final NIGHT_MODE_STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NIGHT_MODE_STR_YES:Ljava/lang/String; = "yes"


# instance fields
.field private final mInterface:Landroid/app/IUiModeManager;


# direct methods
.method constructor <init>(Landroid/app/IUiModeManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    return-void
.end method

.method static synthetic access$3400(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCustomTime()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCustomTime()V

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x188db

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v3, :cond_3

    const v3, 0x68ac462

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_3
    const-string v2, "end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :goto_0
    move v2, v5

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "command must be in [start|end]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-static {v2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$3500(Ljava/time/LocalTime;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-static {v2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$3500(Ljava/time/LocalTime;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V

    return v1
.end method

.method private handleNightMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    return v2

    :cond_0
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->strToNightMode(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v4, v3}, Landroid/app/IUiModeManager;->setNightMode(I)V

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->printCurrentNightMode()V

    return v2

    :cond_1
    const-string v2, "Error: mode must be \'yes\', \'no\', or \'auto\', or \'custom\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method private static nightModeToStr(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_0
    const-string v0, "custom"

    return-object v0

    :cond_1
    const-string/jumbo v0, "yes"

    return-object v0

    :cond_2
    const-string/jumbo v0, "no"

    return-object v0

    :cond_3
    const-string v0, "auto"

    return-object v0
.end method

.method private printCurrentNightMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/UiModeManagerService$Shell;->nightModeToStr(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Night mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printCustomTime()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v2}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->access$3600(J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$Shell;->mInterface:Landroid/app/IUiModeManager;

    invoke-interface {v2}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->access$3600(J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static strToNightMode(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5069748f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xdc1

    if-eq v0, v1, :cond_3

    const v1, 0x1d2e7

    if-eq v0, v1, :cond_2

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :cond_4
    const-string v0, "custom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    return v3

    :cond_5
    return v4

    :cond_6
    return v2

    :cond_7
    return v6

    :cond_8
    return v5
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x3652cd

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x63f6418

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleCustomTime()I

    move-result v0

    return v0

    :cond_5
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$Shell;->handleNightMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "UiModeManager service (uimode) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  night [yes|no|auto|custom]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Set or read night mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  time [start|end] <ISO time>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Set custom start/end schedule time (night mode must be set to custom to apply)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
