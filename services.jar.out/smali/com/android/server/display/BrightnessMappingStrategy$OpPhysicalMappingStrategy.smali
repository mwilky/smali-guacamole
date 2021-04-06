.class Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpPhysicalMappingStrategy"
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mDeltaNits:F

.field private final mHBMLuxToBacklightSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF[F[F)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->mDeltaNits:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->mBatteryLevel:I

    invoke-static {p5, p6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->mHBMLuxToBacklightSpline:Landroid/util/Spline;

    return-void
.end method

.method private getHBMBrightness(FLjava/lang/String;I)F
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->mHBMLuxToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v1, v2, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    return v1
.end method

.method private getHBMThreshold()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->mBatteryLevel:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/display/DisplayOLC;->HBM_THRESHOLD:[I

    const/4 v2, 0x2

    aget v0, v1, v2

    :goto_0
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$400()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHBMLuxToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->mHBMLuxToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHBMLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->getHBMThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMinHBMLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxHBMLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->getHBMThreshold()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->getHBMThreshold()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->getHBMBrightness(FLjava/lang/String;I)F

    move-result v2

    add-float/2addr v2, v1

    return v2

    :cond_0
    return v0
.end method

.method public updateBatteryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OpPhysicalMappingStrategy;->mBatteryLevel:I

    return-void
.end method
