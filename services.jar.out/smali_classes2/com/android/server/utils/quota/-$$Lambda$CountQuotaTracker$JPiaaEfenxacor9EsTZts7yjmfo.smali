.class public final synthetic Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$JPiaaEfenxacor9EsTZts7yjmfo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$JPiaaEfenxacor9EsTZts7yjmfo;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$JPiaaEfenxacor9EsTZts7yjmfo;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/utils/quota/CountQuotaTracker;->lambda$dump$7(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V

    return-void
.end method
