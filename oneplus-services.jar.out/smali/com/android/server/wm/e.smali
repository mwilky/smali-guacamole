.class public Lcom/android/server/wm/e;
.super Lcom/android/server/wm/fto;
.source ""


# static fields
.field private static final rtg:Ljava/lang/String; = "landscape_height"

.field private static final sis:Ljava/lang/String; = "portrait_height"

.field private static volatile ssp:Lcom/android/server/wm/e; = null

.field private static final tsu:Ljava/lang/String; = "landscape_width"

.field private static final you:Ljava/lang/String; = "portrait_width"

.field private static final zta:Ljava/lang/String; = "ColorZoomWindowSizeParser"


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

.method public static sis()Lcom/android/server/wm/e;
    .locals 2

    sget-object v0, Lcom/android/server/wm/e;->ssp:Lcom/android/server/wm/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/e;->ssp:Lcom/android/server/wm/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/e;

    invoke-direct {v1}, Lcom/android/server/wm/e;-><init>()V

    sput-object v1, Lcom/android/server/wm/e;->ssp:Lcom/android/server/wm/e;

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
    sget-object v0, Lcom/android/server/wm/e;->ssp:Lcom/android/server/wm/e;

    return-object v0
.end method


# virtual methods
.method public tsu(Lorg/xmlpull/v1/XmlPullParser;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getOplusZoomWindowSize()Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    move-result-object p0

    :try_start_0
    const-string p2, "portrait_width"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "portrait_height"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "landscape_width"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "landscape_height"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;->setZoomWindowSize(IIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse zoom window size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorZoomWindowSizeParser"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getOplusZoomWindowSize()Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;->getPortraitWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "portrait_width"

    invoke-interface {p1, p3, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;->getPortraitHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "portrait_height"

    invoke-interface {p1, p3, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;->getLandScapeWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "landscape_width"

    invoke-interface {p1, p3, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;->getLandScapeHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "landscape_height"

    invoke-interface {p1, p3, p2, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
