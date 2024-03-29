.class Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;
.super Lcom/android/server/location/SettingsHelper$ObservingSetting;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerSecureSetting"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/location/SettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object p1, p0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->mSettingName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->register()V

    return-void
.end method

.method private register()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getValueForUser(II)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
