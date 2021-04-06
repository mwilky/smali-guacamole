.class public Lcom/oneplus/screenshot/service/GlobalSave;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;


# static fields
.field private static final M_LOCK:Ljava/lang/Object;

.field private static final NOTIFICATION_ID_REPEAT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCachable:Lcom/oneplus/screenshot/util/Cachable;

.field private mContext:Landroid/content/Context;

.field private mNavibar:Landroid/graphics/Bitmap;

.field private mNotificationId:I

.field private mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/screenshot/service/GlobalSave;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->M_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/oneplus/screenshot/ScreenshotApplication;

    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {p1}, Lcom/oneplus/screenshot/util/Cachable;->getNaviBar()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNavibar:Landroid/graphics/Bitmap;

    return-void
.end method

.method private nextNotificationId()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private onFinished()V
    .locals 3

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    sget-object v1, Lcom/oneplus/screenshot/service/GlobalSave;->M_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v2}, Lcom/oneplus/screenshot/util/Cachable;->clearCache()V

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/oneplus/screenshot/service/GlobalNotification;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onSaveCancelled()V
    .locals 2

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->onFinished()V

    return-void
.end method

.method public onSaveFinished()V
    .locals 2

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->onFinished()V

    return-void
.end method

.method public start()V
    .locals 10

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->nextNotificationId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->M_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v1}, Lcom/oneplus/screenshot/util/Cachable;->getCache()Ljava/util/List;

    move-result-object v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/oneplus/screenshot/service/SaveTask;

    iget-object v6, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    iget-object v9, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNavibar:Landroid/graphics/Bitmap;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/screenshot/service/SaveTask;-><init>(Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;Landroid/content/Context;Ljava/util/List;ILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
