.class Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ForceRefreshRatePackagelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ForceRefreshRatePackageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mForceRefreshRateListSetting:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/ForceRefreshRatePackageList;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ForceRefreshRatePackageList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->this$0:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-static {p1}, Lcom/android/server/wm/ForceRefreshRatePackageList;->access$000(Lcom/android/server/wm/ForceRefreshRatePackageList;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    nop

    const-string p1, "ext_force_refresh_rate_list"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->mForceRefreshRateListSetting:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getForcePackages()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ext_force_refresh_rate_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public observe()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->mForceRefreshRateListSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->this$0:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-direct {p0}, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->getForcePackages()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/ForceRefreshRatePackageList;->access$100(Lcom/android/server/wm/ForceRefreshRatePackageList;Ljava/lang/String;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->mForceRefreshRateListSetting:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->this$0:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-direct {p0}, Lcom/android/server/wm/ForceRefreshRatePackageList$SettingsObserver;->getForcePackages()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/ForceRefreshRatePackageList;->access$100(Lcom/android/server/wm/ForceRefreshRatePackageList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method