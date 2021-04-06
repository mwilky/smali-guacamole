.class Lcom/android/server/wm/o$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/o;->setQuickReplyRunning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/o;


# direct methods
.method constructor <init>(Lcom/android/server/wm/o;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/o$you;->zta:Lcom/android/server/wm/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/o$you;->zta:Lcom/android/server/wm/o;

    invoke-static {v0}, Lcom/android/server/wm/o;->dma(Lcom/android/server/wm/o;)V

    iget-object p0, p0, Lcom/android/server/wm/o$you;->zta:Lcom/android/server/wm/o;

    invoke-static {p0}, Lcom/android/server/wm/o;->obl(Lcom/android/server/wm/o;)V

    return-void
.end method
