.class public final synthetic Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$_G1PjxMa22pAIRMzYCwyomX8uhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$_G1PjxMa22pAIRMzYCwyomX8uhk;->f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$_G1PjxMa22pAIRMzYCwyomX8uhk;->f$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->lambda$scheduleWriteSettingsLocked$1$UsbProfileGroupSettingsManager()V

    return-void
.end method
