.class Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$zta;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/adfr/IOPlusRefreshRate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$zta;->zta()Lcom/oneplus/adfr/IOPlusRefreshRate;

    move-result-object p0

    return-object p0
.end method

.method protected zta()Lcom/oneplus/adfr/IOPlusRefreshRate;
    .locals 2

    const-string p0, "oplus_vrr_service"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "OPlusRefreshRateService"

    if-nez p0, :cond_0

    const-string v1, "can\'t get service binder: OPlusRefreshRateService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/oneplus/adfr/IOPlusRefreshRate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/adfr/IOPlusRefreshRate;

    move-result-object p0

    if-nez p0, :cond_1

    const-string v1, "can\'t get service interface: OPlusRefreshRateService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method
