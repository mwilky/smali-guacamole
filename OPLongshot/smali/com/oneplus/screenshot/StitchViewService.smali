.class public Lcom/oneplus/screenshot/StitchViewService;
.super Landroid/accessibilityservice/AccessibilityService;
.source ""


# static fields
.field static final TAG:Ljava/lang/String; = "Longshot.StitchViewService"

.field private static mInstance:Lcom/oneplus/screenshot/StitchViewService;


# instance fields
.field public DEBUG_NODES:Z

.field public mFirstPreview:Landroid/graphics/Bitmap;

.field mHeight:I

.field public mIsItFirstShot:Z

.field public mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public mLastChildIndex:I

.field public mLastCropPosition:I

.field public mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

.field public mPreviousScollViewBottom:I

.field public mPreviousScollViewTop:I

.field public mScrollEndReached:Z

.field mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mScrollSearchPerformed:Z

.field public mScrollViewHeight:I

.field public mViewPropCallback:Ljava/lang/Object;

.field mWidth:I

.field public mWindowId:I

.field public providesScrollInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollEndReached:Z

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollSearchPerformed:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->providesScrollInfo:Z

    iput-boolean v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mIsItFirstShot:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mViewPropCallback:Ljava/lang/Object;

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollViewHeight:I

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->DEBUG_NODES:Z

    return-void
.end method

.method public static getInstance()Lcom/oneplus/screenshot/StitchViewService;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/StitchViewService;->mInstance:Lcom/oneplus/screenshot/StitchViewService;

    return-object v0
.end method

