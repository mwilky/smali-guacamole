.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x5

    const/4 v9, 0x0

    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v12, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v13, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v14, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    if-nez v10, :cond_3

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v4, v10

    if-nez v10, :cond_2

    const-string v10, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v5, v10

    if-nez v10, :cond_1

    const-string v10, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v0, v10

    if-nez v10, :cond_2

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_0

    :cond_1
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    goto :goto_1

    :cond_3
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    :goto_1
    const-string v0, "android.intent.extra.user_handle"

    const/4 v10, -0x1

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v10

    :goto_2
    move/from16 v22, v0

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v10, "NotificationService"

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v5

    const-string v5, "action="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " removing="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move/from16 v24, v5

    move/from16 v5, v22

    :goto_3
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, "android.intent.extra.changed_uid_list"

    move/from16 v22, v6

    const-string v6, "android.intent.extra.changed_package_list"

    if-eqz v0, :cond_6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    move/from16 v23, v8

    move/from16 v25, v9

    const/16 v19, 0x0

    move v8, v7

    move-object v7, v6

    move/from16 v6, v22

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    const/4 v11, 0x0

    const/4 v7, 0x1

    move/from16 v23, v8

    move/from16 v25, v9

    const/16 v19, 0x0

    move v8, v7

    move-object v7, v6

    move v6, v11

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move/from16 v23, v8

    move/from16 v25, v9

    const/16 v19, 0x0

    move v8, v7

    move-object v7, v6

    move v6, v11

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    nop

    const-string v0, "android.intent.extra.distraction_restrictions"

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v11, v0, 0x2

    if-eqz v11, :cond_9

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    const/4 v12, 0x0

    const/4 v7, 0x1

    move-object v0, v6

    move-object v6, v11

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    const/4 v12, 0x0

    const/4 v8, 0x1

    move-object v0, v6

    move-object v6, v11

    :goto_4
    move/from16 v23, v8

    move/from16 v25, v9

    const/16 v19, 0x0

    move v8, v7

    move-object v7, v6

    move v6, v12

    goto/16 :goto_a

    :cond_a
    const-string v6, "android.intent.extra.UID"

    if-eqz v4, :cond_b

    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    new-array v12, v11, [I

    const/4 v11, -0x1

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v11, 0x0

    aput v6, v12, v11

    move-object v6, v12

    move/from16 v23, v8

    move/from16 v25, v9

    const/16 v19, 0x0

    move v8, v7

    move-object v7, v6

    move/from16 v6, v22

    goto :goto_a

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-nez v11, :cond_c

    return-void

    :cond_c
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_d

    return-void

    :cond_d
    if-eqz v21, :cond_11

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v13, -0x1

    if-eq v15, v13, :cond_e

    move v13, v15

    goto :goto_5

    :cond_e
    const/4 v13, 0x0

    :goto_5
    invoke-interface {v0, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x1

    if-eq v0, v13, :cond_10

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    move/from16 v13, v22

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v13, 0x0

    :goto_7
    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    sget-boolean v13, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v13, :cond_11

    const-string v13, "Exception trying to look up app enabled setting"

    invoke-static {v10, v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_8
    move/from16 v13, v22

    :goto_9
    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v12, v0, v19

    move-object/from16 v16, v0

    new-array v0, v14, [I

    const/4 v14, -0x1

    invoke-virtual {v2, v6, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v0, v19

    move-object v6, v0

    move/from16 v23, v8

    move/from16 v25, v9

    move-object/from16 v0, v16

    move v8, v7

    move-object v7, v6

    move v6, v13

    :goto_a
    if-eqz v0, :cond_12

    array-length v9, v0

    if-lez v9, :cond_12

    if-nez v6, :cond_12

    if-nez v8, :cond_12

    if-eqz v23, :cond_12

    if-eqz v25, :cond_12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "only trigger unhide once: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v0

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x6

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    invoke-virtual {v9, v5, v15, v0, v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    return-void

    :cond_12
    if-eqz v0, :cond_18

    array-length v9, v0

    if-lez v9, :cond_18

    if-eqz v6, :cond_15

    array-length v14, v0

    move/from16 v13, v19

    :goto_b
    if-ge v13, v14, :cond_14

    aget-object v26, v0, v13

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2100()I

    move-result v10

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2200()I

    move-result v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-nez v4, :cond_13

    const/16 v27, 0x1

    goto :goto_c

    :cond_13
    move/from16 v27, v19

    :goto_c
    const/16 v28, 0x0

    move/from16 v29, v19

    const/16 v22, 0x1

    move-object/from16 v12, v26

    move/from16 v30, v13

    move-object/from16 v13, v16

    move/from16 v31, v14

    move/from16 v14, v17

    move/from16 v32, v15

    move/from16 v15, v18

    move/from16 v16, v27

    move/from16 v17, v32

    move/from16 v18, v20

    move-object/from16 v19, v28

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    add-int/lit8 v13, v30, 0x1

    move/from16 v19, v29

    move/from16 v14, v31

    move/from16 v15, v32

    goto :goto_b

    :cond_14
    move/from16 v32, v15

    goto :goto_d

    :cond_15
    move/from16 v32, v15

    if-eqz v8, :cond_16

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    if-eqz v23, :cond_19

    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v9, :cond_17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unhideNotifications: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    move/from16 v32, v15

    :cond_19
    :goto_d
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    move/from16 v10, v32

    invoke-virtual {v9, v5, v10, v0, v7}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    move v0, v4

    move v7, v8

    move/from16 v5, v21

    move/from16 v8, v23

    move/from16 v4, v24

    move/from16 v9, v25

    :cond_1a
    return-void
.end method
