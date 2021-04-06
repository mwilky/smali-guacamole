.class Lcom/oneplus/settings/notification/OPNotificationAppList$6;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "OPNotificationAppList"

    const-string v4, "Collecting apps..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    const-string v5, "OPNotificationAppList"

    const-string v6, "  launchable activities:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    const-string v6, "OPNotificationAppList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oneplus- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v4

    const-string v5, "OPNotificationAppList"

    const-string v6, "  config activities:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    const-string v7, "OPNotificationAppList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "oneplus-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v8}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    move-result-object v8

    invoke-static {v7, v5, v8}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v5}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1300()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$800(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-string v1, "OPNotificationAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oneplus-Collected "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " apps in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
