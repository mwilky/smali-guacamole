.class public Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryMeterDrawable"
.end annotation


# instance fields
.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->battery_meter_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->battery_meter_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicWidth:I

    iput p4, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicHeight:I

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->mIntrinsicWidth:I

    return p0
.end method

.method public setBatteryColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setWarningColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
