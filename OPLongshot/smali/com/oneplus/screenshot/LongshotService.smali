.class public Lcom/oneplus/screenshot/LongshotService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/LongshotService$Finisher;,
        Lcom/oneplus/screenshot/LongshotService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final JSON_PARAM_FIND_ATLEAST_ONE_VIEW_VISIBILITY_ONSCREEN_STATUS:Ljava/lang/String; = "findAtleastOneViewVisibilityOnScreenStatus"

.field public static final JSON_PARAM_VIEW_VISIBILITY:Ljava/lang/String; = "viewVisibility"

.field private static final TAG:Ljava/lang/String; = "Longshot.LongshotService"


# instance fields
.field private mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

.field private mTargetViewTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/LongshotService;->mTargetViewTop:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/screenshot/LongshotService;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/screenshot/LongshotService;->mTargetViewTop:I

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "Longshot.LongshotService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lb/b/b/a/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lb/b/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v1, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;-><init>(Lcom/oneplus/screenshot/LongshotService;Landroid/content/Context;ZZ)V

    return-object v1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "Longshot.LongshotService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Longshot.LongshotService"

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->recycle()V

    invoke-static {}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->recycle()V

    invoke-static {}, Lcom/oneplus/screenshot/service/GlobalNotification;->recycle()V

    :try_start_0
    invoke-static {}, Lcom/oneplus/screenshot/StitchViewService;->getInstance()Lcom/oneplus/screenshot/StitchViewService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->disableSelf()V

    const-string v1, "Disabled Accessibility_Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->enableStatusBarKeys(Landroid/content/Context;)V

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "Longshot.LongshotService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "Longshot.LongshotService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
