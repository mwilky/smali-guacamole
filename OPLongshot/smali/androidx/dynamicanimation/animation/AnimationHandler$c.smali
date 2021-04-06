.class abstract Landroidx/dynamicanimation/animation/AnimationHandler$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field final mDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$a;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$c;->mDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$a;

    return-void
.end method


# virtual methods
.method abstract postFrameCallback()V
.end method
