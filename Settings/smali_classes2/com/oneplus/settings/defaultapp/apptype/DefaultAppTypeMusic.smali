.class public Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeMusic;
.super Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
.source "DefaultAppTypeMusic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppFilter()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    const-string p0, "audio/ogg"

    const-string v0, "audio/x-ms-wma"

    const-string v1, "audio/x-wav"

    const-string v2, "audio/amr"

    const-string v3, "audio/aac"

    const-string v4, "audio/mpeg"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v9, "content"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "media"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v6, p0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "file"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_9
    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_c
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_e
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_f
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_10
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :try_start_11
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5
.end method

.method public getAppIntent()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "content://media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "audio/mpeg"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "audio/aac"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v7, "audio/amr"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v8, "audio/x-wav"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v9, "audio/x-ms-wma"

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "audio/ogg"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "content://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v0, v10, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "file://"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAppMatchParam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x600000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
