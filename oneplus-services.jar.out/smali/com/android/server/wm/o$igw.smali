.class Lcom/android/server/wm/o$igw;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "igw"
.end annotation


# static fields
.field static final bio:I = 0x8

.field static final cno:I = 0x6

.field static final igw:I = 0x9

.field static final kth:I = 0x7

.field static final rtg:I = 0x4

.field static final sis:I = 0x2

.field static final ssp:I = 0x5

.field static final tsu:I = 0x3

.field static final wtn:I = 0xa

.field static final you:I = 0x1


# instance fields
.field final synthetic zta:Lcom/android/server/wm/o;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/o;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic zta()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {v0}, Lcom/android/server/wm/o;->ssp(Lcom/android/server/wm/o;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {v0}, Lcom/android/server/wm/o;->ibl(Lcom/android/server/wm/o;)V

    iget-object v0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/o;->setQuickReplyRunning(Z)V

    iget-object v0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    iget-object v1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {v1}, Lcom/android/server/wm/o;->oxb(Lcom/android/server/wm/o;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v1}, Lcom/android/server/wm/o;->gwm(Lcom/android/server/wm/o;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    iget-object v1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {v1}, Lcom/android/server/wm/o;->oxb(Lcom/android/server/wm/o;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/o;->ugm(Lcom/android/server/wm/o;Lcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "OpQuickReply"

    const-string v2, "exitQuickReply fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->ssp(Lcom/android/server/wm/o;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->ssp(Lcom/android/server/wm/o;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p1}, Lcom/android/server/wm/o;->rtg(Lcom/android/server/wm/o;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p1}, Lcom/android/server/wm/o;->bvj(Lcom/android/server/wm/o;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {v0}, Lcom/android/server/wm/o;->bvj(Lcom/android/server/wm/o;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/vdb;

    invoke-direct {v1, p0}, Lcom/android/server/wm/vdb;-><init>(Lcom/android/server/wm/o$igw;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    monitor-exit p1

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p1}, Lcom/android/server/wm/o;->qbh(Lcom/android/server/wm/o;)V

    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0, v1}, Lcom/android/server/wm/o;->oif(Lcom/android/server/wm/o;Z)V

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "OpQuickReply"

    const-string v0, "handling MSG_OEM_HANDLE_SWITCH_IM_BUTTON"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    iget-object v0, p1, Lcom/android/server/wm/o;->cgv:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/o;->igw(Lcom/android/server/wm/o;)V

    iget-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p1}, Lcom/android/server/wm/o;->lqr(Lcom/android/server/wm/o;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p1, v0}, Lcom/android/server/wm/o;->bio(Lcom/android/server/wm/o;I)V

    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->cjf(Lcom/android/server/wm/o;)Lcom/android/server/wm/o$igw;

    move-result-object p0

    const/4 p1, 0x6

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/o;->gck(Lcom/android/server/wm/o;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0, p1}, Lcom/android/server/wm/o;->ywr(Lcom/android/server/wm/o;I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->gck(Lcom/android/server/wm/o;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->wtn(Lcom/android/server/wm/o;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->igw(Lcom/android/server/wm/o;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handling MSG_OEM_ADD_IME_CONTROLS_BUTTON imeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpQuickReply"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0, p1}, Lcom/android/server/wm/o;->bio(Lcom/android/server/wm/o;I)V

    goto :goto_2

    :pswitch_8
    const-string p1, "OpQuickReply"

    const-string v0, "handling MSG_OEM_REMOVE_BUTTON"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->kth(Lcom/android/server/wm/o;)V

    goto :goto_2

    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handling MSG_OEM_ADD_BUTTON "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    iget-object v0, v0, Lcom/android/server/wm/o;->veq:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpQuickReply"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p1}, Lcom/android/server/wm/o;->rtg(Lcom/android/server/wm/o;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p1}, Lcom/android/server/wm/o;->ssp(Lcom/android/server/wm/o;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p1}, Lcom/android/server/wm/o;->cjf(Lcom/android/server/wm/o;)Lcom/android/server/wm/o$igw;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->cjf(Lcom/android/server/wm/o;)Lcom/android/server/wm/o$igw;

    move-result-object p0

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/o$igw;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->cno(Lcom/android/server/wm/o;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic you()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/o$igw;->zta()V

    return-void
.end method
