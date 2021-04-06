.class public Lcom/oneplus/longshot/ILongScreenshotCallback$Default;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/longshot/ILongScreenshotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/longshot/ILongScreenshotCallback;
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

.method public isTopActivityDisplayCompat(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyMove()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
