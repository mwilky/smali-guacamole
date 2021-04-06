.class public Lcom/android/server/wm/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bio:Ljava/lang/String; = "attr"

.field public static final cno:Ljava/lang/String; = "unsupport_drop_activity_list"

.field private static volatile dma:Lcom/android/server/wm/u; = null

.field public static final gck:Ljava/lang/String; = "filter-conf"

.field public static final igw:Ljava/lang/String; = "app_version"

.field public static final kth:Ljava/lang/String; = "item"

.field public static final rtg:Ljava/lang/String; = "support_drag_pkg_list"

.field public static final sis:Ljava/lang/String; = "filter-name"

.field public static final ssp:Ljava/lang/String; = "support_drop_pkg_list"

.field public static final tsu:Ljava/lang/String; = "global_drag_share_switch"

.field public static final wtn:Ljava/lang/String; = "feature_version"

.field public static final you:Ljava/lang/String; = "version"

.field private static final zta:Ljava/lang/String; = "OplusGlobalDragAndDropRUSParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private you(Lorg/xmlpull/v1/XmlPullParser;)Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;
    .locals 3

    new-instance p0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    invoke-direct {p0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;-><init>()V

    :try_start_0
    const-string v0, "attr"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->setAttrStr(Ljava/lang/String;)V

    const-string v0, "app_version"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->setAppVersionCode(I)V

    :cond_0
    const-string v2, "feature_version"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->setFeatureVersionCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse global drag share RUS config item info  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusGlobalDragAndDropRUSParser"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static zta()Lcom/android/server/wm/u;
    .locals 2

    sget-object v0, Lcom/android/server/wm/u;->dma:Lcom/android/server/wm/u;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/u;->dma:Lcom/android/server/wm/u;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/u;

    invoke-direct {v1}, Lcom/android/server/wm/u;-><init>()V

    sput-object v1, Lcom/android/server/wm/u;->dma:Lcom/android/server/wm/u;

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
    sget-object v0, Lcom/android/server/wm/u;->dma:Lcom/android/server/wm/u;

    return-object v0
.end method


# virtual methods
.method public sis(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/u;->you(Lorg/xmlpull/v1/XmlPullParser;)Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public tsu(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;

    const/4 v1, 0x0

    const-string v2, "item"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAttrStr()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attr"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAppVersionCode()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getAppVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_version"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getFeatureVersionCode()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfigItem;->getFeatureVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "feature_version"

    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "OplusGlobalDragAndDropRUSParser"

    const-string p1, "Failed to writeConfigFile: list is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
