.class public Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NetworkStatsSubscriptionsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;,
        Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTeleManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mTeleManager:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mDelegate:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;)Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mDelegate:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

    return-object v0
.end method

.method private getActiveSubIdList(Landroid/telephony/SubscriptionManager;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SubscriptionManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleRemoveRatTypeListener(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$100(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mDelegate:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$200(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$Delegate;->onCollapsedRatTypeChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$getRatTypeForSubscriberId$2(Ljava/lang/String;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$200(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onSubscriptionsChanged$0(ILcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$100(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onSubscriptionsChanged$1(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$100(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getRatTypeForSubscriberId(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$XcvCOD6rw0Op9pcr-gV3AsYF2rs;

    invoke-direct {v1, p1}, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$XcvCOD6rw0Op9pcr-gV3AsYF2rs;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;->access$000(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onSubscriptionsChanged()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->getActiveSubIdList(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$V7qNS8_XoZB89tD2CZEL-pj1GG4;

    invoke-direct {v4, v2}, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$V7qNS8_XoZB89tD2CZEL-pj1GG4;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty subscriberId for newly added sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NetworkStats"

    invoke-static {v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v5, v6, p0, v2, v4}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;ILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    new-instance v3, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$_OvXOdZsJGwkdVoLUZj596VRBFk;

    invoke-direct {v3, v2}, Lcom/android/server/net/-$$Lambda$NetworkStatsSubscriptionsMonitor$_OvXOdZsJGwkdVoLUZj596VRBFk;-><init>(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V

    invoke-static {v0, v3}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->handleRemoveRatTypeListener(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->mRatListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->handleRemoveRatTypeListener(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
