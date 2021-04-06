.class Lcom/android/server/PackageWatchdog$MonitoredPackage;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitoredPackage"
.end annotation


# instance fields
.field private mDurationMs:J

.field private final mFailureHistory:Landroid/util/LongArrayQueue;

.field private mHasPassedHealthCheck:Z

.field private mHealthCheckDurationMs:J

.field private mHealthCheckState:I

.field private final mPackage:Landroid/content/pm/VersionedPackage;

.field final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method private constructor <init>(Lcom/android/server/PackageWatchdog;Landroid/content/pm/VersionedPackage;JJZ)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    iput-object p2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackage:Landroid/content/pm/VersionedPackage;

    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    iput-wide p5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    iput-boolean p7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Landroid/content/pm/VersionedPackage;JJZLcom/android/server/PackageWatchdog$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Landroid/content/pm/VersionedPackage;JJZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/content/pm/VersionedPackage;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackage:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/util/LongArrayQueue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PackageWatchdog$MonitoredPackage;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/PackageWatchdog$MonitoredPackage;)I
    .locals 1

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PackageWatchdog$MonitoredPackage;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mPackage:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toPositive(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method private toString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_0
    const-string v0, "FAILED"

    return-object v0

    :cond_1
    const-string v0, "PASSED"

    return-object v0

    :cond_2
    const-string v0, "INACTIVE"

    return-object v0

    :cond_3
    const-string v0, "ACTIVE"

    return-object v0
.end method

.method private updateHealthCheckStateLocked()I
    .locals 7

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iget-wide v5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    cmp-long v3, v5, v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated health check state for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    invoke-direct {p0, v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageWatchdog"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v1
.end method


# virtual methods
.method public getHealthCheckStateLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0
.end method

.method public getShortestScheduleDurationMsLocked()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleElapsedTimeLocked(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot handle non-positive elapsed time for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    :cond_1
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public isExpiredLocked()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingHealthChecksLocked()Z
    .locals 2

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onFailureLocked()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->access$900(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongArrayQueue;->addLast(J)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v4}, Lcom/android/server/PackageWatchdog;->access$1000(Lcom/android/server/PackageWatchdog;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v2}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog;->access$1100(Lcom/android/server/PackageWatchdog;)I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailureHistory:Landroid/util/LongArrayQueue;

    invoke-virtual {v3}, Landroid/util/LongArrayQueue;->clear()V

    :cond_2
    return v2
.end method

.method public setHealthCheckActiveLocked(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set non-positive health check duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Using total duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    :cond_0
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    :cond_1
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public tryPassHealthCheckLocked()I
    .locals 2

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public updateHealthCheckDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    return-void
.end method

.method public writeLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "health-check-duration"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "passed-health-check"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
