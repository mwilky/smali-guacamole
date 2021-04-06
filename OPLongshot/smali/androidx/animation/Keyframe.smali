.class public abstract Landroidx/animation/Keyframe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/animation/Keyframe$FloatKeyframe;,
        Landroidx/animation/Keyframe$IntKeyframe;,
        Landroidx/animation/Keyframe$ObjectKeyframe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field mFraction:F

.field mHasValue:Z

.field private mInterpolator:Landroidx/animation/d;

.field mValueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field mValueWasSetOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/animation/Keyframe;->mInterpolator:Landroidx/animation/d;

    return-void
.end method

.method public static ofFloat(F)Landroidx/animation/Keyframe$FloatKeyframe;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Landroidx/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofFloat(FF)Landroidx/animation/Keyframe$FloatKeyframe;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Landroidx/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method

.method public static ofInt(F)Landroidx/animation/Keyframe$IntKeyframe;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0}, Landroidx/animation/Keyframe$IntKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofInt(FI)Landroidx/animation/Keyframe$IntKeyframe;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0, p1}, Landroidx/animation/Keyframe$IntKeyframe;-><init>(FI)V

    return-object v0
.end method

.method public static ofObject(F)Landroidx/animation/Keyframe$ObjectKeyframe;
    .locals 2
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(F)",
            "Landroidx/animation/Keyframe$ObjectKeyframe<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/animation/Keyframe$ObjectKeyframe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static ofObject(FLjava/lang/Object;)Landroidx/animation/Keyframe$ObjectKeyframe;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(FTT;)",
            "Landroidx/animation/Keyframe$ObjectKeyframe<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/animation/Keyframe$ObjectKeyframe;

    invoke-direct {v0, p0, p1}, Landroidx/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Landroidx/animation/Keyframe;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/animation/Keyframe;->clone()Landroidx/animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public getFraction()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Landroidx/animation/Keyframe;->mFraction:F

    return v0
.end method

.method public getInterpolator()Landroidx/animation/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/animation/Keyframe;->mInterpolator:Landroidx/animation/d;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public hasValue()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/animation/Keyframe;->mHasValue:Z

    return v0
.end method

.method public setFraction(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iput p1, p0, Landroidx/animation/Keyframe;->mFraction:F

    return-void
.end method

.method public setInterpolator(Landroidx/animation/d;)V
    .locals 0
    .param p1    # Landroidx/animation/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/animation/Keyframe;->mInterpolator:Landroidx/animation/d;

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method setValueWasSetOnStart(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/animation/Keyframe;->mValueWasSetOnStart:Z

    return-void
.end method

.method valueWasSetOnStart()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/animation/Keyframe;->mValueWasSetOnStart:Z

    return v0
.end method
