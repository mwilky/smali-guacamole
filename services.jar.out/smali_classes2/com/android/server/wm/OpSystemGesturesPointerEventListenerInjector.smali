.class public Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;
.super Ljava/lang/Object;
.source "OpSystemGesturesPointerEventListenerInjector.java"


# static fields
.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field public static final OP_ACCOUNT_PROVIDER_URI:Ljava/lang/String; = "content://com.oneplus.account.personalize.provider.open"

.field public static final OP_MOVE_DISTANCE_COUNT:I

.field public static final OP_MOVE_DISTANCE_DEBUG:Z

.field public static final OP_MOVE_DISTANCE_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpSystemGestures"

.field private static sScreenHeight:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDistanceRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLastMoveX:[F

.field private mLastMoveY:[F

.field private mMoveCount:I

.field private mPointNove:[F

.field private mSwipeDistanceTotal:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    nop

    const-string v0, "persist.sys.move_distance"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_ENABLED:Z

    nop

    const-string v0, "persist.sys.move_distance_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_DEBUG:Z

    nop

    const-string v0, "persist.sys.move_distance_count"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mPointNove:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveX:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveY:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mDistanceRecord:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, "OpSystemGestures"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getDistance(IFF)F
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDistance Last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveX:[F

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveY:[F

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Now="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSystemGestures"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveX:[F

    aget v0, v0, p1

    sub-float/2addr v0, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveY:[F

    aget v4, v4, p1

    sub-float/2addr v4, p3

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveX:[F

    aput p2, v1, p1

    iget-object v1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveY:[F

    aput p3, v1, p1

    return v0
.end method

.method public static onConfigurationChanged()V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->sScreenHeight:I

    return-void
.end method

.method private saveDistance(D)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$OpSystemGesturesPointerEventListenerInjector$neC_mfZQiJ4FpMKCb3FZMJ-lO-g;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$OpSystemGesturesPointerEventListenerInjector$neC_mfZQiJ4FpMKCb3FZMJ-lO-g;-><init>(Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$saveDistance$0$OpSystemGesturesPointerEventListenerInjector(D)V
    .locals 4

    const-string v0, "OpSystemGestures"

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "slide_distance_key"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v2, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.oneplus.account.personalize.provider.open"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    sget-boolean v2, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveDistance: Max distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mDistanceRecord:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sScreenHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->sScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordSwipe failed due to total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public recordSwipe(Lcom/android/server/wm/SystemGesturesPointerEventListener;Landroid/view/MotionEvent;)V
    .locals 12

    const-string v0, "OpSystemGestures"

    sget-boolean v1, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_ENABLED:Z

    if-eqz v1, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/16 v4, 0x106

    if-eq v3, v4, :cond_1

    const/16 v4, 0x206

    if-eq v3, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mDistanceRecord:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mPointNove:[F

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mPointNove:[F

    aput v5, v6, v4

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveX:[F

    aget v8, v8, v7

    cmpl-float v8, v8, v5

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveX:[F

    iget-object v9, p1, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v9, v9, v7

    aput v9, v8, v7

    :cond_3
    iget-object v8, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveY:[F

    aget v8, v8, v7

    cmpl-float v8, v8, v5

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveY:[F

    iget-object v9, p1, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v9, v9, v7

    aput v9, v8, v7

    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mPointNove:[F

    aget v9, v8, v4

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    invoke-direct {p0, v7, v10, v11}, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->getDistance(IFF)F

    move-result v10

    add-float/2addr v9, v10

    aput v9, v8, v4

    sget-boolean v8, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_DEBUG:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recordSwipe mPointNove["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mPointNove:[F

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mDistanceRecord:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mPointNove:[F

    aget v8, v8, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mPointNove:[F

    aput v5, v7, v6

    iget-wide v7, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mSwipeDistanceTotal:D

    iget-object v5, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mDistanceRecord:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget v9, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->sScreenHeight:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    float-to-double v9, v5

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mSwipeDistanceTotal:D

    sget-boolean v5, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_DEBUG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recordSwipe: Max distance="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mDistanceRecord:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " sScreenHeight="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->sScreenHeight:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " distance="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mSwipeDistanceTotal:D

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " count="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mMoveCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v5, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mMoveCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mMoveCount:I

    sget v4, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->OP_MOVE_DISTANCE_COUNT:I

    if-ne v5, v4, :cond_a

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mMoveCount:I

    iget-wide v4, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mSwipeDistanceTotal:D

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->saveDistance(D)V

    iput-wide v1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mSwipeDistanceTotal:D

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mDistanceRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/16 v3, 0x20

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mPointNove:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveX:[F

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mLastMoveY:[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_a
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    iput-wide v1, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mSwipeDistanceTotal:D

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordSwipe failed due to total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->mSwipeDistanceTotal:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_b
    :goto_3
    return-void
.end method
