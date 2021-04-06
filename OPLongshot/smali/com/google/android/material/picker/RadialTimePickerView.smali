.class public Lcom/google/android/material/picker/RadialTimePickerView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/RadialTimePickerView$b;,
        Lcom/google/android/material/picker/RadialTimePickerView$a;,
        Lcom/google/android/material/picker/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final V:[I

.field private static final W:[I

.field private static final a0:[I

.field private static final b0:[I

.field private static final c0:[F

.field private static final d0:[F


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:[Ljava/lang/String;

.field private N:[Ljava/lang/String;

.field private O:[Ljava/lang/String;

.field private P:I

.field private Q:F

.field private R:Lcom/google/android/material/picker/RadialTimePickerView$a;

.field private S:Z

.field T:Landroid/graphics/RectF;

.field U:Z

.field private a:[J

.field private b:Landroid/os/Vibrator;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:[Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:[Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Typeface;

.field private final l:[Landroid/content/res/ColorStateList;

.field private final m:[I

.field private final n:[I

.field private final o:[[F

.field private final p:[[F

.field private final q:[F

.field private final r:[F

.field private final s:[I

.field private final t:Lcom/google/android/material/picker/RadialTimePickerView$b;

.field private final u:Landroid/graphics/Path;

.field private v:Z

.field private w:Z

.field private x:Landroid/animation/ObjectAnimator;

.field private y:F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->V:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->W:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->a0:[I

    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->b0:[I

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->c0:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/material/picker/RadialTimePickerView;->d0:[F

    invoke-static {}, Lcom/google/android/material/picker/RadialTimePickerView;->Q()V

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v4, Lcom/google/android/material/picker/RadialTimePickerView;->c0:[F

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v3

    sget-object v4, Lcom/google/android/material/picker/RadialTimePickerView;->d0:[F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v3

    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lb/a/b/a/b;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/picker/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const-class v0, F

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->c:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->d:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->e:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->f:[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->h:Landroid/graphics/Paint;

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/graphics/Paint;

    iput-object v4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->j:Landroid/graphics/Paint;

    new-array v4, v3, [Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->l:[Landroid/content/res/ColorStateList;

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->o:[[F

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->p:[[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->q:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->r:[F

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->u:Landroid/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->S:Z

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->T:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->U:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/material/picker/RadialTimePickerView;->r(Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x1010033

    invoke-virtual {p3, p4, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->Q:F

    const-string p2, "sans-serif"

    invoke-static {p2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->k:Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v3

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object p2, p2, v3

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object p2, p2, v3

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v0

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object p2, p2, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object p2, p2, v0

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->h:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v3

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    aget-object p2, p2, v3

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v0

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    aget-object p2, p2, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    aput-object p3, p2, v2

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    aget-object p2, p2, v2

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    aget-object p2, p2, v2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->j:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lb/a/b/a/d;->timepicker_selector_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->A:I

    sget p3, Lb/a/b/a/d;->timepicker_selector_stroke:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->B:I

    sget p3, Lb/a/b/a/d;->timepicker_selector_dot_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->C:I

    sget p3, Lb/a/b/a/d;->timepicker_center_dot_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->D:I

    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    sget p4, Lb/a/b/a/d;->timepicker_text_size_normal:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v3

    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    sget p4, Lb/a/b/a/d;->timepicker_text_size_normal:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v0

    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    sget p4, Lb/a/b/a/d;->timepicker_text_size_inner:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v2

    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    sget p4, Lb/a/b/a/d;->timepicker_text_inset_normal:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v3

    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    sget p4, Lb/a/b/a/d;->timepicker_text_inset_normal:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    aput p4, p3, v0

    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    sget p4, Lb/a/b/a/d;->timepicker_text_inset_inner:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, p3, v2

    iput-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    iput-boolean v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    iput v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->P:I

    new-instance p2, Lcom/google/android/material/picker/RadialTimePickerView$b;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/RadialTimePickerView$b;-><init>(Lcom/google/android/material/picker/RadialTimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->t:Lcom/google/android/material/picker/RadialTimePickerView$b;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->g0(Landroid/view/View;Landroidx/core/view/a;)V

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->N()V

    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->M()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p0, p3, v3, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->S(IZZ)V

    invoke-direct {p0, p2, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->U(IZ)V

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->b:Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return-void

    :array_0
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x2
        0xc
    .end array-data
.end method

.method private A(Landroid/graphics/Canvas;IZ)V
    .locals 14

    move-object v13, p0

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Lcom/google/android/material/picker/RadialTimePickerView;->k:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->l:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Lcom/google/android/material/picker/RadialTimePickerView;->O:[Ljava/lang/String;

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->o:[[F

    aget-object v6, v0, v1

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->p:[[F

    aget-object v7, v0, v1

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object v8, v0, v1

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    aget v11, v0, v1

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/material/picker/RadialTimePickerView;->C(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    return-void
.end method

.method private B(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lcom/google/android/material/picker/RadialTimePickerView;->z:Z

    const/4 v3, 0x2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    iget-object v4, v0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    aget v4, v4, v2

    iget-object v5, v0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    rem-int/2addr v2, v3

    aget v6, v5, v2

    aget v2, v5, v2

    rem-int/lit8 v2, v2, 0x1e

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v10, v0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v12, v0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    aget v13, v12, v11

    aget v12, v12, v11

    rem-int/lit8 v12, v12, 0x1e

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget v12, v0, Lcom/google/android/material/picker/RadialTimePickerView;->A:I

    iget v14, v0, Lcom/google/android/material/picker/RadialTimePickerView;->I:I

    int-to-float v14, v14

    int-to-float v4, v4

    int-to-float v10, v10

    iget v15, v0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    invoke-static {v4, v10, v15}, Lb/a/b/a/p/a;->e(FFF)F

    move-result v4

    sub-float/2addr v14, v4

    int-to-float v4, v6

    int-to-float v6, v13

    iget v10, v0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    invoke-static {v4, v6, v10}, Lb/a/b/a/p/a;->f(FFF)F

    move-result v4

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    iget v10, v0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float v10, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v14

    add-float/2addr v10, v6

    iget v6, v0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float v6, v6

    move v15, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v14

    sub-float/2addr v6, v9

    iget-object v9, v0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    aget-object v9, v9, v8

    iget v10, v0, Lcom/google/android/material/picker/RadialTimePickerView;->E:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v10, v12

    move-object/from16 v12, p1

    invoke-virtual {v12, v15, v6, v10, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v15, v6, v10, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_3
    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    invoke-static {v2, v5, v1}, Lb/a/b/a/p/a;->e(FFF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    aget-object v2, v2, v11

    iget v5, v0, Lcom/google/android/material/picker/RadialTimePickerView;->F:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, v0, Lcom/google/android/material/picker/RadialTimePickerView;->C:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v12, v15, v6, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    sub-float/2addr v14, v10

    iget v5, v0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    iget v6, v0, Lcom/google/android/material/picker/RadialTimePickerView;->D:I

    int-to-double v9, v6

    mul-double/2addr v9, v1

    double-to-int v7, v9

    add-int/2addr v5, v7

    iget v7, v0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-double v9, v6

    mul-double/2addr v9, v3

    double-to-int v6, v9

    sub-int/2addr v7, v6

    float-to-double v9, v14

    mul-double/2addr v1, v9

    double-to-int v1, v1

    add-int/2addr v5, v1

    int-to-float v5, v5

    mul-double/2addr v9, v3

    double-to-int v1, v9

    sub-int/2addr v7, v1

    int-to-float v6, v7

    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->i:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v7, v1, v2

    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->E:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->B:I

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float v2, v1

    iget v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float v3, v1

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    if-nez v1, :cond_5

    const v1, -0x777778

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/google/android/material/picker/RadialTimePickerView;->T:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/google/android/material/picker/RadialTimePickerView;->o:[[F

    aget-object v3, v2, v11

    const/16 v4, 0x9

    aget v3, v3, v4

    aget-object v4, v2, v11

    aget v4, v4, v8

    aget-object v5, v2, v11

    const/4 v6, 0x3

    aget v5, v5, v6

    aget-object v2, v2, v11

    const/4 v6, 0x6

    aget v2, v2, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/google/android/material/picker/RadialTimePickerView;->T:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->E(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2d

    int-to-float v3, v1

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private C(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 13

    move-object/from16 v0, p8

    move v1, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v1, p11

    int-to-float v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    float-to-int v2, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    const/16 v3, 0xc

    rem-int/2addr v1, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    if-eq v2, v5, :cond_1

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz p12, :cond_2

    if-nez v6, :cond_2

    move-object v8, p0

    move-object v12, p1

    move-object/from16 v7, p4

    move/from16 v9, p9

    goto :goto_4

    :cond_2
    const/16 v7, 0x8

    if-eqz p10, :cond_3

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    or-int/2addr v6, v7

    invoke-static {v6}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v6

    move-object/from16 v7, p4

    invoke-virtual {v7, v6, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object v8, p0

    move/from16 v9, p9

    invoke-direct {p0, v6, v9}, Lcom/google/android/material/picker/RadialTimePickerView;->K(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    aget-object v6, p5, v5

    aget v10, p6, v5

    aget v11, p7, v5

    move-object v12, p1

    invoke-virtual {p1, v6, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object v8, p0

    return-void
.end method

.method private D(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    mul-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method private E(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private F(FFZ)I
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->J:I

    iget v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->K:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->I:I

    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->A:I

    sub-int v2, v1, v0

    add-int/2addr v1, v0

    move v0, v2

    :goto_0
    iget v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-double v2, p1

    iget p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    mul-double v4, v2, v2

    mul-double v6, p1, p1

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    int-to-double v0, v1

    cmpl-double p3, v4, v0

    if-lez p3, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    if-gez p1, :cond_3

    add-int/lit16 p1, p1, 0x168

    :cond_3
    return p1
.end method

.method private G(IZ)I
    .locals 2

    div-int/lit8 p1, p1, 0x1e

    const/16 v0, 0xc

    rem-int/2addr p1, v0

    iget-boolean v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->P:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    :goto_0
    add-int/lit8 v0, p1, 0xc

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    return v0
.end method

.method private H(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private I(FF)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v2, p1

    iget p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    mul-double/2addr v2, v2

    mul-double/2addr p1, p1

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->L:I

    int-to-double v2, v0

    cmpg-double p1, p1, v2

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private J(I)I
    .locals 0

    div-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private K(II)I
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-double v0, p1

    int-to-double p1, p2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr p1, v2

    mul-double/2addr v0, p1

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method private L(FFZZ)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->I(FF)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->F(FFZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    const-wide/16 v2, 0x3c

    invoke-direct {p0, p2, v2, v3}, Lcom/google/android/material/picker/RadialTimePickerView;->q(ZJ)V

    iget-boolean p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    invoke-static {p1, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->Y(II)I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    iget-boolean p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->z:Z

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    aget p2, p2, v1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->z:Z

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    aput p1, v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentHour()I

    move-result p1

    move v0, v1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lcom/google/android/material/picker/RadialTimePickerView;->Z(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    aget p2, p2, v2

    if-eq p2, p1, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    aput p1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    move v0, v2

    :goto_3
    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    return v1

    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->R:Lcom/google/android/material/picker/RadialTimePickerView$a;

    if-eqz v1, :cond_7

    invoke-interface {v1, v0, p1, p4}, Lcom/google/android/material/picker/RadialTimePickerView$a;->a(IIZ)V

    :cond_7
    if-nez p2, :cond_8

    if-eqz p3, :cond_b

    :cond_8
    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/b/a/j;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->b:Landroid/os/Vibrator;

    const/16 p3, 0x406

    invoke-static {p1, p2, p3}, Lb/b/a/j;->a(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->a:[J

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->b:Landroid/os/Vibrator;

    invoke-static {p1, p2}, Lb/b/a/j;->c([JLandroid/os/Vibrator;)V

    goto :goto_5

    :cond_9
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    return v2
.end method

.method private M()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->M:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->N:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->M:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->N:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->O:[Ljava/lang/String;

    return-void
.end method

.method private N()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->c:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/google/android/material/picker/RadialTimePickerView;->V:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->e:[Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v6, Lcom/google/android/material/picker/RadialTimePickerView;->W:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v6, "%02d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->d:[Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v7, Lcom/google/android/material/picker/RadialTimePickerView;->V:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->f:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/google/android/material/picker/RadialTimePickerView;->a0:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private P()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static Q()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    move v4, v1

    move v3, v2

    move v2, v0

    :goto_0
    const/16 v5, 0x169

    if-ge v0, v5, :cond_3

    sget-object v5, Lcom/google/android/material/picker/RadialTimePickerView;->b0:[I

    aput v2, v5, v0

    if-ne v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x6

    const/16 v3, 0x168

    if-ne v2, v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :cond_0
    rem-int/lit8 v3, v2, 0x1e

    if-nez v3, :cond_1

    const/16 v3, 0xe

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private S(IZZ)V
    .locals 4

    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    if-eqz p1, :cond_1

    rem-int/lit8 v0, p1, 0x18

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->H(I)Z

    move-result v1

    iget v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->P:I

    if-ne v3, v0, :cond_2

    iget-boolean v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->z:Z

    if-eq v3, v1, :cond_3

    :cond_2
    iput v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->P:I

    iput-boolean v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->z:Z

    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->M()V

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->t:Lcom/google/android/material/picker/RadialTimePickerView$b;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->k()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->R:Lcom/google/android/material/picker/RadialTimePickerView$a;

    if-eqz p2, :cond_4

    invoke-interface {p2, v2, p1, p3}, Lcom/google/android/material/picker/RadialTimePickerView$a;->a(IIZ)V

    :cond_4
    return-void
.end method

.method private U(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->R:Lcom/google/android/material/picker/RadialTimePickerView$a;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v2, p1, v0}, Lcom/google/android/material/picker/RadialTimePickerView$a;->a(IIZ)V

    :cond_0
    return-void
.end method

.method private X(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->q(ZJ)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->M()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->t:Lcom/google/android/material/picker/RadialTimePickerView$b;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->k()V

    return-void
.end method

.method private static Y(II)I
    .locals 3

    div-int/lit8 v0, p0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v1, v0, 0x1e

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    if-ne p0, v0, :cond_3

    add-int/lit8 v0, v0, -0x1e

    goto :goto_1

    :cond_1
    sub-int p1, p0, v0

    sub-int p0, v1, p0

    if-ge p1, p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method private static Z(I)I
    .locals 1

    sget-object v0, Lcom/google/android/material/picker/RadialTimePickerView;->b0:[I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    aget p0, v0, p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/picker/RadialTimePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/picker/RadialTimePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/picker/RadialTimePickerView;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->A:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/picker/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->D(I)I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/picker/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->E(I)I

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/picker/RadialTimePickerView;FFZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->F(FFZ)I

    move-result p0

    return p0
.end method

.method static synthetic j(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->Y(II)I

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/google/android/material/picker/RadialTimePickerView;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->I(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/google/android/material/picker/RadialTimePickerView;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->G(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/google/android/material/picker/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->J(I)I

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->P:I

    return p0
.end method

.method static synthetic o(Lcom/google/android/material/picker/RadialTimePickerView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->H(I)Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lcom/google/android/material/picker/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->I:I

    return p0
.end method

.method private q(ZJ)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    const-string p1, "HoursToMinutes"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->x:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private static s(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 0

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result p4

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result p0

    add-float/2addr p4, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p4, p0

    sub-float/2addr p3, p4

    const/4 p0, 0x0

    :goto_0
    const/16 p4, 0xc

    if-ge p0, p4, :cond_0

    sget-object p4, Lcom/google/android/material/picker/RadialTimePickerView;->c0:[F

    aget p4, p4, p0

    mul-float/2addr p4, p1

    sub-float p4, p2, p4

    aput p4, p5, p0

    sget-object p4, Lcom/google/android/material/picker/RadialTimePickerView;->d0:[F

    aget p4, p4, p0

    mul-float/2addr p4, p1

    sub-float p4, p3, p4

    aput p4, p6, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t()V
    .locals 11

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->I:I

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float v5, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->o:[[F

    aget-object v8, v0, v2

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->p:[[F

    aget-object v9, v0, v2

    invoke-static/range {v3 .. v9}, Lcom/google/android/material/picker/RadialTimePickerView;->s(Landroid/graphics/Paint;FFFF[F[F)V

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->I:I

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object v4, v1, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float v6, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float v7, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    aget v0, v0, v3

    int-to-float v8, v0

    iget-object v9, p0, Lcom/google/android/material/picker/RadialTimePickerView;->q:[F

    iget-object v10, p0, Lcom/google/android/material/picker/RadialTimePickerView;->r:[F

    invoke-static/range {v4 .. v10}, Lcom/google/android/material/picker/RadialTimePickerView;->s(Landroid/graphics/Paint;FFFF[F[F)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 10

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->I:I

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float v5, v0

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->o:[[F

    aget-object v8, v0, v2

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->p:[[F

    aget-object v9, v0, v2

    invoke-static/range {v3 .. v9}, Lcom/google/android/material/picker/RadialTimePickerView;->s(Landroid/graphics/Paint;FFFF[F[F)V

    return-void
.end method

.method private v(Landroid/graphics/Canvas;F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float p2, p2

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->D:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private w(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->I:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private x(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v1, p3

    float-to-int p3, v1

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->y(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->y(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private y(Landroid/graphics/Canvas;IZ)V
    .locals 16

    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    const/4 v14, 0x0

    aget v0, v0, v14

    int-to-float v2, v0

    iget-object v3, v13, Lcom/google/android/material/picker/RadialTimePickerView;->k:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->l:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v14

    iget-object v5, v13, Lcom/google/android/material/picker/RadialTimePickerView;->M:[Ljava/lang/String;

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->o:[[F

    aget-object v6, v0, v14

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->p:[[F

    aget-object v7, v0, v14

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    const/4 v15, 0x1

    if-eqz p3, :cond_0

    iget-boolean v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->z:Z

    if-nez v0, :cond_0

    move v10, v15

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_0
    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    aget v11, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/material/picker/RadialTimePickerView;->C(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    iget-boolean v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    if-eqz v0, :cond_2

    iget-object v5, v13, Lcom/google/android/material/picker/RadialTimePickerView;->N:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->m:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Lcom/google/android/material/picker/RadialTimePickerView;->k:Landroid/graphics/Typeface;

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->l:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v6, v13, Lcom/google/android/material/picker/RadialTimePickerView;->q:[F

    iget-object v7, v13, Lcom/google/android/material/picker/RadialTimePickerView;->r:[F

    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->g:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    if-eqz p3, :cond_1

    iget-boolean v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->z:Z

    if-eqz v0, :cond_1

    move v10, v15

    goto :goto_1

    :cond_1
    move v10, v14

    :goto_1
    iget-object v0, v13, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    aget v11, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/material/picker/RadialTimePickerView;->C(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    :cond_2
    return-void
.end method

.method private z(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int p3, v0

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->A(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->A(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method


# virtual methods
.method public O(IIZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    if-eq v0, p3, :cond_0

    iput-boolean p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->M()V

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->S(IZZ)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/picker/RadialTimePickerView;->U(IZ)V

    return-void
.end method

.method public R(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->P:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->P:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->t:Lcom/google/android/material/picker/RadialTimePickerView$b;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->k()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public T(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ClockView does not support showing item "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RadialTimePickerView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->W(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/material/picker/RadialTimePickerView;->V(Z)V

    :goto_0
    return-void
.end method

.method public V(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->X(ZZ)V

    return-void
.end method

.method public W(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->X(ZZ)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->t:Lcom/google/android/material/picker/RadialTimePickerView$b;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->h(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAmOrPm()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->P:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->z:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->G(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->w:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentMinute()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->s:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->J(I)I

    move-result v0

    return v0
.end method

.method public getHoursToMinutes()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->S:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->Q:F

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/RadialTimePickerView;->w(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->u:Landroid/graphics/Path;

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->B(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->x(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->z(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->v(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget p4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->G:I

    sub-int/2addr p4, p1

    iget p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->H:I

    sub-int/2addr p1, p3

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->I:I

    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->n:[I

    aget p4, p3, p2

    sub-int p4, p1, p4

    iget p5, p0, Lcom/google/android/material/picker/RadialTimePickerView;->A:I

    sub-int/2addr p4, p5

    iput p4, p0, Lcom/google/android/material/picker/RadialTimePickerView;->J:I

    const/4 p4, 0x0

    aget v0, p3, p4

    sub-int v0, p1, v0

    add-int/2addr v0, p5

    iput v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->K:I

    aget p4, p3, p4

    aget p3, p3, p2

    add-int/2addr p4, p3

    div-int/2addr p4, p2

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->L:I

    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->t()V

    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->u()V

    iget-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->t:Lcom/google/android/material/picker/RadialTimePickerView$b;

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->k()V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/picker/RadialTimePickerView;->F(FFZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/picker/RadialTimePickerView;->P()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->S:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_6

    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->U:Z

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/picker/RadialTimePickerView;->U:Z

    if-nez v0, :cond_4

    move v0, v1

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean v3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->U:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v4, p1, v2, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->L(FFZZ)Z

    move-result p1

    or-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->U:Z

    :cond_6
    return v1
.end method

.method r(Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lb/a/b/a/l;->TimePicker:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/a/b/a/l;->TimePicker_numbersTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    sget p3, Lb/a/b/a/l;->TimePicker_numbersInnerTextColor:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->l:[Landroid/content/res/ColorStateList;

    const v2, -0xff01

    if-nez p2, :cond_0

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    const/4 v3, 0x0

    aput-object p2, v1, v3

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->l:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    if-nez p3, :cond_1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :cond_1
    aput-object p3, p2, v1

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->l:[Landroid/content/res/ColorStateList;

    const/4 p3, 0x1

    aget-object v1, p2, v3

    aput-object v1, p2, p3

    sget p2, Lb/a/b/a/l;->TimePicker_android_numbersSelectorColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const/16 p3, 0x28

    if-eqz p2, :cond_2

    invoke-static {p3}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object v1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :cond_2
    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->h:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p3}, Lcom/google/android/material/internal/ViewUtils;->getViewState(I)[I

    move-result-object p2

    iput v2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->E:I

    iget-object p3, p0, Lcom/google/android/material/picker/RadialTimePickerView;->l:[Landroid/content/res/ColorStateList;

    aget-object p3, p3, v3

    invoke-virtual {p3, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->F:I

    iget-object p2, p0, Lcom/google/android/material/picker/RadialTimePickerView;->j:Landroid/graphics/Paint;

    sget p3, Lb/a/b/a/l;->TimePicker_android_numbersBackgroundColor:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/b/a/c;->timepicker_default_numbers_background_color_material:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setCurrentHour(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/picker/RadialTimePickerView;->S(IZZ)V

    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/RadialTimePickerView;->U(IZ)V

    return-void
.end method

.method public setHoursToMinutes(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->y:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->S:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnValueSelectedListener(Lcom/google/android/material/picker/RadialTimePickerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/RadialTimePickerView;->R:Lcom/google/android/material/picker/RadialTimePickerView$a;

    return-void
.end method
