.class public Lcom/oneplus/screenshot/longshot/util/ServerConfigs;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final JSON_PARAM_FIND_ATLEAST_ONE_VIEW_VISIBILITY_ON_SCREEN:Ljava/lang/String; = "findAtleastOneViewVisibilityOnScreen"

.field public static final JSON_PARAM_GET_VIEW_VISIBILITY:Ljava/lang/String; = "getViewVisibility"

.field public static final JSON_PARAM_PRINT_VIEW_IDS:Ljava/lang/String; = "printViewIds"

.field public static final JSON_PARAM_REMOVE_OVERSCROLL_BY_CLASS_NAME:Ljava/lang/String; = "removeOverscrollEffectByClassName"

.field public static final JSON_PARAM_REMOVE_OVERSCROLL_BY_VIEW_ID:Ljava/lang/String; = "removeOverscrollEffectByViewId"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigJsonForActivityName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "ComponentInfo{com.oneplus.mms/com.android.mms.ui.ConversationList}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "ComponentInfo{com.oneplus.note/com.oneplus.note.ui.MainActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "ComponentInfo{com.taobao.idlefish/com.taobao.fleamarket.home.activity.MainActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x5

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "ComponentInfo{jp.naver.line.android/jp.naver.line.android.activity.chathistory.ChatHistoryActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x4

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "ComponentInfo{com.oneplus.gallery/com.oneplus.gallery2.OPGalleryActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "ComponentInfo{com.twitter.android/com.twitter.app.main.MainActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "ComponentInfo{com.microsoft.teams/com.microsoft.skype.teams.views.activities.MainActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v4, "ComponentInfo{com.google.android.apps.youtube.music/com.google.android.apps.youtube.music.activities.MusicActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_8
    const-string v4, "ComponentInfo{com.pinterest/com.pinterest.activity.task.activity.MainActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v4, "ComponentInfo{com.whatsapp/com.whatsapp.Conversation}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_a
    const-string v4, "ComponentInfo{com.oneplus.gamespace/com.oneplus.gamespace.ui.main.MainGameActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xd

    goto :goto_0

    :sswitch_b
    const-string v4, "ComponentInfo{com.heytap.browser/com.android.browser.BrowserActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_c
    const-string v4, "ComponentInfo{com.oneplus.dialer/com.android.dialer.oneplus.activity.OPDialtactsActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xb

    goto :goto_0

    :sswitch_d
    const-string v4, "ComponentInfo{com.android.chrome/org.chromium.chrome.browser.ChromeTabbedActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_e
    const-string v4, "ComponentInfo{com.oneplus.contacts/com.oneplus.contacts.activities.OPPeopleActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xe

    goto :goto_0

    :sswitch_f
    const-string v4, "ComponentInfo{com.viber.voip/com.viber.voip.messages.ui.ConversationActivity}"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/16 v3, 0xc

    :cond_1
    :goto_0
    const-string p1, "findAtleastOneViewVisibilityOnScreen"

    const-string v4, "empty_view"

    const-string v5, "getViewVisibility"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_1
    const-string p1, "no_conversations_view"

    :goto_1
    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    :pswitch_1
    const-string p1, "empty_list_view"

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "buoy_view"

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v2, Lb/b/b/h/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_3
    const-string p1, "btn_jump_to_bottom"

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lb/b/b/h/b;->d:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_4
    const-string v3, "speed_dial_empty_view"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "calllog_empty_view"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "contacts_empty_view"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :pswitch_5
    const-string p1, "grid_view_container"

    goto :goto_1

    :pswitch_6
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_7
    const-string p1, "player_top_controls"

    goto :goto_1

    :pswitch_8
    const-string p1, "b54"

    goto :goto_1

    :pswitch_9
    sget-object p1, Lb/b/b/h/b;->e:Ljava/lang/String;

    const-string v2, "url_bar"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tab_switcher_toolbar"

    goto :goto_1

    :pswitch_a
    const-string p1, "scroll_2_top_btn"

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lb/b/b/h/b;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_b
    const-string p1, "chathistory_scroll_to_bottom_button"

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lb/b/b/h/b;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_c
    const-string p1, "scroll_bottom"

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lb/b/b/h/b;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_d
    const-string p1, "bottom_nav_bar"

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lb/b/b/h/b;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_e
    const-string p1, "fab_layout"

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lb/b/b/h/b;->d:Ljava/lang/String;

    goto :goto_2

    :pswitch_f
    const-string p1, "composer_write"

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p1, Lb/b/b/h/b;->d:Ljava/lang/String;

    goto :goto_2

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x729b425c -> :sswitch_f
        -0x6c809994 -> :sswitch_e
        -0x1242b13d -> :sswitch_d
        -0xdc13683 -> :sswitch_c
        -0x44d25f7 -> :sswitch_b
        0x152e0cd -> :sswitch_a
        0x24e8feb -> :sswitch_9
        0x3618373 -> :sswitch_8
        0x42bf0c7 -> :sswitch_7
        0x2f164707 -> :sswitch_6
        0x2f1bd90d -> :sswitch_5
        0x3d156b08 -> :sswitch_4
        0x50b1b3ac -> :sswitch_3
        0x5e2c0e48 -> :sswitch_2
        0x601c3c8a -> :sswitch_1
        0x651d67f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
