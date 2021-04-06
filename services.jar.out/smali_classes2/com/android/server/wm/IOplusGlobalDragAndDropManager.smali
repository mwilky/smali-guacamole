.class public interface abstract Lcom/android/server/wm/IOplusGlobalDragAndDropManager;
.super Ljava/lang/Object;
.source "IOplusGlobalDragAndDropManager.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "IOplusGlobalDragAndDropManager"


# virtual methods
.method public IfCancelUnSupportDrop(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideZoomWindowIfNeed(FFLcom/android/server/wm/DisplayContent;)V
    .locals 0

    return-void
.end method

.method public ifCurWinSupportDrop(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setGlobalDragAndDropCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .locals 0

    return-void
.end method
