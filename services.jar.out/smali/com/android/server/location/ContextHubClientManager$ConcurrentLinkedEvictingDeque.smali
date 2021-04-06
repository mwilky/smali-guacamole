.class Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;
.super Ljava/util/concurrent/ConcurrentLinkedDeque;
.source "ContextHubClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ContextHubClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcurrentLinkedEvictingDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedDeque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mSize:I

.field final synthetic this$0:Lcom/android/server/location/ContextHubClientManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubClientManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->this$0:Lcom/android/server/location/ContextHubClientManager;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput p2, p0, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->mSize:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->mSize:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientManager$ConcurrentLinkedEvictingDeque;->poll()Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
