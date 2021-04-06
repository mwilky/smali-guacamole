.class Landroidx/animation/Keyframe$ObjectKeyframe;
.super Landroidx/animation/Keyframe;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectKeyframe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/animation/Keyframe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/animation/Keyframe;-><init>()V

    iput p1, p0, Landroidx/animation/Keyframe;->mFraction:F

    iput-object p2, p0, Landroidx/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/animation/Keyframe;->mHasValue:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-class p1, Ljava/lang/Object;

    :goto_1
    iput-object p1, p0, Landroidx/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public clone()Landroidx/animation/Keyframe$ObjectKeyframe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/animation/Keyframe$ObjectKeyframe<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/animation/Keyframe$ObjectKeyframe;

    invoke-virtual {p0}, Landroidx/animation/Keyframe;->getFraction()F

    move-result v1

    invoke-virtual {p0}, Landroidx/animation/Keyframe;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Landroidx/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    iget-boolean v1, p0, Landroidx/animation/Keyframe;->mValueWasSetOnStart:Z

    iput-boolean v1, v0, Landroidx/animation/Keyframe;->mValueWasSetOnStart:Z

    invoke-virtual {p0}, Landroidx/animation/Keyframe;->getInterpolator()Landroidx/animation/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/animation/Keyframe;->setInterpolator(Landroidx/animation/d;)V

    return-object v0
.end method

.method public bridge synthetic clone()Landroidx/animation/Keyframe;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/Keyframe$ObjectKeyframe;->clone()Landroidx/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/Keyframe$ObjectKeyframe;->clone()Landroidx/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/animation/Keyframe;->mHasValue:Z

    return-void
.end method
