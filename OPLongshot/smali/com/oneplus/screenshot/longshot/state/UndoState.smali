.class public Lcom/oneplus/screenshot/longshot/state/UndoState;
.super Lcom/oneplus/screenshot/longshot/state/AbsJoinState;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "UndoState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    return-void
.end method


# virtual methods
.method protected createJoinTask()Lcom/oneplus/screenshot/longshot/task/JoinTask;
    .locals 4

    new-instance v0, Lcom/oneplus/screenshot/longshot/task/UndoTask;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsJoinState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/task/UndoTask;-><init>(Lcom/oneplus/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/oneplus/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected prepareSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    return-void
.end method

.method protected updateIndex()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateIndex(I)V

    return-void
.end method
