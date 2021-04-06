.class public Lcom/android/server/wm/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bio:Ljava/lang/String; = "sys_zoom_window_config"

.field private static volatile bud:Lcom/android/server/wm/c; = null

.field public static final bvj:Ljava/lang/String; = "support_pkg_list"

.field private static final cgv:Ljava/lang/String; = "filter-conf"

.field public static final cjf:Ljava/lang/String; = "unrelaunch_zoom_cpn_list"

.field private static final cno:Ljava/lang/String; = "/system_ext/oplus/"

.field private static final dma:Ljava/lang/String; = "/data/oplus/oneplus/zoom/sys_zoom_window_config.xml"

.field public static final ear:Ljava/lang/String; = "forced_relaunch_zoom_cpn_list"

.field public static final fto:Ljava/lang/String; = "exclude_touch_region"

.field private static final gck:Ljava/lang/String; = "/system_ext/oplus/sys_zoom_window_config.xml"

.field public static final gwm:Ljava/lang/String; = "unsupport_pkg_list"

.field public static final hmo:Ljava/lang/String; = "zoom_window_size"

.field public static final ibl:Ljava/lang/String; = "support_reply_pkg_list"

.field private static final igw:Ljava/lang/String; = ".xml"

.field public static final ire:Ljava/lang/String; = "corner_radius"

.field private static final kth:Ljava/lang/String; = "/data/oplus/oneplus/zoom/"

.field public static final lqr:Ljava/lang/String; = "version_limit_pkg_list"

.field public static final obl:Ljava/lang/String; = "unsupport_zoom_cpn_list"

.field public static final oif:Ljava/lang/String; = "show_toast_switch"

.field public static final oxb:Ljava/lang/String; = "unreused_zoom_cpn_list"

.field public static final qbh:Ljava/lang/String; = "zoom_window_switch"

.field protected static final rtg:Ljava/lang/String; = "ColorZoomWindowRUSConfigManager"

.field private static ssp:Z = false

.field public static final ugm:Ljava/lang/String; = "forced_show_toast_pkg_list"

.field public static final vdb:Ljava/lang/String; = "not_show_toast_pkg_list"

.field public static final veq:Ljava/lang/String; = "version_limit_reply_pkg_list"

.field private static final vju:I = 0x1388

.field private static final wtn:Ljava/lang/String; = "sys_zoom_window_config.xml"

.field public static final ywr:Ljava/lang/String; = "version"

.field public static final zgw:Ljava/lang/String; = "support_zoom_cpn_list"


# instance fields
.field private sis:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

.field private tsu:Ljava/lang/Runnable;

.field private final you:Ljava/lang/Object;

.field private zta:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/IColorZoomWindowManager;->sDebugfDetail:Z

    sput-boolean v0, Lcom/android/server/wm/c;->ssp:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/c;->you:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/c;->sis:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    new-instance v0, Lcom/android/server/wm/c$zta;

    invoke-direct {v0, p0}, Lcom/android/server/wm/c$zta;-><init>(Lcom/android/server/wm/c;)V

    iput-object v0, p0, Lcom/android/server/wm/c;->tsu:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/c;->zta:Landroid/os/Handler;

    return-void
.end method

