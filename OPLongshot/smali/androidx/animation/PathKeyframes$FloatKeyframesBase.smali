.class abstract Landroidx/animation/PathKeyframes$FloatKeyframesBase;
.super Landroidx/animation/PathKeyframes$SimpleKeyframes;
.source ""

# interfaces
.implements Landroidx/animation/Keyframes$FloatKeyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FloatKeyframesBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/animation/PathKeyframes$SimpleKeyframes<",
        "Ljava/lang/Float;",
        ">;",
        "Landroidx/animation/Keyframes$FloatKeyframes;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/animation/PathKeyframes$SimpleKeyframes;-><init>(Landroidx/animation/PathKeyframes$a;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Float;
    .locals 0

    invoke-interface {p0, p1}, Landroidx/animation/Keyframes$FloatKeyframes;->getFloatValue(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/animation/PathKeyframes$FloatKeyframesBase;->getValue(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
