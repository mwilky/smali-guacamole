.class Landroidx/dynamicanimation/animation/AnimationHandler$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/dynamicanimation/animation/AnimationHandler;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$a;->a:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$a;->a:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->e:J

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$a;->a:Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-wide v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->e:J

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;->c(J)V

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$a;->a:Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$a;->a:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;->e()Landroidx/dynamicanimation/animation/AnimationHandler$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$c;->postFrameCallback()V

    :cond_0
    return-void
.end method
