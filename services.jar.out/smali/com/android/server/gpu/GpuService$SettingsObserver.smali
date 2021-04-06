.class final Lcom/android/server/gpu/GpuService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "GpuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gpu/GpuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mGameDriverBlackUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    nop

    const-string v0, "game_driver_blacklists"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->mGameDriverBlackUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/server/gpu/GpuService;->access$100(Lcom/android/server/gpu/GpuService;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->mGameDriverBlackUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->mGameDriverBlackUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v0}, Lcom/android/server/gpu/GpuService;->access$200(Lcom/android/server/gpu/GpuService;)V

    iget-object v0, p0, Lcom/android/server/gpu/GpuService$SettingsObserver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v0}, Lcom/android/server/gpu/GpuService;->access$300(Lcom/android/server/gpu/GpuService;)V

    :cond_1
    return-void
.end method
