.class Lcom/android/server/wm/vdw$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/vdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "you"
.end annotation


# instance fields
.field final you:[F

.field final zta:Landroid/view/animation/Transformation;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/vdw$you;->zta:Landroid/view/animation/Transformation;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/vdw$you;->you:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/vdw$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/vdw$you;-><init>()V

    return-void
.end method
