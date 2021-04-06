.class Lcom/android/server/wm/ColorZoomWindowManagerService$oif;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithAnimLocked(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:F

.field final synthetic sis:Landroid/graphics/Rect;

.field final synthetic ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

.field final synthetic tsu:Landroid/graphics/Rect;

.field final synthetic you:Landroid/view/SurfaceControl;

.field final synthetic zta:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->zta:I

    iput-object p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->you:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->sis:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->tsu:Landroid/graphics/Rect;

    iput p6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->rtg:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$200(Lcom/android/server/wm/ColorZoomWindowManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService;->mShrinkScaleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    const-string p0, "ColorZoomWindowManagerService"

    const-string p1, "mMiniBtSelectedAnim is running - cancel mShrinkScaleAnim"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->zta:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->you:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->sis:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->tsu:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$300(Lcom/android/server/wm/ColorZoomWindowManagerService;)F

    move-result v6

    iget v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$oif;->rtg:F

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$400(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;FLandroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    :goto_0
    return-void
.end method
