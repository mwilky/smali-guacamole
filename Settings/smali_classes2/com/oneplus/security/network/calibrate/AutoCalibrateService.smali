.class public Lcom/oneplus/security/network/calibrate/AutoCalibrateService;
.super Landroid/app/Service;
.source "AutoCalibrateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;
    }
.end annotation


# instance fields
.field private mAccountDayUpdateTask:Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;

.field private mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/network/calibrate/AutoCalibrateService;[Ljava/lang/Integer;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->accountDayUpdateDoInBackground([Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/security/network/calibrate/AutoCalibrateService;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->accountDayUpdateOnPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method private varargs accountDayUpdateDoInBackground([Ljava/lang/Integer;)I
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->isReachingAccountDay(I)Z

    move-result p1

    const-string v3, "AutoCalibrateService"

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {p0, v1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->getLastCalibrateTime(Landroid/content/Context;I)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    invoke-static {p0, v4, v5, v1, v2}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->setLastCalibrateTime(Landroid/content/Context;JIZ)V

    :cond_0
    const-string p1, "reach account day and clear related data"

    invoke-static {v3, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->resetDataUsage(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->getLastCalibrateTime(Landroid/content/Context;I)J

    move-result-wide v4

    invoke-static {p0, v1}, Lcom/oneplus/security/network/operator/AccountDayLocalCache;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object p1

    aget-wide v6, p1, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const-string v4, "The datausage is not reset at current datausage section, so we reset it now."

    invoke-static {v3, v4}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->resetDataUsage(I)V

    aget-wide v3, p1, v0

    invoke-static {p0, v3, v4, v1, v2}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->setLastCalibrateTime(Landroid/content/Context;JIZ)V

    :cond_2
    :goto_0
    return v0
.end method

.method private accountDayUpdateOnPostExecute(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/widget/WidgetViewService;->startService(Landroid/content/Context;)V

    const-string p1, "AutoCalibrateService"

    const-string v0, "finish service without any task to wait."

    invoke-static {p1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method

.method public static isReachingAccountDay(I)Z
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne p0, v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v2, v3, :cond_1

    if-eq p0, v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v0, v5, v6, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-ge v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isReachingAccountDay current day is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " account day is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " reach account day "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AutoCalibrateService"

    invoke-static {v0, p0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private resetDataUsage(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->resetTrafficDialogAlertedState(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/oneplus/security/network/operator/PkgInfoLocalCache;->clearPkgUsedMonthlyLocalCache(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->clearPkgUsedMonthlyInByte(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->clearSystemDataLimitValue(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->clearSystemDataWarnValue(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/oneplus/security/SecureService;->startServiceForDataUsage(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onAccountDayUpdate(I)V
    .locals 4

    invoke-static {p0, p1}, Lcom/oneplus/security/network/operator/NativeOperatorDataManager;->getAccountDay(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v1, p1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimReady(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish service because of sim card is not ready, simIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoCalibrateService"

    invoke-static {v0, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    new-instance v1, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;

    invoke-direct {v1, p0}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;-><init>(Lcom/oneplus/security/network/calibrate/AutoCalibrateService;)V

    iput-object v1, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->mAccountDayUpdateTask:Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-virtual {v1, p0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "AutoCalibrateService"

    const-string v1, "destroy service"

    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->mAccountDayUpdateTask:Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    const-string v1, "key_auto_calibrate_service_task"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called on start command ,taskIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoCalibrateService"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->onAccountDayUpdate(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->onAccountDayUpdate(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
