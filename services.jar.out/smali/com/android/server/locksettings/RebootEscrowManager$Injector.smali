.class Lcom/android/server/locksettings/RebootEscrowManager$Injector;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/RebootEscrowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBootCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEventLog()Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-direct {v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;-><init>()V

    return-object v0
.end method

.method public getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;
    .locals 3

    :try_start_0
    const-string v0, "android.hardware.rebootescrow.IRebootEscrow/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "RebootEscrowManager"

    const-string v2, "Device doesn\'t implement RebootEscrow HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public reportMetric(Z)V
    .locals 1

    const/16 v0, 0xee

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ)V

    return-void
.end method
