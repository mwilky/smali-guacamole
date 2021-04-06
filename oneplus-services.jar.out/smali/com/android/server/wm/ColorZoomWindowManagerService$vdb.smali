.class Lcom/android/server/wm/ColorZoomWindowManagerService$vdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ColorZoomWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "vdb"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/ColorZoomWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ColorZoomWindowManagerService$vdb;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method
