.class Landroidx/animation/PropertyValuesHolder$PointFToIntArray;
.super Landroidx/animation/TypeConverter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointFToIntArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/animation/TypeConverter<",
        "Landroid/graphics/PointF;",
        "[I>;"
    }
.end annotation


# instance fields
.field private mCoordinates:[I


# direct methods
.method constructor <init>()V
    .locals 2

    const-class v0, Landroid/graphics/PointF;

    const-class v1, [I

    invoke-direct {p0, v0, v1}, Landroidx/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Landroidx/animation/PropertyValuesHolder$PointFToIntArray;->convert(Landroid/graphics/PointF;)[I

    move-result-object p1

    return-object p1
.end method

.method public convert(Landroid/graphics/PointF;)[I
    .locals 3

    iget-object v0, p0, Landroidx/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroidx/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p1, p0, Landroidx/animation/PropertyValuesHolder$PointFToIntArray;->mCoordinates:[I

    return-object p1
.end method
