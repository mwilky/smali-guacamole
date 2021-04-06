.class public Lcom/android/server/wm/b;
.super Lcom/android/server/wm/fto;
.source ""


# static fields
.field private static volatile sis:Lcom/android/server/wm/b; = null

.field private static final you:Ljava/lang/String; = "pkg"

.field private static final zta:Ljava/lang/String; = "ColorZoomWindowRUSConfigManager"


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

.method public static sis()Lcom/android/server/wm/b;
    .locals 2

    sget-object v0, Lcom/android/server/wm/b;->sis:Lcom/android/server/wm/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/b;->sis:Lcom/android/server/wm/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/b;

    invoke-direct {v1}, Lcom/android/server/wm/b;-><init>()V

    sput-object v1, Lcom/android/server/wm/b;->sis:Lcom/android/server/wm/b;

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
    sget-object v0, Lcom/android/server/wm/b;->sis:Lcom/android/server/wm/b;

    return-object v0
.end method


# virtual methods
.method public you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "support_pkg_list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getPkgList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "support_reply_pkg_list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getReplyPkgList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "unsupport_pkg_list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportPkgList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v0, "forced_show_toast_pkg_list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedShowToastPkgList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string v0, "not_show_toast_pkg_list"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getNotShowToastPkgList()Ljava/util/List;

    move-result-object p0

    :cond_5
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    const/4 p3, 0x0

    const-string v0, "pkg"

    invoke-interface {p1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_2
    const-string p0, "ColorZoomWindowRUSConfigManager"

    const-string p1, "Failed to writeXMLFile: var is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public zta(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_3

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
