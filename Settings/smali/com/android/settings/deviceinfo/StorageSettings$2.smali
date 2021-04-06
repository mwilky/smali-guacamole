.class Lcom/android/settings/deviceinfo/StorageSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private isExternalExist(Landroid/content/Context;)Z
    .locals 8

    const-class p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v3

    :cond_3
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    iget v4, v2, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v4, :cond_4

    iget-wide v4, v2, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    return v3

    :cond_5
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v4

    if-ne v4, v3, :cond_6

    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eq v1, v3, :cond_8

    move v0, v3

    :cond_8
    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$2;->isExternalExist(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "storage_settings"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "storage_settings_internal_storage"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "storage_settings_memory_size"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "storage_settings_memory_available"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "storage_settings_dcim_space"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "storage_settings_music_space"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "storage_settings_misc_space"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "storage_settings_free_space"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageSettings;->access$000(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage_settings_volume_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->internal_storage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "storage_settings_internal_storage"

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/StorageSettings;->access$000(Landroid/os/storage/VolumeInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storage_settings_volume_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget v2, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->memory_size:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "storage_settings_memory_size"

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->memory_available:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "storage_settings_memory_available"

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->memory_dcim_usage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "storage_settings_dcim_space"

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->memory_music_usage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "storage_settings_music_space"

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->memory_media_misc_usage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "storage_settings_misc_space"

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->storage_menu_free:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v0, "storage_settings_free_space"

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->storage_menu_free:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    iput-object v0, p2, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->keywords_storage_menu_free:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$2;->isExternalExist(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
