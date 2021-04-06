.class public Lcom/oneplus/security/network/view/DataUsageMainActivity;
.super Lcom/oneplus/security/network/view/BaseTabActivity;
.source "DataUsageMainActivity.java"

# interfaces
.implements Lcom/oneplus/security/network/simcard/SimStateListener;
.implements Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;


# instance fields
.field private isActivityShowing:Z

.field private final mCheckFragmentAddRunnable:Ljava/lang/Runnable;

.field private mCurrentDataSlotId:I

.field private mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    new-instance v0, Lcom/oneplus/security/network/view/DataUsageMainActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity$1;-><init>(Lcom/oneplus/security/network/view/DataUsageMainActivity;)V

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCheckFragmentAddRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/network/view/DataUsageMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->checkFragmentAdd()V

    return-void
.end method

.method private checkFragmentAdd()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume getCurrentFragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  cu.isAdded()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUsageMainActivity"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->restartActivity()V

    :cond_0
    return-void
.end method

.method private clearExistingOperatorDataModels()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->clearData()V

    iput-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->clearData()V

    iput-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    :cond_1
    return-void
.end method

.method private configOperatorDataModels()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "DataUsageMainActivity"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "no sim card is inserted in slot 1."

    invoke-static {v3, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v4, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move v1, v2

    goto :goto_1

    :cond_1
    const-string v2, "no sim card is inserted in slot 2."

    invoke-static {v3, v2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-string v0, "none effective sim card inserted, use null model"

    invoke-static {v3, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    :cond_2
    return-void
.end method

.method private findOutCurrentUsingSimSlot()V
    .locals 5

    invoke-static {p0}, Lcom/oneplus/security/network/OperatorInfoUtils;->getCurrentDisplayingSlotId(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findOutCurrentUsingSimSlot cachedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUsageMainActivity"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq v1, v0, :cond_2

    iget-object v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v4, v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v1, :cond_0

    const-string v0, "use cached sim card one."

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    const-string v0, "use cached sim card two."

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    goto :goto_0

    :cond_1
    const-string p0, "this thing should never happen since we only save effective sim id"

    invoke-static {v2, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current slot id is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v4}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v0, "assign model one"

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0, v3}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v3, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v0, "assign model two"

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v0, "assign nothing"

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-static {p0, v0}, Lcom/oneplus/security/network/OperatorInfoUtils;->setCurrentDisplayingSlotId(Landroid/content/Context;I)V

    return-void
.end method

.method private isSlotEffective()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {p0, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private synthetic lambda$showUnitsDialog$0(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "index_data_usage_unit"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->refreshDataUnit()V

    return-void
.end method

.method private registerListener()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v2, "DataUsageMainActivity"

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isSlotEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Slot status change , no sim card -> sim card, need refresh"

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->restartActivity()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isSlotEffective()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Slot status change 2, sim card -> no sim card, need refresh"

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->restartActivity()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->registerOperatorValueListeners()V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->registerSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    return-void
.end method

.method private registerOperatorValueListeners()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addQueryResultListener(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addQueryResultListener(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    :cond_2
    return-void
.end method

.method private requestDataUsageUpdate(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDataUsageUpdate slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageMainActivity"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->requesetPkgMonthlyUsageAndTotalInByte(I)V

    :cond_0
    return-void
.end method

.method private showUnitsDialog()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "index_data_usage_unit"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    sget v3, Lcom/android/settings/R$string;->units_one:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    sget v3, Lcom/android/settings/R$string;->units_two:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    sget v3, Lcom/android/settings/R$string;->units_three:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->units_title:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lcom/oneplus/security/network/view/-$$Lambda$DataUsageMainActivity$2RBQTQoF466yvilYMj7wuVJf6m8;

    invoke-direct {v3, p0}, Lcom/oneplus/security/network/view/-$$Lambda$DataUsageMainActivity$2RBQTQoF466yvilYMj7wuVJf6m8;-><init>(Lcom/oneplus/security/network/view/DataUsageMainActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private unregisterOperatorValueListeners()V
    .locals 2

    const-string v0, "DataUsageMainActivity"

    const-string v1, "unregister listeners."

    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeQueryResultListener(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeQueryResultListener(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getFragmentList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/security/network/view/BaseTabActivity;->mFragmentList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    const-string v2, "DataUsageMainActivity"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "getFragmentList mOperatorDataModelSimOne != null"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    sget v4, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    const/4 v5, 0x0

    invoke-direct {v1, p0, v4, v3, v5}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;-><init>(Landroid/content/Context;IZI)V

    iget-object v4, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v4, v5}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotOperatorSupportedBySdk(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->setSupportSdk(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v1, :cond_2

    const-string v1, "getFragmentList mOperatorDataModelSimTwo != null"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    sget v2, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;-><init>(Landroid/content/Context;IZI)V

    iget-object v2, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v2, v3}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotOperatorSupportedBySdk(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->setSupportSdk(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_3

    new-instance v1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    sget v2, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    const/4 v4, -0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;-><init>(Landroid/content/Context;IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget v1, Lcom/android/settings/R$xml;->data_usage_wlan_prefs:I

    new-instance v2, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getTabTitle()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getSlotOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getSlotOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-nez v1, :cond_2

    sget v1, Lcom/android/settings/R$string;->data_usage_no_simcard:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget v1, Lcom/android/settings/R$string;->data_usage_tab_wifi:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public initData()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-static {}, Lcom/oneplus/security/network/operator/InvalidOperatorDataModel;->getInstance()Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->configOperatorDataModels()V

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->findOutCurrentUsingSimSlot()V

    return-void
.end method

.method public synthetic lambda$showUnitsDialog$0$DataUsageMainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->lambda$showUnitsDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->initData()V

    invoke-super {p0, p1}, Lcom/oneplus/security/network/view/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/SecureService;->startService(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimOne:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mOperatorDataModelSimTwo:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput p1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-static {p0, p1}, Lcom/oneplus/security/network/OperatorInfoUtils;->setCurrentDisplayingSlotId(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/view/BaseTabActivity;->setSelectTab(I)V

    :cond_0
    const/4 p1, -0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "tracker_event"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call this activity from trackerEvent:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataUsageMainActivity"

    invoke-static {v0, p0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "settings_shortcut_data"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-string p1, "systemui_data"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string p1, "widget_data"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string p1, "settings_data"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    sget v1, Lcom/android/settings/R$string;->units_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->clearExistingOperatorDataModels()V

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->clearData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mInvalidDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    :cond_0
    const-string v0, "DataUsageMainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->showUnitsDialog()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    iget-object v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v1, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->removeSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->unregisterOperatorValueListeners()V

    iget v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-static {p0, v1}, Lcom/oneplus/security/network/simcard/SimcardStateManager;->getShouldAlertSimcardHasPopedOut(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-static {p0, v0, v1}, Lcom/oneplus/security/network/simcard/SimcardStateManager;->setShouldAlertSimcardHasPopedOut(Landroid/content/Context;ZI)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCheckFragmentAddRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->registerListener()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->refreshDataUsageUI(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCheckFragmentAddRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSimOperatorCodeChanged(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effective operator code loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataUsageMainActivity"

    invoke-static {p2, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->restartActivity()V

    return-void
.end method

.method public onSimStateChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTabPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/security/network/view/BaseTabActivity;->onTabPageSelected(I)V

    const-string p1, "DataUsageMainActivity"

    const-string v0, "onTabPageSelected"

    invoke-static {p1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-virtual {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->ismNeedHeadView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-virtual {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->getCurrentSlotId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-static {p0, v0}, Lcom/oneplus/security/network/OperatorInfoUtils;->setCurrentDisplayingSlotId(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->refreshDataUsageUI(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onTrafficTotalAndUsedUpdate(JJI)V
    .locals 2

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

    const-string v1, ",mCurrentDataSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageMainActivity"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->mCurrentDataSlotId:I

    if-ne p5, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of p5, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    if-eqz p5, :cond_1

    check-cast p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrafficTotalAndUsedUpdate dataUsagePrefFragment = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->ismNeedHeadView()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->animateUpdateMonthlyRemainingData(JJ)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "skip onTrafficTotalAndUsedUpdate"

    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshDataUnit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->refreshDataUsageUI(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public refreshDataUsageUI(Landroidx/fragment/app/Fragment;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshDataUsageUI fragment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageMainActivity"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eq p1, v0, :cond_1

    const-string p0, "The fragment is not current selected fragment,no need to do any thing"

    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-virtual {p1}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->ismNeedHeadView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-virtual {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->getCurrentSlotId()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataUsagePrefFragment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oneplus/security/network/view/DataUsageMainActivity;->requestDataUsageUpdate(I)V

    :cond_2
    return-void
.end method

.method protected restartActivity()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/security/network/view/DataUsageMainActivity;->isActivityShowing:Z

    if-nez v0, :cond_0

    const-string p0, "DataUsageMainActivity"

    const-string v0, "restartActivity isActivityShowing is false."

    invoke-static {p0, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
