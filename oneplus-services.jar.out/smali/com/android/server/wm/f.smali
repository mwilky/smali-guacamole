.class public Lcom/android/server/wm/f;
.super Lcom/android/server/wm/fto;
.source ""


# static fields
.field private static final rtg:Ljava/lang/String; = "feature_version"

.field private static final sis:Ljava/lang/String; = "pkg"

.field private static volatile ssp:Lcom/android/server/wm/f; = null

.field private static final tsu:Ljava/lang/String; = "app_version"

.field private static final you:Ljava/lang/String; = "item"

.field private static final zta:Ljava/lang/String; = "ColorZoomWindowVersionLimitPkgListParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/fto;-><init>()V

    return-void
.end method

.method public static sis()Lcom/android/server/wm/f;
    .locals 2

    sget-object v0, Lcom/android/server/wm/f;->ssp:Lcom/android/server/wm/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/f;->ssp:Lcom/android/server/wm/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/f;

    invoke-direct {v1}, Lcom/android/server/wm/f;-><init>()V

    sput-object v1, Lcom/android/server/wm/f;->ssp:Lcom/android/server/wm/f;

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
    sget-object v0, Lcom/android/server/wm/f;->ssp:Lcom/android/server/wm/f;

    return-object v0
.end method

.method private tsu(Lorg/xmlpull/v1/XmlPullParser;)Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;
    .locals 4

    new-instance p0, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    invoke-direct {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;-><init>()V

    :try_start_0
    const-string v0, "pkg"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_version"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "feature_version"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->setPkg(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->setAppVersionCode(I)V

    invoke-virtual {p0, p1}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->setFeatureVersionCode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse zoom support app info  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowVersionLimitPkgListParser"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object p0
.end method


# virtual methods
.method public rtg(Lorg/xmlpull/v1/XmlPullParser;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/c;->rtg()Lcom/android/server/wm/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/c;->ssp(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "ColorZoomWindowVersionLimitPkgListParser"

    const-string p1, "Failed to getLimitPkgListByTag: list is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p3

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p3, :cond_4

    :cond_2
    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/f;->tsu(Lorg/xmlpull/v1/XmlPullParser;)Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public ssp(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/c;->rtg()Lcom/android/server/wm/c;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/c;->ssp(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    const/4 v0, 0x0

    const-string v1, "item"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p3}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p3}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getAppVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p3}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getFeatureVersionCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "feature_version"

    invoke-interface {p1, v0, v2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p0, "ColorZoomWindowVersionLimitPkgListParser"

    const-string p1, "Failed to getLimitPkgListByTag: list is empty"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
