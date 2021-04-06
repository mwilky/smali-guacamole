.class public Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/screenshot/longshot/smallscreen/TraceCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;,
        Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;
    }
.end annotation


# static fields
.field private static final DRAG_THRESHOLD:I = 0x14

.field private static final DROP_THRESHOLD:I = 0x52

.field private static final SCREEN_FADOUT_DURATION:I = 0x12c

.field private static final SCREEN_RESET_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "Longshot.SmallScreenContorller"

.field private static final VELOCITY_THRESHOLD:F = 20.0f

.field private static leftFadoutanimationEnd:I = 0xfa

.field private static rightFadoutanimationEnd:I = 0x52


# instance fields
.field private isStart:Z

.field private mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

.field private mContext:Landroid/content/Context;

.field private final mDefaultPostion:[I

.field private mDraggable:Z

.field private mDragged:Z

.field private mDropped:Z

.field private mIsReseting:Z

.field private mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

.field private mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

.field private mStartX:F

.field private mVelocityTracler:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDefaultPostion:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDropped:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mStartX:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDraggable:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mIsReseting:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isStart:Z

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mContext:Landroid/content/Context;

    move-object p1, p3

    check-cast p1, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->leftFadoutanimationEnd:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)[I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDefaultPostion:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->scrollBy(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->hookWindowTouch(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDropped:Z

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mIsReseting:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->reset()V

    return-void
.end method

.method private getFadoutAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$1;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$1;-><init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$2;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$2;-><init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getResetAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$3;-><init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$4;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$4;-><init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private hookWindowTouch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private isScrolledToLeft()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDefaultPostion:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private onDragEnd()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isStart:Z

    if-eqz v0, :cond_2

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "onDragEnd:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDraggable:Z

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->isDrop()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDropped:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->getResetAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isScrolledToLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->leftFadoutanimationEnd:I

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->getFadoutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->hookWindowTouch(Z)V

    :goto_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDropped:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;->onDragEnd(Z)V

    :cond_2
    return-void
.end method

.method private onDragStart()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->hookWindowTouch(Z)V

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "onDragStart:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;->onDragStart()V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDraggable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDropped:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mIsReseting:Z

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scrollBy(II)V
    .locals 2

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDefaultPostion:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isScrolledToLeft()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->leftFadoutanimationEnd:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->rightFadoutanimationEnd:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int p1, p2, p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public isDragged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    return v0
.end method

.method public isDropped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDropped:Z

    return v0
.end method

.method public isIsReseting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mIsReseting:Z

    return v0
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isStart:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;->registerCallBack(Lcom/oneplus/screenshot/longshot/smallscreen/TraceCallBack;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->reset()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isStart:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenShotFrameLayout;->unRegisterCallBack()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDraggable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isStart:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mIsReseting:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v2, "Longshot.SmallScreenContorller"

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mStartX:F

    new-instance v0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;-><init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;FF)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;

    const-string p1, "ACTION DOWN"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mStartX:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    if-eqz v1, :cond_5

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->scrollBy(II)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->updateMovePoint(FF)V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->onDragStart()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "ACTION UP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->updateMovePoint(FF)V

    iget-boolean p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->onDragEnd()V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDragged:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->onDragEnd()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;

    :cond_5
    :goto_0
    return-void
.end method

.method public registerCallBack(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDraggable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Longshot.SmallScreenContorller"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mDraggable:Z

    return-void
.end method

.method public unRegisterCallBack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    return-void
.end method
