.class public Lcom/oneplus/screenshot/longshot/app/LongshotDialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnTouchListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.Dialog"


# instance fields
.field private mContentChanged:Z

.field private mContentLayout:I

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/FrameLayout;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

.field private mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

.field private mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

.field private mShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->onCreate()V

    return-void
.end method

.method private initWindow()V
    .locals 9

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    sget v5, Lb/b/b/l/e;->a:I

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0x18a0518

    const/4 v7, -0x3

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v8, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x33

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDecorView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hide()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    return v0
.end method

.method public onCloseSystemDialogs()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "onCloseSystemDialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isCloseSystemDialogs:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    :cond_0
    return-void
.end method

.method protected onCreate()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->initWindow()V

    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    new-instance v0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    return-void
.end method

.method public onRinging()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isPhoneStateChanged:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop mshowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Configs.isCloseSystemDialogs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isCloseSystemDialogs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Configs.isPhoneStateChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isPhoneStateChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Configs.isActivityChangedDuringLongshot= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isActivityChangedDuringLongshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.Dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isCloseSystemDialogs:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isPhoneStateChanged:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isActivityChangedDuringLongshot:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    const-string v0, "onStop"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver is null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDecorView is null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_3

    move v2, v4

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    :cond_4
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string v0, "mDecorView removed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v0, "onStop : end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setContent(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    return-void
.end method

.method public setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settitle layoutparams "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.Dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowing() is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.Dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowing ,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "show : GONE=>VISIBLE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mDecorView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "show : CREATE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mShowing:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;->onShow(Lcom/oneplus/screenshot/longshot/app/LongshotDialog;)V

    :cond_3
    return-void
.end method
