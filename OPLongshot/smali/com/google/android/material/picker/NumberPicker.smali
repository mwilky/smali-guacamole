.class public Lcom/google/android/material/picker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/NumberPicker$d;,
        Lcom/google/android/material/picker/NumberPicker$e;,
        Lcom/google/android/material/picker/NumberPicker$CustomEditText;,
        Lcom/google/android/material/picker/NumberPicker$f;,
        Lcom/google/android/material/picker/NumberPicker$k;,
        Lcom/google/android/material/picker/NumberPicker$j;,
        Lcom/google/android/material/picker/NumberPicker$h;,
        Lcom/google/android/material/picker/NumberPicker$g;,
        Lcom/google/android/material/picker/NumberPicker$OnScrollListener;,
        Lcom/google/android/material/picker/NumberPicker$i;,
        Lcom/google/android/material/picker/NumberPicker$l;
    }
.end annotation


# static fields
.field private static final n0:I

.field private static final o0:Lcom/google/android/material/picker/NumberPicker$l;

.field private static final p0:[C


# instance fields
.field private A:I

.field private B:I

.field private final C:Landroid/widget/Scroller;

.field private final D:Landroid/widget/Scroller;

.field private E:I

.field private F:Lcom/google/android/material/picker/NumberPicker$k;

.field private G:Lcom/google/android/material/picker/NumberPicker$f;

.field private H:Lcom/google/android/material/picker/NumberPicker$e;

.field private I:F

.field private J:J

.field private K:F

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:Z

.field private final Q:I

.field private R:I

.field private S:I

.field private final T:Z

.field private final U:Landroid/graphics/drawable/Drawable;

.field private final V:I

.field private W:I

.field private a:Z

.field private a0:I

.field private b:Z

.field private b0:Z

.field private final c:Landroid/widget/ImageButton;

.field private c0:Z

.field private final d:Landroid/widget/ImageButton;

.field private d0:I

.field private final e:Landroid/widget/EditText;

.field private e0:I

.field private final f:I

.field private f0:I

.field private final g:I

.field private g0:Z

.field private final h:I

.field private h0:Z

.field private final i:I

.field private i0:Lcom/google/android/material/picker/NumberPicker$d;

.field private j:I

.field private final j0:Lcom/google/android/material/picker/NumberPicker$j;

.field private final k:Z

.field private k0:I

.field private final l:I

.field private l0:Z

.field private m:I

.field private m0:I

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/google/android/material/picker/NumberPicker$i;

.field private s:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

.field private t:Lcom/google/android/material/picker/NumberPicker$g;

.field private u:J

.field private final v:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final w:[I

.field private final x:Landroid/graphics/Paint;

.field private final y:Landroid/graphics/drawable/Drawable;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lb/a/b/a/h;->op_number_picker:I

    sput v0, Lcom/google/android/material/picker/NumberPicker;->n0:I

    new-instance v0, Lcom/google/android/material/picker/NumberPicker$l;

    invoke-direct {v0}, Lcom/google/android/material/picker/NumberPicker$l;-><init>()V

    sput-object v0, Lcom/google/android/material/picker/NumberPicker;->o0:Lcom/google/android/material/picker/NumberPicker$l;

    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/picker/NumberPicker;->p0:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lb/a/b/a/b;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->a:Z

    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->b:Z

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/google/android/material/picker/NumberPicker;->u:J

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->v:Landroid/util/SparseArray;

    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->w:[I

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->a0:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/material/picker/NumberPicker;->k0:I

    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    sget-object v3, Lb/a/b/a/l;->NumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lb/a/b/a/l;->NumberPicker_internalLayout:I

    sget v3, Lcom/google/android/material/picker/NumberPicker;->n0:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    sget v3, Lcom/google/android/material/picker/NumberPicker;->n0:I

    if-eq p3, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    sget v3, Lb/a/b/a/l;->NumberPicker_hideWheelUntilFocused:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/material/picker/NumberPicker;->l0:Z

    sget v3, Lb/a/b/a/l;->NumberPicker_opsolidColor:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->Q:I

    sget v3, Lb/a/b/a/l;->NumberPicker_selectionDivider:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iput-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    sget v4, Lb/a/b/a/l;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->V:I

    sget v3, Lb/a/b/a/l;->NumberPicker_selectionDividerWidth:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->W:I

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    sget v4, Lb/a/b/a/l;->NumberPicker_selectionDividersDistance:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->f:I

    sget v3, Lb/a/b/a/l;->NumberPicker_internalMinHeight:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->g:I

    sget v3, Lb/a/b/a/l;->NumberPicker_internalMaxHeight:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->h:I

    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->g:I

    if-eq v4, v2, :cond_4

    if-eq v3, v2, :cond_4

    if-gt v4, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    sget v3, Lb/a/b/a/l;->NumberPicker_internalMinWidth:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->i:I

    sget v3, Lb/a/b/a/l;->NumberPicker_internalMaxWidth:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->j:I

    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->i:I

    if-eq v4, v2, :cond_6

    if-eq v3, v2, :cond_6

    if-gt v4, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->j:I

    if-ne v3, v2, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->k:Z

    sget v2, Lb/a/b/a/l;->NumberPicker_virtualButtonPressedDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->y:Landroid/graphics/drawable/Drawable;

    sget v2, Lb/a/b/a/l;->NumberPicker_selectionOtherNumberColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/google/android/material/picker/NumberPicker$j;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/NumberPicker$j;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->j0:Lcom/google/android/material/picker/NumberPicker$j;

    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v4, "layout_inflater"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance p2, Lcom/google/android/material/picker/NumberPicker$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/NumberPicker$a;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    new-instance p3, Lcom/google/android/material/picker/NumberPicker$b;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/NumberPicker$b;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    const/4 v5, 0x0

    if-nez v4, :cond_8

    sget v4, Lb/a/b/a/f;->increment:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v4, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    :cond_8
    iput-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->c:Landroid/widget/ImageButton;

    :goto_4
    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v4, :cond_9

    sget v4, Lb/a/b/a/f;->decrement:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    :cond_9
    iput-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->d:Landroid/widget/ImageButton;

    :goto_5
    sget p2, Lb/a/b/a/f;->numberpicker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/picker/NumberPicker$c;

    invoke-direct {p3, p0}, Lcom/google/android/material/picker/NumberPicker$c;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    new-array p3, v1, [Landroid/text/InputFilter;

    new-instance v4, Lcom/google/android/material/picker/NumberPicker$h;

    invoke-direct {v4, p0}, Lcom/google/android/material/picker/NumberPicker$h;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    aput-object v4, p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->M:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->N:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->O:I

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->l:I

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    sget-object p2, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->R:I

    iput v2, p0, Lcom/google/android/material/picker/NumberPicker;->S:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->l:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->x:Landroid/graphics/Paint;

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v5, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->D:Landroid/widget/Scroller;

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_a
    return-void
.end method

.method private A(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    aget-object v1, v2, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->D(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private B()Z
    .locals 7

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->E:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->D:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private C(I)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->E:I

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    const/4 v2, 0x0

    if-lez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const v3, 0x7fffffff

    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private D(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->t:Lcom/google/android/material/picker/NumberPicker$g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/NumberPicker$g;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/picker/NumberPicker;->E(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static E(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private F(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    return p1
.end method

.method private G(I)I
    .locals 2

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    if-ge p1, v1, :cond_1

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private H()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private I([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->A(I)V

    return-void
.end method

.method private J()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->l:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private K()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->L()V

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->w:[I

    array-length v1, v0

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->l:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->m:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    return-void
.end method

.method private L()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->v:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->w:[I

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->w:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->G(I)I

    move-result v3

    :cond_0
    aput v3, v0, v2

    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->A(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private M(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private N(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    rem-int/2addr p1, v2

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private O(II)V
    .locals 1

    const/4 p2, 0x5

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/google/android/material/picker/NumberPicker;->r:Lcom/google/android/material/picker/NumberPicker$i;

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker$i;->a(Lcom/google/android/material/picker/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private P(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->a0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->a0:I

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->s:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/picker/NumberPicker$OnScrollListener;->a(Lcom/google/android/material/picker/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private Q(Landroid/widget/Scroller;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->B()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->P(I)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->a0:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private R()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->H:Lcom/google/android/material/picker/NumberPicker$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/picker/NumberPicker$e;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$e;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->H:Lcom/google/android/material/picker/NumberPicker$e;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->H:Lcom/google/android/material/picker/NumberPicker$e;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private S(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->G:Lcom/google/android/material/picker/NumberPicker$f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/picker/NumberPicker$f;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$f;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->G:Lcom/google/android/material/picker/NumberPicker$f;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->G:Lcom/google/android/material/picker/NumberPicker$f;

    invoke-static {v0, p1}, Lcom/google/android/material/picker/NumberPicker$f;->a(Lcom/google/android/material/picker/NumberPicker$f;Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->G:Lcom/google/android/material/picker/NumberPicker$f;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private T(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->F:Lcom/google/android/material/picker/NumberPicker$k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/picker/NumberPicker$k;

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Lcom/google/android/material/picker/NumberPicker$k;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->F:Lcom/google/android/material/picker/NumberPicker$k;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->F:Lcom/google/android/material/picker/NumberPicker$k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/picker/NumberPicker$k;->b(II)V

    return-void
.end method

.method private U()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->G:Lcom/google/android/material/picker/NumberPicker$f;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->F:Lcom/google/android/material/picker/NumberPicker$k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker$k;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->H:Lcom/google/android/material/picker/NumberPicker$e;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->j0:Lcom/google/android/material/picker/NumberPicker$j;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker$j;->c()V

    return-void
.end method

.method private V()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->H:Lcom/google/android/material/picker/NumberPicker$e;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private W()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->G:Lcom/google/android/material/picker/NumberPicker$f;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private X(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private Y(IZ)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->G(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    if-eqz p2, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/picker/NumberPicker;->O(II)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->L()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private Z()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->H()V

    return-void
.end method

.method private a0()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->x:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/google/android/material/picker/NumberPicker;->E(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    :goto_1
    if-lez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_3

    :cond_4
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->x:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_3
    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->j:I

    if-eq v1, v0, :cond_8

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->i:I

    if-le v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->j:I

    goto :goto_4

    :cond_7
    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->j:I

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_8
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method private b0()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->D(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    return p0
.end method

.method private c0()V
    .locals 4

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->w:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->a:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/picker/NumberPicker;->T(II)V

    return-void
.end method

.method private d0(Landroid/view/View;)V
    .locals 1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->F(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->Y(IZ)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->g0:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/picker/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->g0:Z

    return p1
.end method

.method static synthetic g(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->e0:I

    return p0
.end method

.method public static final getTwoDigitFormatter()Lcom/google/android/material/picker/NumberPicker$g;
    .locals 1

    sget-object v0, Lcom/google/android/material/picker/NumberPicker;->o0:Lcom/google/android/material/picker/NumberPicker$l;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->h0:Z

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/picker/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->h0:Z

    return p1
.end method

.method static synthetic j(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->d0:I

    return p0
.end method

.method static synthetic k(Lcom/google/android/material/picker/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/picker/NumberPicker;->u:J

    return-wide v0
.end method

.method static synthetic l(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->V:I

    return p0
.end method

.method static synthetic m(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    return p0
.end method

.method static synthetic n(Lcom/google/android/material/picker/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    return p0
.end method

.method static synthetic o(Lcom/google/android/material/picker/NumberPicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->y(Z)V

    return-void
.end method

.method static synthetic p(Lcom/google/android/material/picker/NumberPicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->G(I)I

    move-result p0

    return p0
.end method

.method static synthetic q(Lcom/google/android/material/picker/NumberPicker;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    return p0
.end method

.method static synthetic r(Lcom/google/android/material/picker/NumberPicker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->D(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/material/picker/NumberPicker;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/picker/NumberPicker;->S(ZJ)V

    return-void
.end method

.method static synthetic t(Lcom/google/android/material/picker/NumberPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->d0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic u()[C
    .locals 1

    sget-object v0, Lcom/google/android/material/picker/NumberPicker;->p0:[C

    return-object v0
.end method

.method static synthetic v(Lcom/google/android/material/picker/NumberPicker;)Lcom/google/android/material/picker/NumberPicker$k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->F:Lcom/google/android/material/picker/NumberPicker$k;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/material/picker/NumberPicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/google/android/material/picker/NumberPicker;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->F(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private y(Z)V
    .locals 13

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->N(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->D:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->N(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->E:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    add-int/2addr p1, v0

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    sub-int/2addr p1, v0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->Y(IZ)V

    :goto_2
    return-void
.end method

.method private z([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->A(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->D:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->E:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/picker/NumberPicker;->E:I

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->E:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    iput v1, p0, Lcom/google/android/material/picker/NumberPicker;->E:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->Q(Landroid/widget/Scroller;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->d0:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->e0:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/picker/NumberPicker$d;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0, v4}, Lcom/google/android/material/picker/NumberPicker$d;->k(II)V

    iput v3, p0, Lcom/google/android/material/picker/NumberPicker;->f0:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v1, v0, v7}, Lcom/google/android/material/picker/NumberPicker$d;->k(II)V

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->f0:I

    invoke-virtual {v1, v0, v6, v5}, Lcom/google/android/material/picker/NumberPicker$d;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->f0:I

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    invoke-virtual {v1, p1, v4}, Lcom/google/android/material/picker/NumberPicker$d;->k(II)V

    goto :goto_1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->U()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->k0:I

    if-ne v1, v0, :cond_6

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->k0:I

    return v3

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->k0:I

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->U()V

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_9

    if-ne v0, v2, :cond_8

    move p1, v3

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->y(Z)V

    :cond_9
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->U()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->U()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->i0:Lcom/google/android/material/picker/NumberPicker$d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/material/picker/NumberPicker$d;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/NumberPicker$d;-><init>(Lcom/google/android/material/picker/NumberPicker;)V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->i0:Lcom/google/android/material/picker/NumberPicker$d;

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->i0:Lcom/google/android/material/picker/NumberPicker$d;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->v:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->Q:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->U()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->l0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    int-to-float v3, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget v6, p0, Lcom/google/android/material/picker/NumberPicker;->a0:I

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/google/android/material/picker/NumberPicker;->h0:Z

    if-eqz v6, :cond_2

    sget-object v6, Landroid/widget/LinearLayout;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/picker/NumberPicker;->d0:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-boolean v5, p0, Lcom/google/android/material/picker/NumberPicker;->g0:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->y:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/LinearLayout;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->y:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/google/android/material/picker/NumberPicker;->e0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v5, p0, Lcom/google/android/material/picker/NumberPicker;->w:[I

    move v6, v4

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_9

    aget v7, v5, v6

    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->v:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    if-ne v6, v8, :cond_5

    :cond_4
    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    if-ne v6, v8, :cond_8

    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_8

    :cond_5
    iget v8, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    if-ne v6, v8, :cond_6

    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->x:Landroid/graphics/Paint;

    iget v9, p0, Lcom/google/android/material/picker/NumberPicker;->R:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v8, p0, Lcom/google/android/material/picker/NumberPicker;->b:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->x:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->x:Landroid/graphics/Paint;

    iget v9, p0, Lcom/google/android/material/picker/NumberPicker;->S:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->x:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_7
    :goto_2
    iget-object v8, p0, Lcom/google/android/material/picker/NumberPicker;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    iget v7, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->d0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->W:I

    div-int/lit8 v3, v2, 0x2

    sub-int v5, v1, v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->V:I

    add-int/2addr v3, v0

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    invoke-virtual {v2, v4, v0, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->e0:I

    iget v2, p0, Lcom/google/android/material/picker/NumberPicker;->V:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/google/android/material/picker/NumberPicker;->W:I

    if-nez v3, :cond_b

    iget-object v1, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    :cond_b
    iget-object v3, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_4
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->U()V

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->I:F

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->K:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/material/picker/NumberPicker;->J:J

    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->b0:Z

    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->c0:Z

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->I:F

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->d0:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->a0:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->j0:Lcom/google/android/material/picker/NumberPicker$j;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/NumberPicker$j;->a(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->e0:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->a0:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->j0:Lcom/google/android/material/picker/NumberPicker$j;

    invoke-virtual {p1, v2}, Lcom/google/android/material/picker/NumberPicker$j;->a(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->D:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->P(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->D:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->C:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->D:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->I:F

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->d0:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->H()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/material/picker/NumberPicker;->S(ZJ)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->e0:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->H()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/material/picker/NumberPicker;->S(ZJ)V

    goto :goto_1

    :cond_7
    iput-boolean v2, p0, Lcom/google/android/material/picker/NumberPicker;->c0:Z

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->R()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->K()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->J()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->f:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/google/android/material/picker/NumberPicker;->V:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->d0:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->e0:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->j:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->M(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->h:I

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/picker/NumberPicker;->M(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->i:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/picker/NumberPicker;->X(III)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->g:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/material/picker/NumberPicker;->X(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->L:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->b0:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->a0:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->I:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->M:I

    if-le v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->U()V

    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->P(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->K:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/picker/NumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_5
    :goto_0
    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->K:F

    goto/16 :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->V()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->W()V

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->j0:Lcom/google/android/material/picker/NumberPicker$j;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker$j;->c()V

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->L:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->O:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->N:I

    if-le v4, v5, :cond_7

    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker;->C(I)V

    invoke-direct {p0, v2}, Lcom/google/android/material/picker/NumberPicker;->P(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    iget v5, p0, Lcom/google/android/material/picker/NumberPicker;->I:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/material/picker/NumberPicker;->J:J

    sub-long/2addr v5, v7

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->M:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    iget-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->c0:Z

    if-eqz p1, :cond_8

    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->c0:Z

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->performClick()Z

    goto :goto_1

    :cond_8
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_9

    invoke-direct {p0, v3}, Lcom/google/android/material/picker/NumberPicker;->y(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->j0:Lcom/google/android/material/picker/NumberPicker$j;

    invoke-virtual {p1, v3}, Lcom/google/android/material/picker/NumberPicker$j;->b(I)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->y(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->j0:Lcom/google/android/material/picker/NumberPicker$j;

    invoke-virtual {p1, v2}, Lcom/google/android/material/picker/NumberPicker$j;->b(I)V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->B()Z

    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/material/picker/NumberPicker;->P(I)V

    :goto_2
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->L:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->L:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public performClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->Z()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->Z()V

    iput-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker;->b0:Z

    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->w:[I

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    if-gt v0, v1, :cond_0

    :goto_0
    iget p1, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    :cond_2
    :goto_1
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->m:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->z([I)V

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/google/android/material/picker/NumberPicker;->Y(IZ)V

    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    aget p2, p1, p2

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    if-gt p2, v0, :cond_2

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    goto :goto_1

    :cond_3
    :goto_2
    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/material/picker/NumberPicker;->m:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->z:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->I([I)V

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lcom/google/android/material/picker/NumberPicker;->Y(IZ)V

    iget-boolean p2, p0, Lcom/google/android/material/picker/NumberPicker;->P:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->m0:I

    aget p2, p1, p2

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    if-lt p2, v0, :cond_3

    iget p2, p0, Lcom/google/android/material/picker/NumberPicker;->A:I

    iput p2, p0, Lcom/google/android/material/picker/NumberPicker;->B:I

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->n:[Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    const v0, 0x80001

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->L()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->a0()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->W:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/picker/NumberPicker;->T:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lcom/google/android/material/picker/NumberPicker$g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->t:Lcom/google/android/material/picker/NumberPicker$g;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->t:Lcom/google/android/material/picker/NumberPicker$g;

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->L()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->p:I

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->c0()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->L()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->a0()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->o:I

    iget v0, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/material/picker/NumberPicker;->q:I

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->c0()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->L()V

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->b0()Z

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->a0()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/material/picker/NumberPicker;->u:J

    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/material/picker/NumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->s:Lcom/google/android/material/picker/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/google/android/material/picker/NumberPicker$i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->r:Lcom/google/android/material/picker/NumberPicker$i;

    return-void
.end method

.method public setSelectNumberCount(I)V
    .locals 0

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/NumberPicker;->Y(IZ)V

    return-void
.end method

.method public setWithoutSelectBoldText(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->b:Z

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker;->a:Z

    invoke-direct {p0}, Lcom/google/android/material/picker/NumberPicker;->c0()V

    return-void
.end method
