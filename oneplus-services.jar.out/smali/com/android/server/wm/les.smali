.class public Lcom/android/server/wm/les;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final you:Ljava/lang/String; = "ColorZoomAppController"


# instance fields
.field private zta:Lcom/android/server/wm/ColorZoomWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/les;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    return-void
.end method


# virtual methods
.method public you(Landroid/os/RemoteCallbackList;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/oplus/zoomwindow/IOplusZoomAppObserver;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string p0, "ColorZoomAppController"

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->getInstance()Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->enableDebugLifeCycle()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    :try_start_1
    invoke-interface/range {v3 .. v8}, Lcom/oplus/zoomwindow/IOplusZoomAppObserver;->notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Error notifyShowCompatibilityToast changed event."

    invoke-static {p0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "Exception notifyShowCompatibilityToast changed event."

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public zta(Landroid/os/RemoteCallbackList;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/oplus/zoomwindow/IOplusZoomAppObserver;",
            ">;",
            "Lcom/oplus/zoomwindow/OplusZoomWindowInfo;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->getInstance()Lcom/android/server/wm/ColorZoomWindowDebugConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ColorZoomWindowDebugConfig;->enableDebugLifeCycle()V

    const-string p0, "ColorZoomAppController"

    if-nez p2, :cond_0

    const-string p1, "Failed to notifyControlViewChange"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v2, p2}, Lcom/oplus/zoomwindow/IOplusZoomAppObserver;->notifyControlViewChange(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Error notifyControlViewChange changed event."

    invoke-static {p0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "Exception notifyControlViewChange changed event."

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
