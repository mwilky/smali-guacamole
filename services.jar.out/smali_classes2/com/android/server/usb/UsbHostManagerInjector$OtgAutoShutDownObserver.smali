.class Lcom/android/server/usb/UsbHostManagerInjector$OtgAutoShutDownObserver;
.super Landroid/database/ContentObserver;
.source "UsbHostManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManagerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtgAutoShutDownObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManagerInjector;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostManagerInjector;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/usb/UsbHostManagerInjector$OtgAutoShutDownObserver;->this$0:Lcom/android/server/usb/UsbHostManagerInjector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/server/usb/UsbHostManagerInjector;->access$300()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_otg_auto_disable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "UsbHostManagerInjector"

    const-string v0, "End register OtgAutoShutDownObserver"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "UsbHostManagerInjector"

    const-string v1, "Observe change, resetAlarmTrigger.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManagerInjector$OtgAutoShutDownObserver;->this$0:Lcom/android/server/usb/UsbHostManagerInjector;

    invoke-static {v0}, Lcom/android/server/usb/UsbHostManagerInjector;->access$200(Lcom/android/server/usb/UsbHostManagerInjector;)V

    return-void
.end method
