.class public final synthetic Lcom/android/server/wm/ugm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic zta:Lcom/android/server/wm/m$zta;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/m$zta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ugm;->zta:Lcom/android/server/wm/m$zta;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ugm;->zta:Lcom/android/server/wm/m$zta;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/m$zta;->rtg(Lcom/android/server/wm/m$zta;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
