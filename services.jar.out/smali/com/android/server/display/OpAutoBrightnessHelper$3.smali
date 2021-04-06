.class Lcom/android/server/display/OpAutoBrightnessHelper$3;
.super Ljava/lang/Object;
.source "OpAutoBrightnessHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/OpAutoBrightnessHelper;->reportCurrentStatisticsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OpAutoBrightnessHelper;


# direct methods
.method constructor <init>(Lcom/android/server/display/OpAutoBrightnessHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/OpAutoBrightnessHelper$3;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "OpAutoBrightnessHelper"

    const-string v1, "Report current statistics event."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    const-string v2, "52WW0MUAGI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$3;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$1000(Lcom/android/server/display/OpAutoBrightnessHelper;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/OpAutoBrightnessHelper$3;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-static {v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->access$900(Lcom/android/server/display/OpAutoBrightnessHelper;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "screen_usage_statistics"

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/android/server/display/OpAutoBrightnessHelper$3;->this$0:Lcom/android/server/display/OpAutoBrightnessHelper;

    invoke-virtual {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->clearData()V

    return-void
.end method
