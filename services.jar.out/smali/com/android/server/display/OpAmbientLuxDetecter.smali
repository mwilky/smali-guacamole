.class public Lcom/android/server/display/OpAmbientLuxDetecter;
.super Ljava/lang/Object;
.source "OpAmbientLuxDetecter.java"


# static fields
.field private static final DARKEN_GAP:I = 0x1f40

.field private static final DARKEN_LIMIT_LENGTH:I = 0x1e

.field private static final DARKEN_LUX:I = 0x3e8

.field private static final FAST_BRIGHTEN_DEBOUNCE_TIME:J = 0x5dcL

.field private static final SAMPLE_LENGTH:I = 0xa

.field private static final SUPPORT_IRISCHIP:Z

.field private static final SUPPORT_SOFTIRIS:Z

.field private static final TAG:Ljava/lang/String; = "OpAmbientLuxDetecter"


# instance fields
.field private mAmbientBrighteningThreshold:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mCurrentBrightness:F

.field private mFastAmbientLux:F

.field private mIs18865N19801:Z

.field private mLastObservedLux:F

.field private mLoggingEnabled:Z

.field private mMaxFactor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x125

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/OpAmbientLuxDetecter;->SUPPORT_SOFTIRIS:Z

    new-array v0, v0, [I

    const/16 v1, 0x124

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/OpAmbientLuxDetecter;->SUPPORT_IRISCHIP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mIs18865N19801:Z

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mMaxFactor:[I

    invoke-virtual {p0}, Lcom/android/server/display/OpAmbientLuxDetecter;->isOnePlus18865N19801()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mIs18865N19801:Z

    return-void

    :array_0
    .array-data 4
        0x9
        0x9
        0x9
        0x7
        0x7
        0x5
        0x5
        0x3
        0x3
    .end array-data
.end method

.method private getDcEnable()Z
    .locals 3

    const-string/jumbo v0, "persist.vendor.dc.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private isOnePlus7Projects()Z
    .locals 2

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "18821"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18825"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18827"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18831"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18857"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private useScreenShotAlgo()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/OpAmbientLuxDetecter;->getDcEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/OpAmbientLuxDetecter;->isOnePlus7Projects()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method isOnePlus18865N19801()Z
    .locals 2

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "18865"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public nextFastBrighteningTransition(J)F
    .locals 28

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v3

    move-wide/from16 v4, p1

    iget v6, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientBrighteningThreshold:F

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    sub-float/2addr v6, v7

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    sub-float/2addr v8, v7

    const-wide/16 v9, 0x5dc

    const/4 v11, 0x0

    cmpg-float v11, v8, v11

    const/high16 v12, -0x40800000    # -1.0f

    if-gez v11, :cond_0

    return v12

    :cond_0
    const v11, 0x461c4000    # 10000.0f

    cmpl-float v11, v8, v11

    const-string v13, "OpAmbientLuxDetecter"

    if-lez v11, :cond_1

    const v11, 0x459c4000    # 5000.0f

    cmpg-float v7, v7, v11

    if-ltz v7, :cond_6

    :cond_1
    const v7, 0x45bb8000    # 6000.0f

    cmpl-float v7, v8, v7

    const/high16 v11, 0x447a0000    # 1000.0f

    if-lez v7, :cond_2

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v7, v7, v11

    if-ltz v7, :cond_6

    :cond_2
    const/high16 v7, 0x457a0000    # 4000.0f

    cmpl-float v7, v8, v7

    const/high16 v14, 0x43480000    # 200.0f

    if-lez v7, :cond_3

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v7, v7, v14

    if-ltz v7, :cond_6

    :cond_3
    const/high16 v7, 0x44fa0000    # 2000.0f

    cmpl-float v7, v8, v7

    if-lez v7, :cond_4

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v15, 0x42c80000    # 100.0f

    cmpg-float v7, v7, v15

    if-ltz v7, :cond_6

    :cond_4
    cmpl-float v7, v8, v11

    const/high16 v15, 0x42480000    # 50.0f

    if-lez v7, :cond_5

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v7, v7, v15

    if-ltz v7, :cond_6

    :cond_5
    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v16, v8, v7

    if-lez v16, :cond_7

    iget v12, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v17, 0x41a00000    # 20.0f

    cmpg-float v12, v12, v17

    if-gez v12, :cond_7

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "great change:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mFastAmbientLux:F

    return v7

    :cond_7
    iget v12, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v17, 0x41200000    # 10.0f

    div-float v12, v12, v17

    sget-boolean v18, Lcom/android/server/display/OpAmbientLuxDetecter;->SUPPORT_IRISCHIP:Z

    const/high16 v19, 0x40400000    # 3.0f

    if-nez v18, :cond_9

    sget-boolean v18, Lcom/android/server/display/OpAmbientLuxDetecter;->SUPPORT_SOFTIRIS:Z

    if-eqz v18, :cond_8

    goto :goto_0

    :cond_8
    move-wide/from16 v22, v4

    move/from16 v24, v8

    move-wide/from16 v26, v9

    goto/16 :goto_5

    :cond_9
    :goto_0
    const/high16 v18, 0x40c00000    # 6.0f

    cmpl-float v18, v12, v18

    if-lez v18, :cond_11

    const/16 v7, 0x14

    if-le v3, v7, :cond_11

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v7, v7, v12

    if-gtz v7, :cond_11

    const/4 v7, 0x0

    iget-object v14, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v21, v3, -0xa

    add-int/lit8 v15, v21, -0x2

    invoke-virtual {v14, v15}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v14

    const/4 v15, 0x1

    :goto_1
    const/16 v11, 0xa

    if-ge v15, v11, :cond_b

    iget-object v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-wide/from16 v22, v4

    sub-int v4, v3, v15

    invoke-virtual {v11, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget-object v5, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    sub-int v11, v3, v15

    const/16 v21, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v5, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v5

    sub-float v11, v4, v5

    move/from16 v24, v5

    neg-float v5, v12

    const/high16 v25, 0x40000000    # 2.0f

    div-float v5, v5, v25

    cmpl-float v5, v11, v5

    if-lez v5, :cond_a

    sub-float v5, v4, v14

    move/from16 v25, v4

    iget-object v4, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mMaxFactor:[I

    add-int/lit8 v26, v15, -0x1

    aget v4, v4, v26

    int-to-float v4, v4

    mul-float/2addr v4, v12

    cmpl-float v4, v5, v4

    if-lez v4, :cond_c

    nop

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v4, v22

    goto :goto_1

    :cond_a
    move/from16 v25, v4

    goto :goto_2

    :cond_b
    move-wide/from16 v22, v4

    :cond_c
    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x32

    if-le v3, v5, :cond_d

    const/16 v20, 0x14

    goto :goto_3

    :cond_d
    const/16 v20, 0x5

    :goto_3
    move/from16 v5, v20

    const/16 v11, 0x9

    if-ne v7, v11, :cond_10

    add-int/lit8 v11, v3, -0xa

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    div-float v12, v12, v19

    const/4 v15, 0x1

    :goto_4
    move/from16 v20, v7

    add-int/lit8 v7, v5, 0x1

    if-ge v15, v7, :cond_e

    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move/from16 v24, v8

    sub-int v8, v11, v15

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    iget-object v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    sub-int v25, v11, v15

    move-wide/from16 v26, v9

    const/16 v21, 0x1

    add-int/lit8 v9, v25, -0x1

    invoke-virtual {v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v8

    sub-float/2addr v7, v8

    cmpg-float v8, v7, v12

    if-gez v8, :cond_f

    neg-float v8, v12

    cmpl-float v8, v7, v8

    if-lez v8, :cond_f

    nop

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v20

    move/from16 v8, v24

    move-wide/from16 v9, v26

    goto :goto_4

    :cond_e
    move/from16 v24, v8

    move-wide/from16 v26, v9

    :cond_f
    if-ne v4, v5, :cond_12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slop changing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mFastAmbientLux:F

    return v7

    :cond_10
    move/from16 v20, v7

    move/from16 v24, v8

    move-wide/from16 v26, v9

    goto :goto_5

    :cond_11
    move-wide/from16 v22, v4

    move/from16 v24, v8

    move-wide/from16 v26, v9

    :cond_12
    :goto_5
    iget-boolean v4, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mIs18865N19801:Z

    if-eqz v4, :cond_16

    iget v4, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v4, v4, v19

    if-gez v4, :cond_16

    iget v4, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    add-int/lit8 v4, v3, -0x2

    :goto_6
    const/4 v5, 0x1

    if-lt v4, v5, :cond_15

    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    iget-object v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_14

    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    cmpg-float v7, v7, v19

    if-gez v7, :cond_13

    goto :goto_7

    :cond_13
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_14
    :goto_7
    iget-object v5, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v7

    move-wide v4, v7

    goto :goto_8

    :cond_15
    move-wide/from16 v4, v22

    :goto_8
    sub-long v7, v1, v4

    const-wide/16 v9, 0x320

    cmp-long v7, v7, v9

    if-lez v7, :cond_17

    const/4 v7, 0x5

    if-le v3, v7, :cond_17

    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v8, v3, -0x2

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    const/high16 v8, 0x42200000    # 40.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_17

    iget-object v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v8, v3, -0x3

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, 0x41000000    # 8.0f

    return v7

    :cond_16
    move-wide/from16 v4, v22

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/OpAmbientLuxDetecter;->useScreenShotAlgo()Z

    move-result v7

    if-eqz v7, :cond_1a

    const v7, 0x44bb8000    # 1500.0f

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mCurrentBrightness:F

    mul-float/2addr v8, v7

    cmpl-float v7, v6, v8

    if-lez v7, :cond_18

    move v7, v6

    goto :goto_9

    :cond_18
    move v7, v8

    :goto_9
    move v6, v7

    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v9, v6, v7

    if-lez v9, :cond_19

    move v7, v6

    goto :goto_a

    :cond_19
    const/high16 v7, 0x43fa0000    # 500.0f

    :goto_a
    move v6, v7

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    add-float/2addr v7, v6

    goto :goto_c

    :cond_1a
    const/high16 v7, 0x447a0000    # 1000.0f

    cmpl-float v8, v6, v7

    if-lez v8, :cond_1b

    move v7, v6

    goto :goto_b

    :cond_1b
    const/high16 v7, 0x447a0000    # 1000.0f

    :goto_b
    move v6, v7

    iget v7, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    add-float/2addr v7, v6

    :goto_c
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v9, 0x43fa0000    # 500.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1c

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v9, 0x447a0000    # 1000.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1c

    const/high16 v7, 0x447a0000    # 1000.0f

    :cond_1c
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v8, v8, v17

    const/high16 v9, 0x437a0000    # 250.0f

    if-gez v8, :cond_1d

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1d

    const/high16 v7, 0x437a0000    # 250.0f

    :cond_1d
    iget-boolean v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mIs18865N19801:Z

    if-eqz v8, :cond_21

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v10

    if-gez v8, :cond_1e

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v10, 0x43160000    # 150.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_1e

    const/high16 v7, 0x43160000    # 150.0f

    const-wide/16 v10, 0x5dc

    move-wide/from16 v26, v10

    :cond_1e
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    cmpg-float v8, v8, v19

    if-gez v8, :cond_1f

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    const/high16 v10, 0x43480000    # 200.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_1f

    const/high16 v7, 0x43480000    # 200.0f

    const-wide/16 v10, 0x5dc

    move-wide/from16 v26, v10

    :cond_1f
    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    const/high16 v10, 0x40a00000    # 5.0f

    cmpg-float v8, v8, v10

    if-gez v8, :cond_20

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_20

    const/high16 v7, 0x437a0000    # 250.0f

    const-wide/16 v9, 0x5dc

    goto :goto_d

    :cond_20
    move-wide/from16 v9, v26

    goto :goto_d

    :cond_21
    move-wide/from16 v9, v26

    :goto_d
    add-int/lit8 v8, v3, -0x1

    :goto_e
    if-ltz v8, :cond_23

    iget-object v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v11, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    cmpg-float v11, v11, v7

    if-gtz v11, :cond_22

    goto :goto_f

    :cond_22
    iget-object v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v11, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    :cond_23
    :goto_f
    iget-boolean v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLoggingEnabled:Z

    if-eqz v8, :cond_24

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "nextFastBrighteningTransition: mAmbientLux = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", brightenThreshold = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", earliestValidTime = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", time = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    add-long v13, v4, v9

    cmp-long v8, v13, v1

    if-gez v8, :cond_25

    iget v8, v0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    move/from16 v16, v8

    goto :goto_10

    :cond_25
    const/high16 v16, -0x40800000    # -1.0f

    :goto_10
    return v16
.end method

.method public nextFastDarkeningTransition(J)F
    .locals 11

    iget-object v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    iget v2, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    const/high16 v4, 0x45fa0000    # 8000.0f

    cmpl-float v5, v1, v4

    const/high16 v6, -0x40800000    # -1.0f

    if-lez v5, :cond_2

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    const/16 v2, 0x1e

    if-le v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    const/4 v7, 0x6

    if-ge v2, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    sub-int v8, v0, v2

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    sub-int v9, v0, v2

    add-int/lit8 v9, v9, -0xa

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v8

    sub-float v9, v8, v7

    add-float/2addr v3, v7

    cmpg-float v10, v7, v5

    if-gez v10, :cond_0

    cmpl-float v10, v9, v4

    if-lez v10, :cond_0

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fast darkening:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OpAmbientLuxDetecter"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v2, v3, v2

    return v2

    :cond_2
    return v6
.end method

.method public setCurrentInfo(Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;FFFFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iput p2, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientLux:F

    iput p3, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLastObservedLux:F

    iput p4, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mFastAmbientLux:F

    iput p5, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mCurrentBrightness:F

    iput p6, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mAmbientBrighteningThreshold:F

    return-void
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/OpAmbientLuxDetecter;->mLoggingEnabled:Z

    const/4 v0, 0x1

    return v0
.end method
