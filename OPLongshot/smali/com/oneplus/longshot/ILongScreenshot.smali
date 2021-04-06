.class public interface abstract Lcom/oneplus/longshot/ILongScreenshot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/longshot/ILongScreenshot$Stub;,
        Lcom/oneplus/longshot/ILongScreenshot$Default;
    }
.end annotation


# virtual methods
.method public abstract dumpViewInfo(Ljava/lang/String;Lcom/oneplus/longshot/IViewPropCallback;)V
.end method

.method public abstract getConfigValues()Ljava/lang/String;
.end method

.method public abstract isHandleState()Z
.end method

.method public abstract isMoveState()Z
.end method

.method public abstract notifyLongshotScrollChanged(IIII)V
.end method

.method public abstract notifyScroll(Z)V
.end method

.method public abstract notifyScrollViewSearchComplete(III)V
.end method

.method public abstract notifyScrollViewTop(I)V
.end method

.method public abstract notifyWindowLayerChange(Landroid/os/IBinder;)V
.end method

.method public abstract onUnscrollableView()V
.end method

.method public abstract start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
.end method

.method public abstract stopLongshot(I)V
.end method
