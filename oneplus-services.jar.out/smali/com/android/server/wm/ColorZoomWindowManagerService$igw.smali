.class Lcom/android/server/wm/ColorZoomWindowManagerService$igw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ColorZoomWindowManagerService;->updateZoomWithPanAnimLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityStack;I)V
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

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput p2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->zta:I

    iput-object p3, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->you:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->sis:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->tsu:Landroid/graphics/Rect;

    iput p6, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->rtg:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->ssp:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget v1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->zta:I

    iget-object v2, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->you:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->sis:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->tsu:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$igw;->rtg:F

    move v6, v7

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->access$400(Lcom/android/server/wm/ColorZoomWindowManagerService;ILandroid/view/SurfaceControl;FLandroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    return-void
.end method
