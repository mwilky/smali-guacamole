.class Lcom/android/server/wm/FixedRotationAnimationController$1;
.super Ljava/lang/Object;
.source "FixedRotationAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FixedRotationAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mTransformation:Landroid/view/animation/Transformation;

.field final synthetic this$0:Lcom/android/server/wm/FixedRotationAnimationController;

.field final synthetic val$animation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FixedRotationAnimationController;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->this$0:Lcom/android/server/wm/FixedRotationAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/view/animation/Transformation;

    invoke-direct {p2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController$1;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
