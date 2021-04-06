.class public Lcom/oneplus/screenshot/longshot/task/CaptureTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEGREE_0:I = 0x0

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x5a

.field private static final DEGREE_90:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "Longshot.CaptureTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIsFirst:Z

.field private mIsNavgationBarVisiable:Z

.field private mIsStatusbarVisiable:Z

.field private mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRotation:I

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/os/IBinder;ZZZ)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mRotation:I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object p4, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    iput-boolean p5, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    iput-boolean p6, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    iput-boolean p7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CaptureTask , mIsFirst:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Longshot.CaptureTask"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDegreesForRotation(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x5a

    return p1

    :cond_1
    const/16 p1, 0xb4

    return p1

    :cond_2
    const/16 p1, 0x10e

    return p1
.end method

.method private getNavigationBarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/util/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getQuality(F)I
    .locals 0

    float-to-int p1, p1

    return p1
.end method

.method private getStatusbarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v3, p1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start , delay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Longshot.CaptureTask"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, v2, v2, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    const-string v7, "Longshot.capture"

    invoke-static {v7}, Landroidx/core/os/d;->a(Ljava/lang/String;)V

    invoke-static {v3, v5, v6, v2}, Lb/b/b/l/d;->a(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {}, Landroidx/core/os/d;->b()V

    const-string v7, "Longshot.hwBitmap.copy"

    invoke-static {v7}, Landroidx/core/os/d;->a(Ljava/lang/String;)V

    const/4 v7, 0x0

    if-nez v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hwbitmap is null ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {v3, v8, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Landroidx/core/os/d;->b()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getStatusbarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v7

    :goto_0
    iget-boolean v8, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    if-eqz v8, :cond_4

    invoke-direct {p0, v2}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getNavigationBarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_4
    move-object v9, v7

    move-object v7, v3

    move-object v3, v9

    goto :goto_1

    :cond_5
    move-object v3, v7

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capture done w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " h = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mWindowToken:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " cost time:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    if-eqz v0, :cond_0

    const-string v0, "Longshot.CaptureTask"

    const-string v1, "onCaptureFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    invoke-interface {v0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;->onCaptureFinished(Ljava/util/List;)V

    :cond_0
    return-void
.end method
