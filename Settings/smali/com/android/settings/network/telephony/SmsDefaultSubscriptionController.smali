.class public Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.source "SmsDefaultSubscriptionController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCallingAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDefaultSubscriptionId()I
    .locals 0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;->getDefaultSubscriptionId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method protected setDefaultSubscription(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
