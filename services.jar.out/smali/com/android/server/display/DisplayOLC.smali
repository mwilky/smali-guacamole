.class public Lcom/android/server/display/DisplayOLC;
.super Ljava/lang/Object;
.source "DisplayOLC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;
    }
.end annotation


# static fields
.field public static APP_GAMMA:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static HBM_THRESHOLD:[I = null

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final PROJ_NAME:Ljava/lang/String; = "DisplayOLC"

.field private static final TAG:Ljava/lang/String; = "DisplayOLC"

.field static mEnableDarkThemeLimit:Z

.field private static mLimitPercent:D

.field private static mMinDarkThemeLevel:F

.field private static mOpMinBrightnessLevel:F


# instance fields
.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mContext:Landroid/content/Context;

.field private mMinDarkThemeNit:F

.field private mOnlineConfigHandler:Landroid/os/Handler;

.field private mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOpMinBrightnessNit:F

.field private mSunReadableVoteEnableStatus:Z

.field private mSunReadableVoteRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3fe999999999999aL    # 0.8

    sput-wide v0, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    sput v0, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeLevel:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayOLC;->mEnableDarkThemeLimit:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/display/DisplayOLC;->APP_GAMMA:Ljava/util/HashMap;

    return-void

    nop

    :array_0
    .array-data 4
        0x4e20
        0x7530
        0x9c40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeNit:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayOLC;->mSunReadableVoteEnableStatus:Z

    const/16 v1, 0x5a

    iput v1, p0, Lcom/android/server/display/DisplayOLC;->mSunReadableVoteRate:I

    iput-object p1, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {p0}, Lcom/android/server/display/DisplayOLC;->initOnlineConfig()Z

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    sput v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v2, p0, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeNit:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    sput v1, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeLevel:F

    :cond_0
    sget v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_1

    move v0, v1

    :cond_1
    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOpMinBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mOpMinBrightnessLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDarkThemeNit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDarkThemeLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayOLC"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/display/DisplayOLC;->APP_GAMMA:Ljava/util/HashMap;

    const-wide/high16 v1, 0x3ff4000000000000L    # 1.25

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "com.android.chrome"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/display/DisplayOLC;->APP_GAMMA:Ljava/util/HashMap;

    const-wide v1, 0x3ff599999999999aL    # 1.35

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "com.google.android.dialer"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/display/DisplayOLC;->APP_GAMMA:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "com.google.android.apps.messaging"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayOLC;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayOLC;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayOLC;->parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static enableDarkThemeLimit(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/display/DisplayOLC;->mEnableDarkThemeLimit:Z

    return-void
.end method

.method private handleConfigChangeEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "DisplayOLC"

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-string v8, "BoostBrightnessGallery"

    const-string v9, "AppGamma"

    const-string v10, "HBMThreshold"

    const-string v11, "UseCurveGenAlgo"

    const-string v12, "SunReadableVote"

    const-string v13, "MiniBrightness"

    const-string v14, "SunReadableVoteRate"

    const-string v15, "MiniPercent"

    const/16 v16, 0x1

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v6

    goto :goto_0

    :sswitch_4
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v7

    goto :goto_0

    :sswitch_6
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move/from16 v0, v16

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_1

    sget-object v5, Lcom/android/server/display/DisplayOLC;->APP_GAMMA:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    sget-object v9, Lcom/android/server/display/DisplayOLC;->APP_GAMMA:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppGamma app:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " gamma:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BoostBrightnessGallery: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->enableBoostBrightnessGallery(Z)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayOLC;->mSunReadableVoteRate:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SunReadableVoteRate: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/display/DisplayOLC;->mSunReadableVoteRate:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayOLC;->mSunReadableVoteEnableStatus:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SunReadableVote: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/display/DisplayOLC;->mSunReadableVoteEnableStatus:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UseCurveGenAlgo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "use_curve_gen_algo"

    if-eqz v0, :cond_2

    move/from16 v7, v16

    :cond_2
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_3

    sget-object v7, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HBM_THRESHOLD["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v5, v0

    sput-wide v5, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLimitPercent:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_7
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    iget-object v5, v1, Lcom/android/server/display/DisplayOLC;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v5, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-ltz v6, :cond_4

    goto :goto_3

    :cond_4
    move v0, v5

    :goto_3
    sput v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOpMinBrightness:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessNit:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]  Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] JSONException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    nop

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7992c032 -> :sswitch_7
        -0x449e16ba -> :sswitch_6
        -0x3ef647d8 -> :sswitch_5
        -0x1d09c4ba -> :sswitch_4
        -0xf572f25 -> :sswitch_3
        0x2257a318 -> :sswitch_2
        0x481b5a26 -> :sswitch_1
        0x5cf9b87e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private initOnlineConfig()Z
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayOLC$BrightnessConfigUpdater;-><init>(Lcom/android/server/display/DisplayOLC;)V

    const-string v4, "DisplayOLC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v0, :cond_0

    const-string v0, "OLC Observer is null"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Brightness_OLC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/display/DisplayOLC$1;

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayOLC$1;-><init>(Lcom/android/server/display/DisplayOLC;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/display/DisplayOLC;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    const-string v0, "OLC init DONE!"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static limitPercent(D)D
    .locals 3

    sget-wide v0, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    sget-wide p0, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "limitPercent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/display/DisplayOLC;->mLimitPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayOLC"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide p0
.end method

.method public static limitTarget(F)F
    .locals 3

    sget v0, Lcom/android/server/display/DisplayOLC;->mOpMinBrightnessLevel:F

    sget-boolean v1, Lcom/android/server/display/DisplayOLC;->mEnableDarkThemeLimit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/display/DisplayOLC;->mMinDarkThemeLevel:F

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v1, p0, v2

    if-nez v1, :cond_1

    return p0

    :cond_1
    cmpl-float v1, v0, p0

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOBE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayOLC"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return p0
.end method

.method private parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5

    const-string v0, "DisplayOLC"

    if-nez p1, :cond_0

    const-string v1, "OLC is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/server/display/DisplayOLC;->handleConfigChangeEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig]  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    return-void
.end method


# virtual methods
.method public getSunReadableVoteEnableStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayOLC;->mSunReadableVoteEnableStatus:Z

    return v0
.end method

.method public getSunReadableVoteRate()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayOLC;->mSunReadableVoteRate:I

    return v0
.end method
