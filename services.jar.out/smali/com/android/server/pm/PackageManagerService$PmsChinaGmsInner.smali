.class public final Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmsChinaGmsInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishSettingGMSPkgsState()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setPackageState(Ljava/lang/String;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    if-eqz v8, :cond_4

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v15, p2

    goto/16 :goto_6

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne v9, v0, :cond_1

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v9, v0, v2

    move-object v10, v0

    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    array-length v0, v10

    move v12, v2

    :goto_1
    if-ge v12, v0, :cond_3

    aget v2, v10, v12

    move v13, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v2

    if-eqz v14, :cond_2

    const/4 v2, 0x0

    move/from16 v15, p2

    :try_start_2
    invoke-virtual {v14, v15, v13, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    iget v2, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v13, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$PmsChinaGmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object v5, v7

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    move/from16 v15, p2

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move/from16 v15, p2

    monitor-exit v11

    goto :goto_5

    :catchall_0
    move-exception v0

    move/from16 v15, p2

    :goto_3
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v15, p2

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void

    :cond_4
    move/from16 v15, p2

    :goto_6
    return-void
.end method
