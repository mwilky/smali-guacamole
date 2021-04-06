.class public Lcom/oneplus/settings/ui/OPOneLabelSeekBar;
.super Landroid/widget/SeekBar;
.source "OPOneLabelSeekBar.java"


# instance fields
.field private final mMarkerHeight:F

.field private final mMarkerPaint:Landroid/graphics/Paint;

.field private mMarkerPosition:I

.field private final mMarkerWidth:F

.field private final mSeekBarBackgroundHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->op_seekbar_track_background_height_material:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mSeekBarBackgroundHeight:F

    sget p2, Lcom/android/settings/R$dimen;->balance_seekbar_center_marker_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerHeight:F

    sget p2, Lcom/android/settings/R$dimen;->temperature_seekbar_center_marker_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerWidth:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->op_temperature_seek_bar_label_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerPosition:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerHeight:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerWidth:F

    iget v0, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerHeight:F

    iget v1, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mSeekBarBackgroundHeight:F

    sub-float/2addr v0, v1

    div-float v7, v0, v2

    iget-object v8, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v4, 0x0

    iget v0, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerHeight:F

    iget v1, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mSeekBarBackgroundHeight:F

    add-float/2addr v0, v1

    div-float v5, v0, v2

    iget v6, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerWidth:F

    iget v7, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerHeight:F

    iget-object v8, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMarkerPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPOneLabelSeekBar;->mMarkerPosition:I

    return-void
.end method
