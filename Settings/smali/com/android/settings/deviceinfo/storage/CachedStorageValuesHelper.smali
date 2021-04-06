.class public Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;
.super Ljava/lang/Object;
.source "CachedStorageValuesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;
    }
.end annotation


# static fields
.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "CachedStorageValues"


# instance fields
.field private final mClobberThreshold:Ljava/lang/Long;

.field protected mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CachedStorageValues"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    iput p2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string p2, "storage_settings_clobber_threshold"

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    return-void
.end method

.method private isDataValid()Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide v3, 0x7fffffffffffffffL

    const-string v1, "last_query_timestamp"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v3, v0

    if-gez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public cacheResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    const-string v3, "free_bytes"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    const-string p1, "total_bytes"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    const-string v2, "game_apps_size"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    const-string v2, "music_apps_size"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    const-string/jumbo v2, "video_apps_size"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    const-string v2, "photo_apps_size"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    const-string v2, "other_apps_size"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    const-string v2, "cache_apps_size"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    const-string v2, "external_total_bytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    const-string v2, "external_audio_bytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    const-string v2, "external_video_bytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    const-string v2, "external_image_bytes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, p2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    const-string p2, "external_apps_bytes"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    const-string/jumbo v0, "user_id"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v0

    const-string p0, "last_query_timestamp"

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getCachedAppsStorageResult()Landroid/util/SparseArray;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "game_apps_size"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "music_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "video_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "photo_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "other_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cache_apps_size"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v16, 0x0

    cmp-long v1, v6, v16

    if-ltz v1, :cond_4

    cmp-long v1, v8, v16

    if-ltz v1, :cond_4

    cmp-long v1, v10, v16

    if-ltz v1, :cond_4

    cmp-long v1, v12, v16

    if-ltz v1, :cond_4

    cmp-long v1, v14, v16

    if-ltz v1, :cond_4

    cmp-long v1, v2, v16

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v18, v2

    const-string v2, "external_total_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "external_audio_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "external_video_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v25

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "external_image_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v27

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "external_apps_bytes"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v29

    cmp-long v1, v21, v16

    if-ltz v1, :cond_3

    cmp-long v1, v23, v16

    if-ltz v1, :cond_3

    cmp-long v1, v25, v16

    if-ltz v1, :cond_3

    cmp-long v1, v27, v16

    if-ltz v1, :cond_3

    cmp-long v1, v29, v16

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v30}, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;-><init>(JJJJJ)V

    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    iput-wide v6, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iput-wide v8, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    iput-wide v10, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    iput-wide v12, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    iput-wide v14, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    move-wide/from16 v3, v18

    iput-wide v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    iput-object v1, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget v0, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCachedPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 9

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "free_bytes"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "total_bytes"

    invoke-interface {p0, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-ltz p0, :cond_2

    cmp-long p0, v2, v7

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {p0, v5, v6, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method
