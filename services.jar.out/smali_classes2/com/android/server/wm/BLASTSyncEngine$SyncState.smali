.class Lcom/android/server/wm/BLASTSyncEngine$SyncState;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BLASTSyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncState"
.end annotation


# instance fields
.field mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

.field mReady:Z

.field mRemainingTransactions:I

.field mSyncId:I

.field mWindowContainersReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/BLASTSyncEngine;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mReady:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mWindowContainersReady:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    iput p3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mSyncId:I

    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mRemainingTransactions:I

    return-void
.end method

.method private tryFinish()V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mRemainingTransactions:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    iget v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mSyncId:I

    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mWindowContainersReady:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionReady(ILjava/util/Set;)V

    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-static {v0}, Lcom/android/server/wm/BLASTSyncEngine;->access$000(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/ArrayMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mSyncId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method addToSync(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mSyncId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/WindowContainer;->prepareForSync(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mRemainingTransactions:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mRemainingTransactions:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTransactionReady(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mRemainingTransactions:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mRemainingTransactions:I

    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mWindowContainersReady:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->tryFinish()V

    return-void
.end method

.method setReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->mReady:Z

    invoke-direct {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->tryFinish()V

    return-void
.end method
