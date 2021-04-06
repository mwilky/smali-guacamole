.class Lcom/oneplus/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "Longshot.SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field private deleteIntent:Landroid/app/PendingIntent;

.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private mImageHeight:I

.field private mImageTime:J

.field private mImageWidth:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

.field private mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mRecycleBitmap:Z

.field private mScreenshotDir:Ljava/io/File;

.field private screenBitmapWkRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private viewIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;Landroid/graphics/Bitmap;Z)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    iput v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iput v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    iput-object v9, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v9, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->uri:Landroid/net/Uri;

    iput-boolean v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mRecycleBitmap:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v3, p4

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->screenBitmapWkRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/graphics/Bitmap;

    const-string v12, "Longshot.SaveImageInBackgroundTask"

    const/4 v13, 0x1

    if-nez v11, :cond_0

    const-string v0, "image save task cancelled due to screen bitmap null"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v13}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void

    :cond_0
    sget-wide v2, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotBeginTime:J

    iput-wide v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/oneplus/screenshot/GlobalScreenshot;->mLastImageTime:J

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd-HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_mode_status"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v9

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top Activity component info isNull :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_2

    move v6, v13

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Screenshot_%s.png"

    if-eqz v3, :cond_3

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/oneplus/screenshot/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "package name = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-array v3, v13, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenshot name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Screenshots"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v3, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    iget v14, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    iget v2, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    iget v3, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const v16, 0x40ffffff    # 7.9999995f

    iget v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const v17, 0x40ffffff    # 7.9999995f

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v4, v6

    move-object v5, v15

    move-object v9, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v17

    int-to-float v0, v14

    iget v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {v9, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-virtual {v9, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v14

    move v3, v14

    move-object v4, v9

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-boolean v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/2addr v1, v13

    sput-boolean v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    move-object/from16 v1, p3

    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-static/range {v17 .. v17}, Lb/b/b/f/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    iput-object v3, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "SCN"

    invoke-direct {v3, v8, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f100092

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v6, 0x7f100090

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v9, 0x7f0801f2

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v11, "progress"

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v11, 0x7f0601f9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v8, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f100091

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v8, :cond_4

    const-string v8, " "

    goto :goto_3

    :cond_4
    const-string v8, ""

    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v2, 0x20

    invoke-static {v1, v2, v13}, Lb/b/b/a/b;->a(Landroid/app/Notification$Builder;IZ)Landroid/app/Notification$Builder;

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    sget v2, Lb/b/b/i/a/a;->a:I

    iget-object v3, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Lb/b/b/f/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move/from16 v0, p5

    iput-boolean v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mRecycleBitmap:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is to recycle Bitmap enabled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mRecycleBitmap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p2, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22

    move-object/from16 v1, p0

    const-string v2, ".png"

    const-string v3, "\\."

    const-string v4, "image/png"

    const-string v5, "mime_type"

    const-string v6, "_display_name"

    const-string v7, "title"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saving image, "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    array-length v8, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", time:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Longshot.SaveImageInBackgroundTask"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    return-object v9

    :cond_0
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v10, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v11, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-nez v11, :cond_1

    const-string v0, "image is null"

    :goto_0
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_1
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "image is recycled"

    goto :goto_0

    :cond_2
    :try_start_0
    iget-wide v13, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    sget-boolean v15, Lcom/oneplus/screenshot/longshot/util/Configs;->isEncryptImage:Z

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v16, v12

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v0, "external_primary"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v17, v10

    const-string v10, "relative_path"

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Screenshots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v9, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v9, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    move-object v3, v6

    move-object v10, v7

    iget-wide v6, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_added"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "width"

    iget v6, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "height"

    iget v6, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "is_pending"

    const/4 v6, 0x1

    if-eqz v15, :cond_3

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {v12, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "screenshot name = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_4

    const-string v0, "w"

    invoke-virtual {v12, v7, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v11, v13, v14, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v13, "compress end"

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_4
    const-string v0, "Failed to create new MediaStore record"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "filepath = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  , uri\'s filepath :"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v13, "image/png"

    const/4 v14, 0x0

    if-eqz v15, :cond_6

    :try_start_2
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v6, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v19, v11

    :try_start_3
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v20, v4

    aget-object v4, v0, v14

    invoke-direct {v11, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, ".png"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuffer;

    aget-object v0, v0, v14

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, v18

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " delete file s"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    move/from16 v18, v15

    iget-object v15, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v21, v11

    iget-object v11, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v0, v15, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    const-string v0, " delete file e"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v11, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    aget-object v6, v6, v11

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    invoke-virtual {v12, v7, v9, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "doencrypt s"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sImeiNumber:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oneplus/screenshot/Native;->doencrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "doencrypt e"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v20, v4

    move-object/from16 v19, v11

    move/from16 v18, v15

    move v2, v6

    :goto_3
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lcom/oneplus/screenshot/SaveImageInBackgroundTask$1;

    invoke-direct {v2, v1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask$1;-><init>(Lcom/oneplus/screenshot/SaveImageInBackgroundTask;)V

    move-object/from16 v3, v17

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-wide v4, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Screenshot (%s)"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v18, :cond_7

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_7
    move-object/from16 v4, v20

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, -0x7fffff3d

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x50000000

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v2, v6, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-static {v3, v5, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v5, Landroid/app/Notification$Action$Builder;

    const v6, 0x7f0800b0

    const v9, 0x7f10006b

    move-object/from16 v10, v16

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android:screenshot_uri_id"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Action$Builder;

    const v4, 0x7f0800af

    const v5, 0x7f100068

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v4, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iput-object v7, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const/4 v4, 0x0

    iput v4, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    iput-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v19, v11

    :goto_5
    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const v3, 0x7f10008c

    iput v3, v2, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    const-string v2, "save img error"

    invoke-static {v8, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v2, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finshRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget-boolean v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mRecycleBitmap:Z

    if-eqz v0, :cond_9

    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    const-string v0, "saving image end "

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getErrorMsgResId()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getViewIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    sget-boolean p1, Lcom/oneplus/screenshot/longshot/util/Configs;->isSmallScreenVisible:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSmallScreenVisible ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isSmallScreenVisible:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Longshot.SaveImageInBackgroundTask"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "onCancelled"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    sget v0, Lb/b/b/i/a/a;->a:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finshRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save img done, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Longshot.SaveImageInBackgroundTask"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v1, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    iget-object p1, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1, v2, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v3, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->isEncryptImage:Z

    if-eqz v4, :cond_1

    const-string v4, "image/png"

    goto :goto_0

    :cond_1
    const-string v4, "image/png"

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v3, -0x6fff7fbd

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "load_media_set"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    const v7, 0x7f10008f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v8, 0x7f10008e

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v9, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v9, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v9, 0x7f0601f9

    invoke-virtual {p1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v3, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v3, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p1, v9}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v1, 0x20

    invoke-static {p1, v1, v10}, Lb/b/b/a/b;->a(Landroid/app/Notification$Builder;IZ)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lb/b/b/i/a/a;->a:I

    iget-object v2, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSmallScreenVisible ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isSmallScreenVisible:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-boolean v1, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finishAfterSave:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isSmallScreenVisible:Z

    if-nez v1, :cond_2

    iget-object p1, p1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const-string p1, "after save image run finisher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method
