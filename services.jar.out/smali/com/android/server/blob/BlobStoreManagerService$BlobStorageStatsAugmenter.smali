.class Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"

# interfaces
.implements Lcom/android/server/usage/StorageStatsManagerInternal$StorageStatsAugmenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlobStorageStatsAugmenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method

.method static synthetic lambda$augmentStatsForPackage$0(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void
.end method

.method static synthetic lambda$augmentStatsForPackage$1(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 2

    invoke-virtual {p3, p0}, Lcom/android/server/blob/BlobMetadata;->isALeasee(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p0}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_1
    return-void
.end method

.method static synthetic lambda$augmentStatsForUid$2(ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void
.end method

.method static synthetic lambda$augmentStatsForUid$3(IZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 2

    invoke-virtual {p3, p0}, Lcom/android/server/blob/BlobMetadata;->isALeasee(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p0}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_1
    return-void
.end method


# virtual methods
.method public augmentStatsForPackage(Landroid/content/pm/PackageStats;Ljava/lang/String;IZ)V
    .locals 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$GhVw0a697xZVb2EnlVEH3ay1XIs;

    invoke-direct {v2, p2, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$GhVw0a697xZVb2EnlVEH3ay1XIs;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v1, v2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$800(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$fM2V16zpx9kvd0SPO_6PGqda1dE;

    invoke-direct {v2, p2, p4, v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$fM2V16zpx9kvd0SPO_6PGqda1dE;-><init>(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v1, v2, p3}, Lcom/android/server/blob/BlobStoreManagerService;->access$900(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method

.method public augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V
    .locals 6

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v3, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$6I1rElEek_dg0VKSQnT1Yv3L_Jc;

    invoke-direct {v3, p2, v1}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$6I1rElEek_dg0VKSQnT1Yv3L_Jc;-><init>(ILjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v2, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$800(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v3, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;

    invoke-direct {v3, p2, p3, v1}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;-><init>(IZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v2, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$900(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method