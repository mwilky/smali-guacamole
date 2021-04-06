.class Landroidx/animation/PathKeyframes$d;
.super Landroidx/animation/PathKeyframes$IntKeyframesBase;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/animation/PathKeyframes;->createYIntKeyframes()Landroidx/animation/Keyframes$IntKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/animation/PathKeyframes;


# direct methods
.method constructor <init>(Landroidx/animation/PathKeyframes;)V
    .locals 0

    iput-object p1, p0, Landroidx/animation/PathKeyframes$d;->a:Landroidx/animation/PathKeyframes;

    invoke-direct {p0}, Landroidx/animation/PathKeyframes$IntKeyframesBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntValue(F)I
    .locals 1

    iget-object v0, p0, Landroidx/animation/PathKeyframes$d;->a:Landroidx/animation/PathKeyframes;

    invoke-virtual {v0, p1}, Landroidx/animation/PathKeyframes;->getValue(F)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
