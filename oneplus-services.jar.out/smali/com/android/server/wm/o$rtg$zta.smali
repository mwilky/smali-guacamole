.class Lcom/android/server/wm/o$rtg$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/o$rtg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/o$rtg;


# direct methods
.method constructor <init>(Lcom/android/server/wm/o$rtg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/o$rtg$zta;->zta:Lcom/android/server/wm/o$rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/o$rtg$zta;->zta:Lcom/android/server/wm/o$rtg;

    iget-object p0, p0, Lcom/android/server/wm/o$rtg;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->dma(Lcom/android/server/wm/o;)V

    return-void
.end method