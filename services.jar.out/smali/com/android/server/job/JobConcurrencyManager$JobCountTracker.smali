.class Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobCountTracker"
.end annotation


# instance fields
.field private mConfigNumMaxBgJobs:I

.field private mConfigNumMaxTotalJobs:I

.field private mConfigNumMinBgJobs:I

.field private mNumActualMaxBgJobs:I

.field private mNumActualMaxFgJobs:I

.field private mNumPendingBgJobs:I

.field private mNumPendingFgJobs:I

.field private mNumReservedForBg:I

.field private mNumRunningBgJobs:I

.field private mNumRunningFgJobs:I

.field private mNumStartingBgJobs:I

.field private mNumStartingFgJobs:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method canJobStart(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMinBgJobs:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumReservedForBg:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    const-wide v3, 0x1050000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method getFgRunningJobCountToNote()I
    .locals 2

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getNumStartingBgJobs()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    return v0
.end method

.method public getNumStartingFgJobs()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    return v0
.end method

.method getTotalRunningJobCountToNote()I
    .locals 2

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/2addr v0, v1

    return v0
.end method

.method incrementPendingJobCount(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    :goto_0
    return-void
.end method

.method incrementRunningJobCount(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    :goto_0
    return-void
.end method

.method logStatus()V
    .locals 2

    invoke-static {}, Lcom/android/server/job/JobConcurrencyManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assignJobsToContexts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method onCountDone()V
    .locals 5

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMinBgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumReservedForBg:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    return-void
.end method

.method onStartingNewJob(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    :goto_0
    return-void
.end method

.method reset(III)V
    .locals 1

    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    iput p2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    iput p3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMinBgJobs:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumReservedForBg:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/2addr v1, v2

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMinBgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningFgJobs:I

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumRunningBgJobs:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingFgJobs:I

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumPendingBgJobs:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    const-string v4, ""

    const-string v5, "*"

    if-gt v0, v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const/16 v6, 0xa

    aput-object v3, v2, v6

    const/16 v3, 0xb

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0xc

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxBgJobs:I

    if-gt v1, v6, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    aput-object v6, v2, v3

    const/16 v3, 0xd

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0xe

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    if-gt v6, v7, :cond_2

    move-object v6, v4

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    aput-object v6, v2, v3

    const/16 v3, 0xf

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumReservedForBg:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x10

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x11

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x12

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingFgJobs:I

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumStartingBgJobs:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x14

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxFgJobs:I

    if-gt v0, v6, :cond_3

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object v6, v5

    :goto_3
    aput-object v6, v2, v3

    const/16 v3, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x16

    iget v6, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mNumActualMaxBgJobs:I

    if-gt v1, v6, :cond_4

    move-object v6, v4

    goto :goto_4

    :cond_4
    move-object v6, v5

    :goto_4
    aput-object v6, v2, v3

    const/16 v3, 0x17

    add-int v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0x18

    add-int v6, v0, v1

    iget v7, p0, Lcom/android/server/job/JobConcurrencyManager$JobCountTracker;->mConfigNumMaxTotalJobs:I

    if-gt v6, v7, :cond_5

    goto :goto_5

    :cond_5
    move-object v4, v5

    :goto_5
    aput-object v4, v2, v3

    const-string v3, "Config={tot=%d bg min/max=%d/%d} Running[FG/BG (total)]: %d / %d (%d) Pending: %d / %d (%d) Actual max: %d%s / %d%s (%d%s) Res BG: %d Starting: %d / %d (%d) Total: %d%s / %d%s (%d%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
