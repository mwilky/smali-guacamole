.class final Lcom/oneplus/screenshot/longshot/util/Configs$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/util/Configs$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/util/Configs$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Longshot.Configs"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onTouch()V

    :cond_0
    return v0
.end method
