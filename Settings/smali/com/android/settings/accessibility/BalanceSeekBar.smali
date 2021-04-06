.class public Lcom/android/settings/accessibility/BalanceSeekBar;
.super Landroid/widget/SeekBar;
.source "BalanceSeekBar.java"


# static fields
.field static final SNAP_TO_PERCENTAGE:F = 0.03f


# instance fields
.field private mCenter:I

.field private final mCenterMarkerPaint:Landroid/graphics/Paint;

.field private final mCenterMarkerRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private final mListenerLock:Ljava/lang/Object;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSnapThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/BalanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/accessibility/BalanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    new-instance p2, Lcom/android/settings/accessibility/BalanceSeekBar$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/BalanceSeekBar$1;-><init>(Lcom/android/settings/accessibility/BalanceSeekBar;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    sget p3, Lcom/android/settings/R$dimen;->balance_seekbar_center_marker_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget p4, Lcom/android/settings/R$dimen;->balance_seekbar_center_marker_height:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p4, 0x0

    invoke-direct {p2, p4, p4, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->op_control_icon_color_disable:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/BalanceSeekBar;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/BalanceSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/BalanceSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mSnapThreshold:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method getProxySeekBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenterMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mCenter:I

    int-to-float p1, p1

    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mSnapThreshold:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
