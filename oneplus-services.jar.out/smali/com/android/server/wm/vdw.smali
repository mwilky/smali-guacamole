.class public Lcom/android/server/wm/vdw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/vdw$you;
    }
.end annotation


# static fields
.field private static final wtn:Ljava/lang/String; = "ColorZoomWindowAnimationSpec"


# instance fields
.field private final bio:Landroid/graphics/Rect;

.field private final cno:Landroid/graphics/Rect;

.field private final igw:F

.field private kth:I

.field private final rtg:Z

.field private final sis:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/vdw$you;",
            ">;"
        }
    .end annotation
.end field

.field private final ssp:Landroid/graphics/Rect;

.field private final tsu:Z

.field private final you:Landroid/graphics/Point;

.field private zta:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIZF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdw;->you:Landroid/graphics/Point;

    sget-object v0, Lcom/android/server/wm/cno;->zta:Lcom/android/server/wm/cno;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/vdw;->sis:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdw;->ssp:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdw;->cno:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdw;->bio:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/vdw;->zta:Landroid/view/animation/Animation;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/vdw;->you:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Point;->set(II)V

    :cond_0
    iput p8, p0, Lcom/android/server/wm/vdw;->igw:F

    iput-boolean p5, p0, Lcom/android/server/wm/vdw;->tsu:Z

    iput-boolean p7, p0, Lcom/android/server/wm/vdw;->rtg:Z

    iput p6, p0, Lcom/android/server/wm/vdw;->kth:I

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/vdw;->ssp:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/vdw;->cno:Landroid/graphics/Rect;

    invoke-virtual {p0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/vdw;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIZF)V

    return-void
.end method

.method static synthetic tsu()Lcom/android/server/wm/vdw$you;
    .locals 2

    new-instance v0, Lcom/android/server/wm/vdw$you;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/vdw$you;-><init>(Lcom/android/server/wm/vdw$zta;)V

    return-object v0
.end method

.method private static you(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .locals 3

    instance-of v0, p0, Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/animation/TranslateAnimation;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    instance-of v2, v1, Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/animation/TranslateAnimation;

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zta(Landroid/view/animation/Interpolator;)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3e800000    # 0.25f

    :goto_0
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    add-float/2addr v0, v1

    goto :goto_1

    :cond_0
    sub-float/2addr v0, v1

    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/vdw;->sis:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/vdw$you;

    iget-object v1, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/vdw;->zta:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object p3, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/vdw;->you:Landroid/graphics/Point;

    iget v1, p4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p3, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p3, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, v0, Lcom/android/server/wm/vdw$you;->you:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p3, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "apply transformation="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " position = ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/vdw;->you:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/vdw;->you:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " mStackClipMode = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/server/wm/vdw;->kth:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " stackBounds = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/vdw;->ssp:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "ColorZoomWindowAnimationSpec"

    invoke-static {v1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p3, p0, Lcom/android/server/wm/vdw;->kth:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    iget-object p3, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/vdw;->bio:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/vdw;->ssp:Landroid/graphics/Rect;

    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/server/wm/vdw;->bio:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ater mTmpRect = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/vdw;->bio:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " taskBounds = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/vdw;->cno:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/wm/vdw;->ssp:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/server/wm/vdw;->bio:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    if-eqz v2, :cond_3

    iget p0, p0, Lcom/android/server/wm/vdw;->igw:F

    const/4 p3, 0x0

    cmpl-float p3, p0, p3

    if-lez p3, :cond_3

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .locals 5

    iget-object p0, p0, Lcom/android/server/wm/vdw;->zta:Landroid/view/animation/Animation;

    invoke-static {p0}, Lcom/android/server/wm/vdw;->you(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/vdw;->zta(Landroid/view/animation/Interpolator;)F

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v3

    long-to-float p0, v3

    mul-float/2addr p0, v0

    float-to-long v3, p0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x78

    sub-long/2addr v1, v3

    return-wide v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/vdw;->tsu:Z

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/vdw;->zta:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/vdw;->zta:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdw;->zta:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getShowWallpaper()Z

    move-result p0

    return p0
.end method

.method public needsEarlyWakeup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/vdw;->rtg:Z

    return p0
.end method

.method public rtg(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/wm/vdw;->zta:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public sis()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/vdw;->zta:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result p0

    return p0
.end method
