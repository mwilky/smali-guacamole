.class Landroidx/dynamicanimation/animation/AnimationHandler$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/dynamicanimation/animation/AnimationHandler$d;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/dynamicanimation/animation/AnimationHandler$d;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler$d;)V
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$d$a;->a:Landroidx/dynamicanimation/animation/AnimationHandler$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$d$a;->a:Landroidx/dynamicanimation/animation/AnimationHandler$d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$d;->c:J

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$d$a;->a:Landroidx/dynamicanimation/animation/AnimationHandler$d;

    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler$c;->mDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$a;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$a;->a()V

    return-void
.end method
