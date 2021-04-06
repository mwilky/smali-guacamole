.class public Lcom/google/android/material/transition/MaterialContainerTransform;
.super Landroid/transition/Transition;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialContainerTransform$d;,
        Lcom/google/android/material/transition/MaterialContainerTransform$c;,
        Lcom/google/android/material/transition/MaterialContainerTransform$e;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field private static final DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field private static final DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field private static final DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field public static final FADE_MODE_CROSS:I = 0x2

.field public static final FADE_MODE_IN:I = 0x0

.field public static final FADE_MODE_OUT:I = 0x1

.field public static final FADE_MODE_THROUGH:I = 0x3

.field public static final FIT_MODE_AUTO:I = 0x0

.field public static final FIT_MODE_HEIGHT:I = 0x2

.field public static final FIT_MODE_WIDTH:I = 0x1

.field private static final PROP_BOUNDS:Ljava/lang/String; = "materialContainerTransition:bounds"

.field private static final PROP_SHAPE_APPEARANCE:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field public static final TRANSITION_DIRECTION_AUTO:I = 0x0

.field public static final TRANSITION_DIRECTION_ENTER:I = 0x1

.field public static final TRANSITION_DIRECTION_RETURN:I = 0x2

.field private static final TRANSITION_PROPS:[Ljava/lang/String;


# instance fields
.field private containerColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private drawDebugEnabled:Z

.field private drawingViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private fadeMode:I

.field private fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fitMode:I

.field private holdAtEndEnabled:Z

.field private scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scrimColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private startView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private startViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private transitionDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "materialContainerTransition:bounds"

    const-string v1, "materialContainerTransition:shapeAppearance"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const/4 v7, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v2, v7, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v4, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v5, v7, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v10, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v11, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v13, v3, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v5, v4, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v6, v4, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v8, v4, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    const/16 v20, 0x0

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v20}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v10, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v11, v7, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v13, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    const v1, 0x1020002

    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-static {p1}, Lcom/google/android/material/transition/MaterialContainerTransform;->getDefaultScrimColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/transition/MaterialContainerTransform;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    return p0
.end method

.method private buildThresholdsGroup(Z)Lcom/google/android/material/transition/MaterialContainerTransform$d;
    .locals 2

    invoke-virtual {p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    instance-of v1, v0, Landroid/transition/ArcMotion;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/material/transition/MaterialArcMotion;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    sget-object v1, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/MaterialContainerTransform$d;Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$d;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    sget-object v1, Lcom/google/android/material/transition/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    goto :goto_0
.end method

.method private static calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-object p0

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method private static captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/material/transition/TransitionUtils;->convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    return-object p0
.end method

.method private static captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p0    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/google/android/material/transition/TransitionUtils;->findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->N(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/google/android/material/transition/TransitionUtils;->getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    :goto_2
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "materialContainerTransition:bounds"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    const-string p2, "materialContainerTransition:shapeAppearance"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private static getDefaultScrimColor(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    sget v0, Lb/a/b/a/b;->scrimBackground:I

    sget v1, Lb/a/b/a/c;->mtrl_scrim_color:I

    invoke-static {p0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lb/a/b/a/m/a;->a(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/transition/MaterialContainerTransform;->getTransitionShapeAppearanceResId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->b(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->m()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p1, p0, Lcom/google/android/material/shape/j;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/google/android/material/shape/j;

    invoke-interface {p0}, Lcom/google/android/material/shape/j;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->a()Lcom/google/android/material/shape/ShapeAppearanceModel$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$b;->m()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    return-object p0
.end method

.method private getThresholdsOrDefault(ZLcom/google/android/material/transition/MaterialContainerTransform$d;Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$d;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    new-instance p1, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->b(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->d(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/android/material/transition/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    return-object p1
.end method

.method private static getTransitionShapeAppearanceResId(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lb/a/b/a/b;->transitionShapeAppearance:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid transition direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v2

    :cond_2
    invoke-static {p2}, Lcom/google/android/material/transition/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result p2

    invoke-static {p1}, Lcom/google/android/material/transition/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 24
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v5, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v5

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    iget v7, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_2
    iget v7, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    invoke-static {v3, v7}, Lcom/google/android/material/transition/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    move-object v3, v2

    move-object/from16 v2, v23

    :goto_1
    iget-object v7, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "materialContainerTransition:bounds"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/graphics/RectF;

    iget-object v7, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/graphics/RectF;

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "materialContainerTransition:shapeAppearance"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v0, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {v2}, Lcom/google/android/material/transition/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-static {v2, v3, v1, v0}, Lcom/google/android/material/transition/MaterialContainerTransform;->calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v10, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v13, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {v6, v10, v13}, Lcom/google/android/material/transition/MaterialContainerTransform;->isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$e;

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    iget v15, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    iget v12, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    iget v7, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    invoke-static {v7, v0}, Lcom/google/android/material/transition/FadeModeEvaluators;->get(IZ)Lcom/google/android/material/transition/a;

    move-result-object v18

    iget v7, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    invoke-static {v7, v0, v10, v13}, Lcom/google/android/material/transition/FitModeEvaluators;->get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/c;

    move-result-object v19

    invoke-direct {v6, v0}, Lcom/google/android/material/transition/MaterialContainerTransform;->buildThresholdsGroup(Z)Lcom/google/android/material/transition/MaterialContainerTransform$d;

    move-result-object v20

    iget-boolean v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    const/16 v22, 0x0

    move-object v7, v1

    move/from16 v21, v9

    move-object v9, v4

    move/from16 v16, v12

    move-object v12, v5

    move/from16 v17, v0

    invoke-direct/range {v7 .. v22}, Lcom/google/android/material/transition/MaterialContainerTransform$e;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;IIZLcom/google/android/material/transition/a;Lcom/google/android/material/transition/c;Lcom/google/android/material/transition/MaterialContainerTransform$d;ZLcom/google/android/material/transition/MaterialContainerTransform$a;)V

    iget v0, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v0, v7, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$a;

    invoke-direct {v0, v6, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$a;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Lcom/google/android/material/transition/MaterialContainerTransform$e;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$b;

    move-object v0, v8

    move-object v3, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$b;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/MaterialContainerTransform$e;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v7

    :cond_3
    :goto_2
    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getContainerColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    return v0
.end method

.method public getDrawingViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    return-object v0
.end method

.method public getEndViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    return v0
.end method

.method public getFadeMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-object v0
.end method

.method public getFitMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-object v0
.end method

.method public getScrimColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-object v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    return-object v0
.end method

.method public getStartViewId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    return v0
.end method

.method public getTransitionDirection()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    return v0
.end method

.method public setContainerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->containerColor:I

    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawDebugEnabled:Z

    return-void
.end method

.method public setDrawingViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->drawingViewId:I

    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endView:Landroid/view/View;

    return-void
.end method

.method public setEndViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->endViewId:I

    return-void
.end method

.method public setFadeMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeMode:I

    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public setFitMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->fitMode:I

    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->holdAtEndEnabled:Z

    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->scrimColor:I

    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/MaterialContainerTransform$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startView:Landroid/view/View;

    return-void
.end method

.method public setStartViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->startViewId:I

    return-void
.end method

.method public setTransitionDirection(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->transitionDirection:I

    return-void
.end method
