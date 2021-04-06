.class public Lcom/android/server/wm/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bio:Ljava/lang/String; = "/system_ext/oplus/"

.field private static final bvj:I = 0x1388

.field private static cno:Z = true

.field private static final dma:Ljava/lang/String; = "sys_global_drag_share_config.xml"

.field private static final gck:Ljava/lang/String; = ".xml"

.field private static volatile ibl:Lcom/android/server/wm/t; = null

.field private static final igw:Ljava/lang/String; = "/data/oplus/oneplus/config/"

.field public static final kth:I = 0x1

.field private static final oif:Ljava/lang/String; = "oplus.wms.global_drag_share.disable"

.field private static final qbh:Ljava/lang/String; = "/data/oplus/oneplus/config/sys_global_drag_share_config.xml"

.field private static final ssp:Ljava/lang/String; = "OplusGlobalDragAndDropRUSConfigManager"

.field private static final wtn:Ljava/lang/String; = "sys_global_drag_share_config"

.field private static final ywr:Ljava/lang/String; = "/system_ext/oplus/sys_global_drag_share_config.xml"


# instance fields
.field private rtg:Ljava/lang/Runnable;

.field private final sis:Ljava/lang/Object;

.field private tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

.field private you:Landroid/os/Handler;

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/t;->zta:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/t;->sis:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-direct {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    new-instance v0, Lcom/android/server/wm/t$zta;

    invoke-direct {v0, p0}, Lcom/android/server/wm/t$zta;-><init>(Lcom/android/server/wm/t;)V

    iput-object v0, p0, Lcom/android/server/wm/t;->rtg:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/t;->you:Landroid/os/Handler;

    return-void
.end method

.method private bvj()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/t;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/t;->ibl(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private gck(Ljava/io/File;Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V
    .locals 11

    const-string p0, "Failed to close!"

    const-string v0, "OplusGlobalDragAndDropRUSConfigManager"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "unsupport_drop_activity_list"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v6, v8

    goto :goto_0

    :sswitch_1
    const-string v7, "version"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_2
    const-string v7, "support_drag_pkg_list"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v6, v10

    goto :goto_0

    :sswitch_3
    const-string v7, "filter-name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v6, v3

    goto :goto_0

    :sswitch_4
    const-string v7, "support_drop_pkg_list"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v6, v9

    goto :goto_0

    :sswitch_5
    const-string v7, "global_drag_share_switch"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v6, v4

    :cond_1
    :goto_0
    if-eqz v6, :cond_7

    if-eq v6, v3, :cond_6

    if-eq v6, v4, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/wm/u;->zta()Lcom/android/server/wm/u;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/u;->sis(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->setUnSupportCpnList(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/server/wm/u;->zta()Lcom/android/server/wm/u;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/u;->sis(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->setSupportDropPkgList(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/wm/u;->zta()Lcom/android/server/wm/u;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/u;->sis(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->setSupportDragPkgList(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->setGlobalDragShareSwitch(Z)V

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->setFilterName(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->setVersion(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_1
    if-ne v1, v3, :cond_0

    :try_start_3
    instance-of p2, p1, Ljava/io/Closeable;

    if-eqz p2, :cond_9

    check-cast p1, Ljava/io/Closeable;

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    :cond_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v2, v1

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v2, v1

    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    instance-of p1, v1, Ljava/io/Closeable;

    if-eqz p1, :cond_a

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_3
    return-void

    :catchall_2
    move-exception p2

    :goto_4
    :try_start_6
    instance-of p1, v1, Ljava/io/Closeable;

    if-eqz p1, :cond_c

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_5
    throw p2

    :sswitch_data_0
    .sparse-switch
        -0x58fea8dd -> :sswitch_5
        -0x39b5adef -> :sswitch_4
        -0x37cec440 -> :sswitch_3
        0xb33916c -> :sswitch_2
        0x14f51cd8 -> :sswitch_1
        0x43820a47 -> :sswitch_0
    .end sparse-switch
.end method

.method public static rtg()Lcom/android/server/wm/t;
    .locals 2

    sget-object v0, Lcom/android/server/wm/t;->ibl:Lcom/android/server/wm/t;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/t;->ibl:Lcom/android/server/wm/t;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/t;

    invoke-direct {v1}, Lcom/android/server/wm/t;-><init>()V

    sput-object v1, Lcom/android/server/wm/t;->ibl:Lcom/android/server/wm/t;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/t;->ibl:Lcom/android/server/wm/t;

    return-object v0
.end method

.method private ssp(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;)Z
    .locals 7

    const/4 p0, 0x0

    const-string v0, "OplusGlobalDragAndDropRUSConfigManager"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAttrStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAppVersionCode()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_5

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-nez v1, :cond_1

    const-string p1, "Failed to get PackageManagerInternal"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check the version limit for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAttrStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAttrStr()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v1, v3, p0, v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p1, "Failed to getPackageInfo: packageInfo is null"

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageInfo.getLongVersionCode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAppVersionCode()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, p0

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    :goto_2
    const-string v3, "GLOBAL_DRAG_SHARE_FEATURE_VERSION = 1"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getFeatureVersionCode()I

    move-result v3

    if-lt v2, v3, :cond_6

    if-eqz v1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this app is meet policy limit: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAttrStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    return p0

    :cond_7
    :goto_3
    const-string p1, "This tag of OplusGlobalDragAndDropRUSConfigItem is null"

    goto/16 :goto_0
.end method

.method private you(Ljava/lang/String;)Z
    .locals 1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Config file in path :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not exists!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusGlobalDragAndDropRUSConfigManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/t;->bvj()V

    return-void
.end method


# virtual methods
.method public bio(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getSupportDragPkgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getSupportDragPkgList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    invoke-virtual {v1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAttrStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wm/t;->ssp(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const-string p0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string p1, "isInSupportGlobalDragPkgList list is null!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public cno(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/t;->cno:Z

    if-eqz v0, :cond_0

    const-string v0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oplus.wms.global_drag_share.disable"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/t;->zta:Z

    iget-object p1, p0, Lcom/android/server/wm/t;->sis:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/t;->dma()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/wm/t;->cno:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mColorGlobalDragRUSConfig: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {p0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusGlobalDragAndDropRUSConfigManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dma()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/t;->cno:Z

    const-string v1, "OplusGlobalDragAndDropRUSConfigManager"

    if-eqz v0, :cond_0

    const-string v0, "readGlobalDragConfig start"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-direct {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/t;->sis()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "confirmOplusConfigDir failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "/system_ext/oplus/sys_global_drag_share_config.xml"

    invoke-direct {p0, v2}, Lcom/android/server/wm/t;->you(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "default file not exit!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const-string v0, "/data/oplus/oneplus/config/sys_global_drag_share_config.xml"

    invoke-direct {p0, v0}, Lcom/android/server/wm/t;->you(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/t;->ywr(Ljava/lang/String;)Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/t;->ywr(Ljava/lang/String;)Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    move-result-object p0

    :goto_0
    sget-boolean v0, Lcom/android/server/wm/t;->cno:Z

    if-eqz v0, :cond_4

    const-string v0, "readGlobalDragConfig end"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p0
.end method

.method public ibl(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V
    .locals 16

    const-string v1, "unsupport_drop_activity_list"

    const-string v2, "support_drop_pkg_list"

    const-string v3, "support_drag_pkg_list"

    const-string v4, "global_drag_share_switch"

    const-string v5, "filter-name"

    const-string v6, "version"

    const-string v7, "filter-conf"

    const-string v8, "failed write file "

    const-string v9, "failed close stream "

    const-string v10, "OplusGlobalDragAndDropRUSConfigManager"

    const-string v0, "writeGlobalDragShareConfigFile start path:/data/oplus/oneplus/config/sys_global_drag_share_config.xml"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/t;->sis()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirmOplusConfigDir failed!"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to writeGlobalDragShareConfigFile path:/data/oplus/oneplus/config/sys_global_drag_share_config.xml"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v11, Ljava/io/File;

    const-string v0, "/data/oplus/oneplus/config/sys_global_drag_share_config.xml"

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed create file /data/oplus/oneplus/config/sys_global_drag_share_config.xml"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed create file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v13

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v12, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v13, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getVersion()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getFilterName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getGlobalDragShareSwitch()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/u;->zta()Lcom/android/server/wm/u;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getSupportDragPkgList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lcom/android/server/wm/u;->tsu(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    invoke-interface {v13, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/u;->zta()Lcom/android/server/wm/u;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getSupportDropPkgList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Lcom/android/server/wm/u;->tsu(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/u;->zta()Lcom/android/server/wm/u;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lcom/android/server/wm/u;->tsu(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    invoke-interface {v13, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v0, v12}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_3

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v11, v12

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v11, v12

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v11, v12

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v11, v12

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v11, v12

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    :goto_1
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v11, :cond_3

    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_6

    :catch_7
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_8
    move-exception v0

    :goto_2
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v11, :cond_3

    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_6

    :catch_9
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_a
    move-exception v0

    :goto_3
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v11, :cond_3

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_c
    move-exception v0

    :goto_4
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v11, :cond_3

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_6

    :catch_d
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_6
    return-void

    :goto_7
    if-eqz v11, :cond_4

    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e

    goto :goto_8

    :catch_e
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_8
    throw v1
.end method

.method public igw(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getSupportDropPkgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getSupportDropPkgList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    invoke-virtual {v1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAttrStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wm/t;->ssp(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const-string p0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string p1, "isInSupportGlobalDropPkgList list is null!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public kth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/t;->zta:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {p0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getGlobalDragShareSwitch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public oif(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/t;->cno:Z

    if-eqz v0, :cond_0

    const-string v0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string v1, "settGlobalDragAndDropRUSConfig start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/t;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    sget-boolean v1, Lcom/android/server/wm/t;->cno:Z

    if-eqz v1, :cond_1

    const-string v1, "OplusGlobalDragAndDropRUSConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settGlobalDragAndDropRUSConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {v3}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/t;->qbh(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/wm/t;->cno:Z

    if-eqz p0, :cond_2

    const-string p0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string p1, "setGlobalDragAndDropRUSConfig end"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public qbh(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V
    .locals 2

    const-string v0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string v1, "scheduleWriteConfig start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    iget-object p1, p0, Lcom/android/server/wm/t;->you:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/t;->rtg:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/t;->you:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/t;->rtg:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public sis()Z
    .locals 2

    new-instance p0, Ljava/io/File;

    const-string v0, "/data/oplus/oneplus/config/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string v1, "mkdir for path: /data/oplus/oneplus/config/"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "mkdir failed for path: /data/oplus/oneplus/config/"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public tsu()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/t;->cno:Z

    if-eqz v0, :cond_0

    const-string v0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string v1, "getGlobalDragAndDropRUSConfig start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/t;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public wtn(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/t;->tsu:Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    invoke-virtual {v2}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAttrStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wm/t;->ssp(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;)Z

    move-result p0

    return p0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p0, "OplusGlobalDragAndDropRUSConfigManager"

    const-string p1, "isInUnSupportGlobalDropCpnList list is null!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public ywr(Ljava/lang/String;)Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .locals 5

    new-instance v0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-direct {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "OplusGlobalDragAndDropRUSConfigManager"

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No config file in path:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "readGlobalDragConfigFile failed!"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readGlobalDragConfigFile start in path:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/t;->gck(Ljava/io/File;Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V

    return-object v0
.end method