.method private igw(Ljava/io/File;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 10

    const-string p0, "Failed to close!"

    const-string v0, "ColorZoomWindowRUSConfigManager"

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

    if-ne v1, v4, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "version_limit_reply_pkg_list"

    const-string v9, "version_limit_pkg_list"

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_3
    const-string v4, "forced_relaunch_zoom_cpn_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "exclude_touch_region"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "unrelaunch_zoom_cpn_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "zoom_window_size"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "support_pkg_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "support_zoom_cpn_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "version"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto/16 :goto_1

    :sswitch_7
    const-string v7, "show_toast_switch"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "corner_radius"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xd

    goto :goto_1

    :sswitch_9
    const-string v4, "zoom_window_switch"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :sswitch_a
    const-string v4, "forced_show_toast_pkg_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_b
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x11

    goto :goto_1

    :sswitch_c
    const-string v4, "not_show_toast_pkg_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_d
    const-string v4, "unreused_zoom_cpn_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    goto :goto_1

    :sswitch_e
    const-string v4, "unsupport_zoom_cpn_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    goto :goto_1

    :sswitch_f
    const-string v4, "support_reply_pkg_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_10
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    goto :goto_1

    :sswitch_11
    const-string v4, "unsupport_pkg_list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, Lcom/android/server/wm/f;->sis()Lcom/android/server/wm/f;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v8}, Lcom/android/server/wm/f;->rtg(Lorg/xmlpull/v1/XmlPullParser;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-static {}, Lcom/android/server/wm/f;->sis()Lcom/android/server/wm/f;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v9}, Lcom/android/server/wm/f;->rtg(Lorg/xmlpull/v1/XmlPullParser;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lcom/android/server/wm/d;->sis()Lcom/android/server/wm/d;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/d;->rtg(Lorg/xmlpull/v1/XmlPullParser;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {}, Lcom/android/server/wm/e;->sis()Lcom/android/server/wm/e;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/e;->tsu(Lorg/xmlpull/v1/XmlPullParser;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->setCornerRadius(F)V

    goto/16 :goto_4

    :pswitch_5
    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedRelaunchCpnList()Ljava/util/List;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/ivd;->zta(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnRelaunchCpnList()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :pswitch_7
    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnReusedCpnList()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :pswitch_8
    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :pswitch_9
    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getCpnList()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :pswitch_a
    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getNotShowToastPkgList()Ljava/util/List;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/b;->zta(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto :goto_4

    :pswitch_b
    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedShowToastPkgList()Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :pswitch_c
    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportPkgList()Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :pswitch_d
    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getReplyPkgList()Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :pswitch_e
    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getPkgList()Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :pswitch_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->setShowToastSwitch(Z)V

    goto :goto_4

    :pswitch_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->setZoomWindowSwitch(Z)V

    goto :goto_4

    :pswitch_11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->setVersion(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_4
    if-ne v1, v3, :cond_0

    :try_start_4
    instance-of p2, p1, Ljava/io/Closeable;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/io/Closeable;

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_7

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_5

    :catch_1
    move-exception p2

    goto :goto_5

    :catchall_1
    move-exception p2

    move-object v2, v1

    goto :goto_7

    :catch_2
    move-exception p2

    move-object v2, v1

    :goto_5
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    instance-of p1, v1, Ljava/io/Closeable;

    if-eqz p1, :cond_4

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_6
    return-void

    :catchall_2
    move-exception p2

    :goto_7
    :try_start_7
    instance-of p1, v1, Ljava/io/Closeable;

    if-eqz p1, :cond_6

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    throw p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51b341c6 -> :sswitch_11
        -0x2d761a84 -> :sswitch_10
        -0x2c8dccaa -> :sswitch_f
        -0x2a415a01 -> :sswitch_e
        -0x2a16d20e -> :sswitch_d
        -0x29b047a1 -> :sswitch_c
        -0x25a8790f -> :sswitch_b
        -0x1e605e9b -> :sswitch_a
        -0x95c2d09 -> :sswitch_9
        0x2dc9dbc -> :sswitch_8
        0xb1a464e -> :sswitch_7
        0x14f51cd8 -> :sswitch_6
        0x1f9d6af8 -> :sswitch_5
        0x2ea301a1 -> :sswitch_4
        0x3fa81084 -> :sswitch_3
        0x4b818c68 -> :sswitch_2
        0x4c2dce39 -> :sswitch_1
        0x7b294eb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private kth(Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;)Z
    .locals 5

    const/4 p0, 0x0

    const-string v0, "ColorZoomWindowRUSConfigManager"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-nez v1, :cond_1

    const-string p1, "Failed to get PackageManagerInternal"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check the version limit for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "Failed to getPackageInfo: packageInfo is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageInfo.getLongVersionCode() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ZOOM_WINDOW_FEATURE_VERSION = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getFeatureVersionCode()I

    move-result v2

    if-lt v3, v2, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getAppVersionCode()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this app is meet policy limit: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :cond_3
    return p0

    :cond_4
    :goto_0
    const-string p1, "This tag of OplusZoomWindowSupportAppInfo is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private qbh()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/c;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/c;->sis:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/c;->oif(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static rtg()Lcom/android/server/wm/c;
    .locals 2

    sget-object v0, Lcom/android/server/wm/c;->bud:Lcom/android/server/wm/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/c;->bud:Lcom/android/server/wm/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/c;

    invoke-direct {v1}, Lcom/android/server/wm/c;-><init>()V

    sput-object v1, Lcom/android/server/wm/c;->bud:Lcom/android/server/wm/c;

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
    sget-object v0, Lcom/android/server/wm/c;->bud:Lcom/android/server/wm/c;

    return-object v0
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

    const-string p1, "ColorZoomWindowRUSConfigManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private ywr(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getInstance()Lcom/android/server/wm/ColorZoomWindowManagerService;

    move-result-object v2

    const/4 v3, 0x1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "ColorZoomWindowRUSConfigManager"

    const-string p1, "in force show list, show compatibility toast"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/c;->qbh()V

    return-void
.end method


# virtual methods
.method public bio(Ljava/lang/String;ILcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p2, "ColorZoomWindowRUSConfigManager"

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "Failed to check isSupportZoomModeWithPolicyLocked: target is empty"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportZoomModeWithPolicyLocked: target = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-ge v1, v2, :cond_1

    const-string p0, "target is invalid"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    aget-object p0, p0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetPkg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportPkgList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "target pkg is unsupport zoom window mode"

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_5

    move p3, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "target cpn is unsupport zoom window mode"

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    invoke-virtual {p3}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportPkgList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_8

    move p3, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_8

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "target is unsupport zoom window mode"

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    return v2
.end method

.method public cno(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)Z
    .locals 10

    const-string v0, "ColorZoomWindowRUSConfigManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "target null, error"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p5}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getShowToastSwitch()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "toast switch off, cancel show toast"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p5}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedShowToastPkgList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p5}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getNotShowToastPkgList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p5}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getPkgList()Ljava/util/List;

    move-result-object p5

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v9, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    if-ge v4, v9, :cond_2

    const-string p0, "target is invalid"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    aget-object v5, v2, v1

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/c;->ywr(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v9

    :cond_3
    move-object v2, p0

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/c;->ywr(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v9

    :cond_4
    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    move p0, v1

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_6

    invoke-interface {v8, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v8, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "target in notShowToastPkgList, cancel show toast"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_6
    if-eqz p5, :cond_8

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8

    move p0, v1

    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_8

    invoke-interface {p5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p0, "target in supportZoomPkgList, cancel show toast"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getInstance()Lcom/android/server/wm/ColorZoomWindowManagerService;

    move-result-object v2

    const/4 v3, 0x1

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "not in any list, show compatibility toast"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public dma(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 2

    const-string v0, "ColorZoomWindowRUSConfigManager"

    const-string v1, "scheduleWriteConfig start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/c;->sis:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    iget-object p1, p0, Lcom/android/server/wm/c;->zta:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/c;->tsu:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/c;->zta:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/c;->tsu:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public gck(Ljava/lang/String;)Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 5

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "ColorZoomWindowRUSConfigManager"

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No config file in path:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "readZoomWindowConfigFile failed!"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readZoomWindowConfigFile start in path:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/c;->igw(Ljava/io/File;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "zoom window config = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public oif(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 27

    move-object/from16 v1, p1

    const-string v2, "show_toast_switch"

    const-string v3, "zoom_window_switch"

    const-string v4, "version"

    const-string v5, "filter-conf"

    const-string v6, "version_limit_reply_pkg_list"

    const-string v7, "version_limit_pkg_list"

    const-string v8, "exclude_touch_region"

    const-string v9, "zoom_window_size"

    const-string v10, "forced_relaunch_zoom_cpn_list"

    const-string v11, "unrelaunch_zoom_cpn_list"

    const-string v12, "unreused_zoom_cpn_list"

    const-string v13, "unsupport_zoom_cpn_list"

    const-string v14, "support_zoom_cpn_list"

    const-string v15, "not_show_toast_pkg_list"

    move-object/from16 v16, v6

    const-string v6, "forced_show_toast_pkg_list"

    move-object/from16 v17, v7

    const-string v7, "unsupport_pkg_list"

    move-object/from16 v18, v8

    const-string v8, "support_reply_pkg_list"

    move-object/from16 v19, v9

    const-string v9, "support_pkg_list"

    move-object/from16 v20, v10

    const-string v10, "failed write file "

    move-object/from16 v21, v10

    const-string v10, "failed close stream "

    move-object/from16 v22, v10

    const-string v10, "ColorZoomWindowRUSConfigManager"

    const-string v0, "writeZoomWindowConfigFile start path:/data/oplus/oneplus/zoom/sys_zoom_window_config.xml"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/c;->sis()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirmZoomWindowDir failed!"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to writeZoomWindowConfigFile path:/data/oplus/oneplus/zoom/sys_zoom_window_config.xml"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v23, v11

    new-instance v11, Ljava/io/File;

    const-string v0, "/data/oplus/oneplus/zoom/sys_zoom_window_config.xml"

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed create file /data/oplus/oneplus/zoom/sys_zoom_window_config.xml"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v24, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v13

    const-string v13, "failed create file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v13

    sget-object v26, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v26 .. v26}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v11, "http://xmlpull.org/v1/doc/features.html#indent-output"
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v26, v10

    const/4 v10, 0x1

    :try_start_3
    invoke-interface {v13, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    invoke-interface {v13, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v13, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getVersion()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getZoomWindowSwitch()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getShowToastSwitch()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v2

    invoke-virtual {v2, v13, v1, v9}, Lcom/android/server/wm/b;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v2

    invoke-virtual {v2, v13, v1, v8}, Lcom/android/server/wm/b;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v2

    invoke-virtual {v2, v13, v1, v7}, Lcom/android/server/wm/b;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v2

    invoke-virtual {v2, v13, v1, v6}, Lcom/android/server/wm/b;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/b;->sis()Lcom/android/server/wm/b;

    move-result-object v2

    invoke-virtual {v2, v13, v1, v15}, Lcom/android/server/wm/b;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v2

    invoke-virtual {v2, v13, v1, v14}, Lcom/android/server/wm/ivd;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v25

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v3

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/wm/ivd;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v24

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v3

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/wm/ivd;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v23

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v3

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/wm/ivd;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v20

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/ivd;->sis()Lcom/android/server/wm/ivd;

    move-result-object v3

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/wm/ivd;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "corner_radius"

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getCornerRadius()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "corner_radius"

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v19

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/e;->sis()Lcom/android/server/wm/e;

    move-result-object v3

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/wm/e;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v18

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/d;->sis()Lcom/android/server/wm/d;

    move-result-object v3

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/wm/d;->you(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v17

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/f;->sis()Lcom/android/server/wm/f;

    move-result-object v3

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/wm/f;->ssp(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v16

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/server/wm/f;->sis()Lcom/android/server/wm/f;

    move-result-object v3

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/wm/f;->ssp(Lorg/xmlpull/v1/XmlSerializer;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)V

    invoke-interface {v13, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v0, v12}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_3

    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v1, v26

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v1, v26

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v1, v26

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v1, v26

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v2, v22

    move-object/from16 v1, v26

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v22

    :goto_2
    move-object v3, v0

    move-object v11, v12

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v22

    :goto_3
    move-object v11, v12

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v22

    :goto_4
    move-object v11, v12

    move-object/from16 v4, v21

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v22

    :goto_5
    move-object v11, v12

    move-object/from16 v4, v21

    goto/16 :goto_a

    :catch_9
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v22

    :goto_6
    move-object v11, v12

    move-object/from16 v4, v21

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v22

    const/4 v11, 0x0

    :goto_7
    move-object v3, v0

    goto/16 :goto_f

    :catch_a
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v22

    const/4 v11, 0x0

    :goto_8
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v11, :cond_3

    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    goto/16 :goto_e

    :catch_b
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_c

    :catch_c
    move-exception v0

    move-object v1, v10

    move-object/from16 v4, v21

    move-object/from16 v2, v22

    const/4 v11, 0x0

    :goto_9
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v11, :cond_3

    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    :catch_e
    move-exception v0

    move-object v1, v10

    move-object/from16 v4, v21

    move-object/from16 v2, v22

    const/4 v11, 0x0

    :goto_a
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v11, :cond_3

    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    goto :goto_e

    :catch_f
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    :catch_10
    move-exception v0

    move-object v1, v10

    move-object/from16 v4, v21

    move-object/from16 v2, v22

    const/4 v11, 0x0

    :goto_b
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v11, :cond_3

    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_e

    :catch_11
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_e
    return-void

    :catchall_3
    move-exception v0

    goto/16 :goto_7

    :goto_f
    if-eqz v11, :cond_4

    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    goto :goto_10

    :catch_12
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_10
    throw v3
.end method

.method public sis()Z
    .locals 2

    new-instance p0, Ljava/io/File;

    const-string v0, "/data/oplus/oneplus/zoom/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ColorZoomWindowRUSConfigManager"

    const-string v1, "mkdir for path: /data/oplus/oneplus/zoom/"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "mkdir failed for path: /data/oplus/oneplus/zoom/"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public ssp(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "ColorZoomWindowRUSConfigManager"

    if-eqz p0, :cond_0

    const-string p0, "RUS list tag is empty"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string p0, "version_limit_pkg_list"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getVersionLimitPkgList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "version_limit_reply_pkg_list"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getVersionLimitReplyPkgList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Can not parse the RUS list tag!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public tsu(Ljava/util/List;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;",
            "I)V"
        }
    .end annotation

    const-string v0, "ColorZoomWindowRUSConfigManager"

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getZoomWindowSwitch()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "zoom feature off"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterListWithLimitPolicy: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    const-string p0, "Can\'t parse the type in filterListWithLimitPolicy()"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedRelaunchCpnList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedRelaunchCpnList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedRelaunchCpnList()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnRelaunchCpnList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnRelaunchCpnList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnRelaunchCpnList()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnReusedCpnList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnReusedCpnList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnReusedCpnList()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getNotShowToastPkgList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getNotShowToastPkgList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getNotShowToastPkgList()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedShowToastPkgList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedShowToastPkgList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getForcedShowToastPkgList()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getReplyPkgList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getReplyPkgList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getReplyPkgList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getVersionLimitReplyPkgList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_6

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    invoke-direct {p0, p3}, Lcom/android/server/wm/c;->kth(Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getPkg()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportPkgList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportPkgList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportPkgList()Ljava/util/List;

    move-result-object p0

    :goto_1
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :pswitch_8
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getPkgList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getPkgList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4

    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getPkgList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {p2}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getVersionLimitPkgList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_6

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    invoke-direct {p0, p3}, Lcom/android/server/wm/c;->kth(Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;->getPkg()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void

    :cond_7
    :goto_4
    const-string p0, "Failed to filterListWithLimitPolicy: List or config is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public wtn()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/c;->ssp:Z

    const-string v1, "ColorZoomWindowRUSConfigManager"

    if-eqz v0, :cond_0

    const-string v0, "readZoomWindowConfig start"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/c;->sis()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "confirmZoomWindowDir failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "/system_ext/oplus/sys_zoom_window_config.xml"

    invoke-direct {p0, v2}, Lcom/android/server/wm/c;->you(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    const-string v0, "/data/oplus/oneplus/zoom/sys_zoom_window_config.xml"

    invoke-direct {p0, v0}, Lcom/android/server/wm/c;->you(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/c;->gck(Ljava/lang/String;)Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/c;->gck(Ljava/lang/String;)Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object p0

    :goto_0
    sget-boolean v0, Lcom/android/server/wm/c;->ssp:Z

    if-eqz v0, :cond_4

    const-string v0, "readZoomWindowConfig end"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p0
.end method
