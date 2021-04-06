.class public Lcom/oneplus/longshot/ILongScreenshot$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/longshot/ILongScreenshot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/longshot/ILongScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dumpViewInfo(Ljava/lang/String;Lcom/oneplus/longshot/IViewPropCallback;)V
    .locals 0

    return-void
.end method

.method public getConfigValues()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isHandleState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMoveState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyLongshotScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public notifyScroll(Z)V
    .locals 0

    return-void
.end method

.method public notifyScrollViewSearchComplete(III)V
    .locals 0

    return-void
.end method

.method public notifyScrollViewTop(I)V
    .locals 0

    return-void
.end method

.method public notifyWindowLayerChange(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onUnscrollableView()V
    .locals 0

    return-void
.end method

.method public start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .locals 0

    return-void
.end method

.method public stopLongshot(I)V
    .locals 0

    return-void
.end method
