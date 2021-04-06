.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedPowerUsageDetail.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;


# instance fields
.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field mBackgroundPreference:Landroidx/preference/Preference;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mForegroundPreference:Landroidx/preference/Preference;

.field mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

.field private mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

.field private mPackageName:Ljava/lang/String;

.field private mSmartOptimze:Lcom/android/settings/ui/RadioButtonPreference;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static getUserIdToLaunchAdvancePowerUsageDetail(Lcom/android/internal/os/BatterySipper;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "extra_package_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_power_usage_percent"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "extra_uid"

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "AdvancedPowerDetail"

    invoke-static {v2, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->high_power_apps:I

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p4, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    iget-object v2, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1, v4, v1, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    :goto_1
    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x0

    :goto_2
    iget-object p1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "extra_package_name"

    if-eqz p1, :cond_3

    invoke-virtual {p4}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string v5, "extra_label"

    invoke-virtual {p2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p4, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    const-string p4, "extra_icon_id"

    invoke-virtual {p2, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    iget-object p1, p4, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    aget-object p1, p1, v5

    :goto_3
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p1

    const-string p3, "extra_uid"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_background_time"

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "extra_foreground_time"

    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "extra_power_usage_percent"

    invoke-virtual {p2, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p3, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    double-to-int p1, p3

    const-string p3, "extra_power_usage_amount"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->high_power_apps:I

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    new-instance p0, Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getUserIdToLaunchAdvancePowerUsageDetail(Lcom/android/internal/os/BatterySipper;)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x270f

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p5, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    iget-object v2, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1, v4, v1, p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    :goto_1
    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1, p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x0

    :goto_2
    iget-object p1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    const-string p4, "extra_package_name"

    if-eqz p1, :cond_3

    invoke-virtual {p5}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string v5, "extra_label"

    invoke-virtual {p3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p5, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    const-string p5, "extra_icon_id"

    invoke-virtual {p3, p5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    iget-object p1, p5, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    aget-object p1, p1, v5

    :goto_3
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p1

    const-string p4, "extra_uid"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_background_time"

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "extra_foreground_time"

    invoke-virtual {p3, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "extra_power_usage_percent"

    invoke-virtual {p3, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    double-to-int p1, p4

    const-string p4, "extra_power_usage_amount"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->high_power_apps:I

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    invoke-interface {p2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    new-instance p0, Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getUserIdToLaunchAdvancePowerUsageDetail(Lcom/android/internal/os/BatterySipper;)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "extra_package_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_power_usage_percent"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "extra_uid"

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AdvancedPowerDetail"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->high_power_apps:I

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x270f

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updateUI()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mSmartOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mSmartOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mSmartOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedPowerDetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$xml;->power_usage_detail:I

    return p0
.end method

.method initHeader()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_1

    const-string p0, "extra_label"

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    const-string p0, "extra_icon_id"

    invoke-virtual {v2, p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, v4}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method initPreference()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "extra_foreground_time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "extra_background_time"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    sget v6, Lcom/android/settings/R$string;->battery_used_for:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/CharSequence;

    long-to-double v2, v2

    const/4 v9, 0x0

    invoke-static {v1, v2, v3, v9}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->battery_active_for:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array v2, v7, [Ljava/lang/CharSequence;

    long-to-double v3, v4

    invoke-static {v1, v3, v4, v9}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {p0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    const-string p1, "app_usage_foreground"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    const-string p1, "app_usage_background"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    const-string p1, "header_view"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string p1, "smart_optimze"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mSmartOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "optimze"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPApplicationUtils;->isSystemAndNonUpdate(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPApplicationUtils;->isSystemUpdateAndOneplus(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v0, "no_optimze"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mSmartOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    invoke-static {v0, v1}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->needShown(Ljava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mSmartOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_4
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mSmartOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v2, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode(Ljava/lang/String;II)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v3, :cond_1

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v2, v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode(Ljava/lang/String;II)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v3, :cond_2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mNoOptimze:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v2, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode(Ljava/lang/String;II)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updateUI()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initHeader()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreference()V

    return-void
.end method
