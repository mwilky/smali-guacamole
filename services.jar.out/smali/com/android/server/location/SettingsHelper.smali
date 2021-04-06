.class public Lcom/android/server/location/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;,
        Lcom/android/server/location/SettingsHelper$LongGlobalSetting;,
        Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;,
        Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;,
        Lcom/android/server/location/SettingsHelper$ObservingSetting;,
        Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;,
        Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_COARSE_LOCATION_ACCURACY_M:F = 2000.0f

.field private static final LOCATION_PACKAGE_BLACKLIST:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final LOCATION_PACKAGE_WHITELIST:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field private final mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

.field private final mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

.field private final mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

.field private final mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

.field private final mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    const-string/jumbo v1, "location_mode"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    new-instance v0, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    const-string/jumbo v1, "location_background_throttle_interval_ms"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    new-instance v0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    const-string/jumbo v1, "locationPackagePrefixBlacklist"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    new-instance v0, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    const-string/jumbo v1, "locationPackagePrefixWhitelist"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    new-instance v6, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    sget-object v3, Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;->INSTANCE:Lcom/android/server/location/-$$Lambda$SettingsHelper$DVmNGa9ypltgL35WVwJuSTIxRS8;

    const-string/jumbo v2, "location_background_throttle_package_whitelist"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v6, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    new-instance v6, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    sget-object v3, Lcom/android/server/location/-$$Lambda$SettingsHelper$Ez8giHaZAPYwS7zICeUtrlXPpBo;->INSTANCE:Lcom/android/server/location/-$$Lambda$SettingsHelper$Ez8giHaZAPYwS7zICeUtrlXPpBo;

    const-string/jumbo v2, "location_ignore_settings_package_whitelist"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/server/location/SettingsHelper$1;)V

    iput-object v6, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    return-void
.end method

.method static synthetic lambda$new$0()Landroid/util/ArraySet;
    .locals 1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1()Landroid/util/ArraySet;
    .locals 1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public addOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->addListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "Location Enabled: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v2, v1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Location Blacklisted Packages:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v3, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v3, v1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Location Whitelisted Packages:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_2
    iget-object v3, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v3}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Throttling Whitelisted Packages:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4
    iget-object v4, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v4}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Bypass Whitelisted Packages:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_6
    return-void
.end method

.method public getBackgroundThrottleIntervalMs()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->getValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundThrottlePackageWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundThrottleProximityAlertIntervalMs()J
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_background_throttle_proximity_alert_interval_ms"

    const-wide/32 v4, 0x1b7740

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCoarseLocationAccuracyM()F
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "locationCoarseAccuracy"

    const/high16 v4, 0x44fa0000    # 2000.0f

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

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

.method public getIgnoreSettingsPackageWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isLocationEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->getValueForUser(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLocationPackageBlacklisted(ILjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    return v2

    :cond_3
    goto :goto_1

    :cond_4
    return v2
.end method

.method public onSystemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    invoke-static {v0}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->access$400(Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;)V

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringListCachedSecureSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->register()V

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->register()V

    return-void
.end method

.method public removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/SettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$LongGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mIgnoreSettingsPackageWhitelist:Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$StringSetCachedGlobalSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public removeOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/SettingsHelper;->mLocationMode:Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper$IntegerSecureSetting;->removeListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    return-void
.end method

.method public setLocationEnabled(ZI)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    if-eqz p1, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;ZI)V
    .locals 6

    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_providers_allowed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v5, "+"

    goto :goto_0

    :cond_1
    const-string v5, "-"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_2
    :goto_1
    return-void
.end method
