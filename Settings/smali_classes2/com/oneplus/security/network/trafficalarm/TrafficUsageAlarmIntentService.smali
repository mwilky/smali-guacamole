.class public Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;
.super Landroid/app/Service;
.source "TrafficUsageAlarmIntentService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;


# static fields
.field private static final sDialogShowLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSlotId:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRunningOutAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mRunningOutAndCloseNetworkDialog:Landroidx/appcompat/app/AlertDialog;

.field private mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

.field private mTenPercentLeftAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->sDialogShowLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Lcom/oneplus/security/network/NetworkPolicyEditor;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    return-object p0
.end method

.method private checkDataUsedShouldAlert(JJI)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDataUsedShouldAlert: mHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficUsageAlarmIntentService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDataUsedShouldAlert: usedbyte"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDataUsedShouldAlert: totalByte"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, p3, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldAlertTrafficRunningOut 1: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-static {v0, v4}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->shouldAlertTrafficRunningOut(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-static {p2, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->shouldAlertTrafficRunningOut(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mMainThreadHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput p5, p1, Landroid/os/Message;->arg1:I

    iget-object p2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->notifyUsageRunningOutOfData(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-static {p1, v3, p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->isTrafficRunningOutAlreadyAlerted(Landroid/content/Context;ZI)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-static {p1, p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->shouldAlertDataWarn(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    const-wide/16 v4, -0x1

    invoke-static {p1, p2, v4, v5}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide p1

    cmp-long v0, v4, p1

    if-nez v0, :cond_4

    const-string p0, "dataUsageLeftNumberAlert is OperaConst.PKG_USAGE_INVALID_VALUE"

    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    cmp-long p1, p3, p1

    if-ltz p1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    move p1, v3

    :goto_1
    const-string p2, "is_exceeded"

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-static {p1, p3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->shouldAlertDataWarn(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->notifyDataUsage(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput p5, p1, Landroid/os/Message;->arg1:I

    iget-object p3, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_6
    const-string p1, "shouldAlert is false"

    invoke-static {v1, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    const-string p1, "isPkgRunOut is false and hasMoreThanAlertData is false"

    invoke-static {v1, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    return-void
.end method

.method private iniOperatorDataModel()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    const-string v1, "TrafficUsageAlarmIntentService"

    if-gez v0, :cond_0

    const-string v0, "query data alert with invalid slotId."

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iniOperatorDataModel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    iget v3, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-interface {v2, v3}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotOperatorSupportedBySdk(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    return-void
.end method

.method private notifyDataUsage(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.oneplus.security.network.trafficalarm.ten_percent_alarm"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyUsageRunningOutOfData(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.oneplus.security.network.trafficalarm.running_out_data"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshDataModelIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    const-string v1, "TrafficUsageAlarmIntentService"

    if-gez v0, :cond_0

    const-string v2, "query data alert with invalid slotId."

    invoke-static {v1, v2}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    if-eq v2, v0, :cond_1

    const-string v2, "initDataModelIfNeeded"

    invoke-static {v1, v2}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->clearData()V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    :cond_1
    return-void
.end method

.method private showDataWarnAlertDialog()V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mTenPercentLeftAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->sDialogShowLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$style;->OnePlus_Theme_Dialog_Pop:I

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v3, Lcom/android/settings/R$string;->traffic_usage_warn_title:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->hint_data_used_alert:I

    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v4

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {p0, v3, v6}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->confirm_below_ten_percent_alert:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v3, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$5;

    invoke-direct {v3, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$5;-><init>(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)V

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mTenPercentLeftAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mTenPercentLeftAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const-string p0, "TrafficUsageAlarmIntentService"

    const-string v1, "showTenPercentLeftAlertDialog"

    invoke-static {p0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private showPkgRunningOutAlertDialog()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->sDialogShowLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->OnePlus_Theme_Dialog_Pop:I

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/android/settings/R$string;->traffic_usage_runout_title:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$string;->hint_traffic_is_running_out:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$string;->confirm_disable_data_network:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$3;

    invoke-direct {v3, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$3;-><init>(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$string;->cancel_disable_data_network:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$4;

    invoke-direct {v3, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$4;-><init>(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const-string p0, "TrafficUsageAlarmIntentService"

    const-string v1, "showPkgRunningOutAlertDialog"

    invoke-static {p0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private showPkgRunningOutAutoCloseAlertDialog()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRunningOutAndCloseNetworkDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAndCloseNetworkDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficUsageAlarmIntentService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAndCloseNetworkDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRunningOutAndCloseNetworkDialog.isshow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAndCloseNetworkDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficUsageAlarmIntentService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAndCloseNetworkDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->sDialogShowLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->setDataEnabled(Z)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$style;->OnePlus_Theme_Dialog_Pop:I

    invoke-direct {v1, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/settings/R$string;->traffic_usage_runout_title_vzw:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->hint_traffic_auto_close_network_title_vzw:I

    invoke-virtual {p0, v3}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->traffic_auto_close_network_reopen_vzw:I

    invoke-virtual {p0, v3}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->traffic_auto_close_network_keep_closed_vzw:I

    invoke-virtual {p0, v4}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget v3, Lcom/android/settings/R$string;->traffic_usage_runout_title:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->hint_traffic_auto_close_network_title:I

    invoke-virtual {p0, v3}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->traffic_auto_close_network_reopen:I

    invoke-virtual {p0, v3}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->traffic_auto_close_network_keep_closed:I

    invoke-virtual {p0, v4}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_0
    new-instance v5, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$1;

    invoke-direct {v5, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$1;-><init>(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)V

    invoke-virtual {v1, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;

    invoke-direct {v3, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;-><init>(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)V

    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    iget v5, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-static {v3, v4, v5}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setHasAlertedTrafficRunningOut(Landroid/content/Context;ZI)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAndCloseNetworkDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mRunningOutAndCloseNetworkDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const-string p0, "TrafficUsageAlarmIntentService"

    const-string v1, "showPkgRunningOutAutoCloseAlertDialog"

    invoke-static {p0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startSimStatusService(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.oneplus.security.sim_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string p0, "TrafficUsageAlarmIntentService"

    const-string p1, "current default data sim card slotId not eq the slotId."

    invoke-static {p0, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->iniOperatorDataModel()V

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    iget v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-interface {p1, v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotOperatorSupportedBySdk(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-interface {p1, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->requesetPkgMonthlyUsageAndTotalInByte(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-interface {p1, v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getPkgUsedMonthlyInByte(I)J

    move-result-wide v6

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-interface {p1, v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getPkgTotalInByte(I)J

    move-result-wide v4

    iget v8, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->checkDataUsedShouldAlert(JJI)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->showPkgRunningOutAutoCloseAlertDialog()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->showPkgRunningOutAlertDialog()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->showDataWarnAlertDialog()V

    :goto_0
    return v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    const-string v0, "TrafficUsageAlarmIntentService"

    const-string v1, "create usage alarm service"

    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-direct {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->iniOperatorDataModel()V

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->registerSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    new-instance v1, Lcom/oneplus/security/network/NetworkPolicyEditor;

    invoke-direct {v1, v0}, Lcom/oneplus/security/network/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->clearData()V

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "TrafficUsageAlarmIntentService"

    const-string v1, "destroy usage alarm service"

    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {p0, v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->removeSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-string v0, "TrafficUsageAlarmIntentService"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.oneplus.security.sim_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    iget v2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-interface {v1, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SlotSimReady "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->iniOperatorDataModel()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->refreshDataModelIfNeeded()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oneplus.security.network.trafficalarm.ten_percent_alarm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.security.network.trafficalarm.running_out_data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.security.network.trafficalarm.running_out_data_and_close_network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->requesetPkgMonthlyUsageAndTotalInByte(I)V

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->requesetDataUsageAndNotify(I)V

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onTrafficTotalAndUsedUpdate(JJI)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrafficTotalAndUsedUpdate totalByte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",usedByte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficUsageAlarmIntentService"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    :cond_1
    iget v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mCurrentSlotId:I

    if-eq v0, p5, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " used is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    cmp-long v0, p3, v2

    if-nez v0, :cond_3

    const-string p1, "total pkg usage returned is invalid"

    invoke-static {v1, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput p5, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->checkDataUsedShouldAlert(JJI)V

    return-void
.end method
