.class final Lcom/android/server/wm/p$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/p;


# direct methods
.method constructor <init>(Lcom/android/server/wm/p;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/p$sis;->zta:Lcom/android/server/wm/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/p$sis;->zta:Lcom/android/server/wm/p;

    invoke-static {p0}, Lcom/android/server/wm/p;->sis(Lcom/android/server/wm/p;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/p$sis;->zta:Lcom/android/server/wm/p;

    invoke-static {p0}, Lcom/android/server/wm/p;->you(Lcom/android/server/wm/p;)V

    :goto_0
    return-void
.end method
