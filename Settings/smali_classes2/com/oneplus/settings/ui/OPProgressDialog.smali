.class public Lcom/oneplus/settings/ui/OPProgressDialog;
.super Landroid/app/ProgressDialog;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mShowDelayTime:J

.field private mTimeOut:J

.field private mTimeOutListener:Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimeOut:J

    iput-wide v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mShowDelayTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimeOutListener:Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimer:Ljava/util/Timer;

    new-instance p1, Lcom/oneplus/settings/ui/OPProgressDialog$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ui/OPProgressDialog$1;-><init>(Lcom/oneplus/settings/ui/OPProgressDialog;)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPProgressDialog;)Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimeOutListener:Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPProgressDialog;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/ProgressDialog;->onStart()V

    iget-wide v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/oneplus/settings/ui/OPProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPProgressDialog$2;-><init>(Lcom/oneplus/settings/ui/OPProgressDialog;)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimer:Ljava/util/Timer;

    iget-wide v2, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimeOut:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ProgressDialog;->onStop()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public setTimeOut(JLcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;)V
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimeOut:J

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mTimeOutListener:Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    :cond_0
    return-void
.end method

.method public showDelay()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mShowDelayTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public showDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog;->mShowDelayTime:J

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPProgressDialog;->showDelay()V

    return-void
.end method
