.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$p7uT0a71EezJS5cR_M51T9WNkb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/stats/pull/netstats/NetworkStatsExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$p7uT0a71EezJS5cR_M51T9WNkb4;->f$0:Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$p7uT0a71EezJS5cR_M51T9WNkb4;->f$0:Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    check-cast p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-static {v0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullDataBytesTransferLocked$6(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result p1

    return p1
.end method
