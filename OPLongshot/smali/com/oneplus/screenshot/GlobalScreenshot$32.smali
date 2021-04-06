.class Lcom/oneplus/screenshot/GlobalScreenshot$32;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->initSmallScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, " mSmallScreen onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p1, "ontouch move"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v2, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, v0, p2, v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3400(Lcom/oneplus/screenshot/GlobalScreenshot;IIZ)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "ontouch up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isToDelayScreenshotSave:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3500(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v4, v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHideSmallScreenPostLongPress = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3500(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isToDelayScreenshotSave:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v4, v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3300(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v4, v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3200(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa

    cmp-long v1, v4, v6

    if-gez v1, :cond_7

    const-string p2, "click action detected"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isDragged()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isIsReseting()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotBeginTime:J

    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->supportNewEditMode:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->unRegisterCallBack()V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->onStop()V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3700(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3800(Lcom/oneplus/screenshot/GlobalScreenshot;I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3900(Lcom/oneplus/screenshot/GlobalScreenshot;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4002(Lcom/oneplus/screenshot/GlobalScreenshot;I)I

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4102(Lcom/oneplus/screenshot/GlobalScreenshot;I)I

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2500(Lcom/oneplus/screenshot/GlobalScreenshot;Z)V

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4200(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v6, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4400(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v7

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4500(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4600(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;IIZZZ)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    return v2

    :cond_7
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, v0, p2, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3400(Lcom/oneplus/screenshot/GlobalScreenshot;IIZ)V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1, v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4802(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4900(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/widget/QuickShareAppPanelView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43020000    # 130.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$5000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, -0x3d380000    # -100.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$5100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$4700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/oneplus/screenshot/GlobalScreenshot$32$1;

    invoke-direct {p2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$32$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot$32;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object p2, p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x320

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object p2, p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    :goto_1
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->onStart()V

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3600(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {p2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$5200(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->registerCallBack(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;)V

    goto :goto_2

    :cond_a
    const-string p1, "ontouch actiondown"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->isToDelayScreenshotSave:Z

    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object p2, p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3300(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$32;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object p2, p1, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3200(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_2
    return v2
.end method
