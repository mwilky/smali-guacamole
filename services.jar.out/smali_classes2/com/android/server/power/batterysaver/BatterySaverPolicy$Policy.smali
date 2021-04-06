.class Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
.super Ljava/lang/Object;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Policy"
.end annotation


# instance fields
.field public final adjustBrightnessFactor:F

.field public final advertiseIsEnabled:Z

.field public final deferFullBackup:Z

.field public final deferKeyValueBackup:Z

.field public final disableAnimation:Z

.field public final disableAod:Z

.field public final disableLaunchBoost:Z

.field public final disableOptionalSensors:Z

.field public final disableSoundTrigger:Z

.field public final disableVibration:Z

.field public final enableAdjustBrightness:Z

.field public final enableDataSaver:Z

.field public final enableFirewall:Z

.field public final enableNightMode:Z

.field public final enableQuickDoze:Z

.field public final filesForInteractive:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final filesForNoninteractive:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final forceAllAppsStandby:Z

.field public final forceBackgroundCheck:Z

.field public final locationMode:I

.field private final mHashCode:I


# direct methods
.method constructor <init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZZZZZZZZZZZZZZ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p16

    move-object/from16 v2, p17

    move/from16 v3, p20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    move/from16 v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    move/from16 v4, p2

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    move/from16 v6, p3

    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    move/from16 v11, p8

    iput-boolean v11, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    move/from16 v12, p9

    iput-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    move/from16 v13, p10

    iput-boolean v13, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    move/from16 v14, p11

    iput-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    move/from16 v15, p12

    iput-boolean v15, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    move/from16 v4, p13

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    move/from16 v4, p14

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    move/from16 v4, p15

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    iput-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    iput-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    move/from16 v4, p18

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    move/from16 v4, p19

    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    if-ltz v3, :cond_1

    const/4 v4, 0x4

    if-ge v4, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid location mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BatterySaverPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    :goto_1
    const/16 v5, 0x14

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v5, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v5, v4

    const/4 v4, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v5, v4

    const/4 v4, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v5, v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v16, 0x4

    aput-object v4, v5, v16

    const/4 v4, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/4 v4, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/4 v4, 0x7

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0x8

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0x9

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xa

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xb

    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xc

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xd

    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xe

    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0xf

    aput-object v1, v5, v4

    const/16 v4, 0x10

    aput-object v2, v5, v4

    const/16 v4, 0x11

    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0x12

    invoke-static/range {p19 .. p19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v4

    const/16 v4, 0x13

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v4

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    return-void
.end method

.method static fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 26

    if-nez p0, :cond_0

    const-string v0, "BatterySaverPolicy"

    const-string v1, "Null config passed down to BatterySaverPolicy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeviceSpecificSettings()Ljava/util/Map;

    move-result-object v0

    nop

    const-string v1, "cpufreq-i"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    nop

    const-string v3, "cpufreq-n"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v24, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object/from16 v3, v24

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdjustBrightnessFactor()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getAdvertiseIsEnabled()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferFullBackup()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDeferKeyValueBackup()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAnimation()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableAod()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableLaunchBoost()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableOptionalSensors()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableSoundTrigger()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getDisableVibration()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableAdjustBrightness()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableDataSaver()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableFirewall()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableNightMode()Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getEnableQuickDoze()Z

    move-result v18

    move-object/from16 v25, v0

    new-instance v0, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v19

    new-instance v0, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceAllAppsStandby()Z

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getForceBackgroundCheck()Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatterySaverPolicyConfig;->getLocationMode()I

    move-result v23

    invoke-direct/range {v3 .. v23}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    return-object v24
.end method

.method static fromSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 1

    sget-object v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->OFF_POLICY:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-static {p0, p1, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    return-object v0
.end method

.method static fromSettings(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v4, 0x2c

    invoke-direct {v0, v4}, Landroid/util/KeyValueListParser;-><init>(C)V

    move-object v4, v0

    const-string v5, "BatterySaverPolicy"

    const-string v6, ""

    if-nez v2, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad device specific battery saver constants: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "cpufreq-i"

    invoke-virtual {v4, v0, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "cpufreq-n"

    invoke-virtual {v4, v0, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v6, v1

    :goto_2
    :try_start_1
    invoke-virtual {v4, v6}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad battery saver constants: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget v0, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    const-string v5, "adjust_brightness_factor"

    invoke-virtual {v4, v5, v0}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iget-boolean v5, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    const-string v6, "advertise_is_enabled"

    invoke-virtual {v4, v6, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-boolean v6, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    const-string v9, "fullbackup_deferred"

    invoke-virtual {v4, v9, v6}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    const-string v10, "keyvaluebackup_deferred"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    const-string v10, "animation_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    const-string v10, "aod_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    const-string v10, "launch_boost_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    const-string v10, "optional_sensors_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    const-string v10, "soundtrigger_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    const-string v10, "vibration_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    xor-int/lit8 v9, v9, 0x1

    const-string v10, "adjust_brightness_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    xor-int/lit8 v20, v9, 0x1

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    xor-int/lit8 v9, v9, 0x1

    const-string v10, "datasaver_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    xor-int/lit8 v21, v9, 0x1

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    xor-int/lit8 v9, v9, 0x1

    const-string v10, "firewall_disabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    xor-int/lit8 v22, v9, 0x1

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    const-string v10, "enable_night_mode"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    move/from16 v23, v37

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    const-string v10, "quick_doze_enabled"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    move/from16 v24, v38

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    const-string v10, "force_all_apps_standby"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    move/from16 v27, v39

    iget-boolean v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    const-string v10, "force_background_check"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    move/from16 v28, v40

    iget v9, v3, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    const-string v10, "gps_mode"

    invoke-virtual {v4, v10, v9}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v41

    move/from16 v29, v41

    new-instance v42, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-object/from16 v9, v42

    new-instance v10, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v10}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    invoke-virtual {v10, v7}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v25

    new-instance v10, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v10}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    invoke-virtual {v10, v8}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v26

    move v10, v0

    move v11, v5

    move v12, v6

    move/from16 v13, v30

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v16, v33

    move/from16 v17, v34

    move/from16 v18, v35

    move/from16 v19, v36

    invoke-direct/range {v9 .. v29}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;-><init>(FZZZZZZZZZZZZZZLandroid/util/ArrayMap;Landroid/util/ArrayMap;ZZI)V

    return-object v42
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableSoundTrigger:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    iget-boolean v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    iget v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForInteractive:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->filesForNoninteractive:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->mHashCode:I

    return v0
.end method
