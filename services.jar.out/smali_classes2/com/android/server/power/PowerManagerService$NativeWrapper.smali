.class public Lcom/android/server/power/PowerManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1400(Ljava/lang/String;)V

    return-void
.end method

.method public nativeForceSuspend()Z
    .locals 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2200()Z

    move-result v0

    return v0
.end method

.method public nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method public nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1500(Ljava/lang/String;)V

    return-void
.end method

.method public nativeSendPowerHint(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1800(II)V

    return-void
.end method

.method public nativeSetAutoSuspend(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1700(Z)V

    return-void
.end method

.method public nativeSetFeature(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2100(II)V

    return-void
.end method

.method public nativeSetInteractive(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1600(Z)V

    return-void
.end method

.method public nativeSetPowerBoost(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1900(II)V

    return-void
.end method

.method public nativeSetPowerMode(IZ)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2000(IZ)Z

    move-result v0

    return v0
.end method