.method private printViewBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : child rect : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.StitchViewService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized canFindScrollView()Z
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollSearchPerformed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v3, "Longshot.StitchViewService"

    const-string v4, "canFindScrollView rootInfo null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lb/b/b/l/f/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v4

    iget v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    sget-wide v6, Lb/b/b/l/f/c;->a:J

    const/4 v8, 0x1

    sget v9, Lb/b/b/l/f/c;->b:I

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lb/b/b/l/f/a;->a(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v0, "Longshot.StitchViewService"

    const-string v4, "canFindScrollView got rootInfoWithWindowId"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :cond_3
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/StitchViewService;->findScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollSearchPerformed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canProvideScrollDistanceInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/StitchViewService;->providesScrollInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mViewPropCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollViewHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized findMatchedChildNodePosition()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Longshot.StitchViewService"

    const-string v2, "match found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/StitchViewService;->getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "Longshot.StitchViewService"

    const-string v1, "match not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized findScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/StitchViewService;->isValidScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/StitchViewService;->isValidScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/screenshot/StitchViewService;->findScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    :try_start_0
    iget v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lb/b/b/l/f/c;->b(Landroid/view/accessibility/AccessibilityNodeInfo;I)J

    move-result-wide v3

    invoke-static {v0}, Lb/b/b/l/f/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    const/4 v5, 0x1

    sget v6, Lb/b/b/l/f/c;->b:I

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lb/b/b/l/f/a;->a(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, "Longshot.StitchViewService"

    const-string v1, "could not get child from framework"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 3

    const-string v0, "Longshot.StitchViewService"

    const-string v1, "init values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollEndReached:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mIsItFirstShot:Z

    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->providesScrollInfo:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mViewPropCallback:Ljava/lang/Object;

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    iput-boolean v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollSearchPerformed:Z

    iput v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollViewHeight:I

    return-void
.end method

.method isValidScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->isCompatibleScrollView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    const-string v0, "Longshot.StitchViewService"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/oneplus/screenshot/StitchViewService;->mInstance:Lcom/oneplus/screenshot/StitchViewService;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mHeight:I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/StitchViewService;->mInstance:Lcom/oneplus/screenshot/StitchViewService;

    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mFirstPreview:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startLongShot()Landroid/graphics/Rect;
    .locals 11

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->canProvideScrollDistanceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->isStitchByScrollDistance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->takeScrollNodeContentViewShotByScrollDistance()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    const-string v3, "Longshot.StitchViewService"

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lb/b/b/l/f/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v4

    iget v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mWindowId:I

    sget-wide v6, Lb/b/b/l/f/c;->a:J

    const/4 v8, 0x1

    sget v9, Lb/b/b/l/f/c;->b:I

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lb/b/b/l/f/a;->a(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "startLongShot got rootInfoWithWindowId"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/StitchViewService;->findScrollNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->takeScrollNodeContentViewShot()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot take long screenshot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method declared-synchronized takeScrollNodeContentViewShot()Landroid/graphics/Rect;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getLastChildIndex()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/oneplus/screenshot/StitchViewService;->DEBUG_NODES:Z

    if-eqz v3, :cond_0

    const-string v3, "Longshot.StitchViewService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastChildIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " childCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scrollRect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v3}, Lcom/oneplus/screenshot/StitchViewService;->printViewBounds(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    iget-object v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v5, v0}, Lcom/oneplus/screenshot/StitchViewService;->getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    if-le v2, v6, :cond_2

    iget v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    sub-int/2addr v2, v6

    goto :goto_0

    :cond_2
    sub-int/2addr v2, v4

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/oneplus/screenshot/StitchViewService;->getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v6, v0

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/screenshot/StitchViewService;->findMatchedChildNodePosition()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_4
    :try_start_2
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_7

    const-string v6, "Longshot.StitchViewService"

    const-string v7, "last node incomplete"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    if-gez v6, :cond_5

    const-string v6, "Longshot.StitchViewService"

    const-string v7, "top bound greater than bottom bound"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    :cond_5
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginTop()I

    move-result v7

    if-ge v6, v7, :cond_6

    const-string v6, "Longshot.StitchViewService"

    const-string v7, "Under title bar, have to stitch incomplete node"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastCropPosition:I

    :cond_6
    move v6, v4

    goto :goto_1

    :cond_7
    move v6, v0

    :goto_1
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-ne v7, v8, :cond_8

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v7, :cond_8

    const-string v1, "Longshot.StitchViewService"

    const-string v2, "full size node"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v7, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    if-le v2, v7, :cond_9

    iget v4, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChildIndex:I

    sub-int/2addr v2, v4

    goto :goto_2

    :cond_9
    sub-int/2addr v2, v4

    :goto_2
    invoke-virtual {p0, v3, v2}, Lcom/oneplus/screenshot/StitchViewService;->getChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    move v4, v0

    move-object v3, v5

    :goto_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v5, :cond_a

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_4
    iget-object v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mLastChild:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    if-eqz v4, :cond_b

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "Longshot.StitchViewService"

    const-string v5, "firstShot"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    if-eqz v6, :cond_d

    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->isStitchViewBoundsImprovementActivity()Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_c

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0xa

    :cond_c
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {v5, v0, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    goto :goto_4

    :cond_d
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mWidth:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {v4, v0, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4
    const-string v0, "Longshot.StitchViewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first -rect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Longshot.StitchViewService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last -rect:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Longshot.StitchViewService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scroll -rect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Longshot.StitchViewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shotBounds -rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/oneplus/screenshot/StitchViewService;->mScrollNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method takeScrollNodeContentViewShotByScrollDistance()Landroid/graphics/Rect;
    .locals 8

    const-string v0, "Longshot.StitchViewService"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/StitchViewService;->mViewPropCallback:Ljava/lang/Object;

    invoke-static {v1}, Lb/b/b/h/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lb/b/b/h/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lb/b/b/h/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lb/b/b/h/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget v4, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    sub-int/2addr v4, v3

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iget v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    sub-int/2addr v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    iput v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewTop:I

    iput v2, p0, Lcom/oneplus/screenshot/StitchViewService;->mPreviousScollViewBottom:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scrollViewTopDelta:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scrollViewBottomDelta:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scrolledDistance="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/oneplus/screenshot/StitchViewService;->mIsItFirstShot:Z

    if-eqz v3, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v1, v5, v5, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v2, "takeScrollNodeContentViewShotByScrollDistance : firstShot"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/oneplus/screenshot/StitchViewService;->mIsItFirstShot:Z

    goto :goto_2

    :cond_2
    const-string v3, "takeScrollNodeContentViewShotByScrollDistance : nextShot"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Rect;

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v7

    sub-int v7, v2, v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v4

    sub-int/2addr v7, v1

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMarginBottom()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-direct {v3, v5, v7, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v3

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shot bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method
