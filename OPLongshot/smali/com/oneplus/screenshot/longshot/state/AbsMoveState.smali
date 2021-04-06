.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsMoveState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source ""

# interfaces
.implements Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsMoveState"


# instance fields
.field protected mMoveKeep:I

.field protected mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field protected mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveKeep:I

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->getKeep()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveKeep:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->executeMove()V

    return-void
.end method

.method private executeMove()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$2;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getKeep()I
    .locals 1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsKeepList:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_KEEP_LONG:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_KEEP_SHORT:Lcom/oneplus/screenshot/longshot/util/Configs;

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/BaseState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setOverScroll(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {p1, p2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setScroll(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "prepare next Move"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {p2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getDisplayHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Longshot.AbsMoveState"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/oneplus/screenshot/longshot/task/MoveTask;

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {p2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {p2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {p2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getDisplayHeight()I

    move-result v5

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;Landroid/os/IBinder;I)V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->enableMoveTrace()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkTraceBitmap()V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;

    invoke-direct {p2, p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsMoveState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    return-void
.end method

.method protected abstract getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
.end method

.method public isOverScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    return v0
.end method

.method public onMoveFinished()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method public setOverScroll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/BaseState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setOverScroll(Z)V

    return-void
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    :cond_0
    return-void
.end method
