.class Lcom/oneplus/android/server/ssp/rtg$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/ssp/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/ssp/rtg$zta$zta;
    }
.end annotation


# static fields
.field private static final gck:Ljava/lang/String; = "persist.sys.gps.lab_disable_loc_on"


# instance fields
.field private bio:Z

.field private cno:Z

.field private igw:Z

.field private kth:Z

.field private rtg:Z

.field private sis:Landroid/location/LocationManager;

.field private ssp:I

.field private tsu:Lcom/oneplus/android/server/ssp/rtg$zta$zta;

.field final synthetic wtn:Lcom/oneplus/android/server/ssp/rtg;

.field private you:Landroid/net/wifi/WifiManager;

.field private zta:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/ssp/rtg;)V
    .locals 3

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->wtn:Lcom/oneplus/android/server/ssp/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->rtg:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->cno:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->kth:Z

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg;->zta(Lcom/oneplus/android/server/ssp/rtg;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->you:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg;->zta(Lcom/oneplus/android/server/ssp/rtg;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->zta:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/oneplus/android/server/ssp/rtg;->zta(Lcom/oneplus/android/server/ssp/rtg;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->sis:Landroid/location/LocationManager;

    new-instance p1, Lcom/oneplus/android/server/ssp/rtg$zta$zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/ssp/rtg$zta$zta;-><init>(Lcom/oneplus/android/server/ssp/rtg$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->tsu:Lcom/oneplus/android/server/ssp/rtg$zta$zta;

    const-string p1, "persist.sys.gps.lab_disable_loc_on"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->kth:Z

    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->oxb()V

    return-void
.end method

.method private bvj()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->igw:Z

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "restore ble scan always available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/ssp/rtg$zta;->cjf(Z)V

    :cond_0
    return-void
.end method

.method private cjf(Z)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->wtn:Lcom/oneplus/android/server/ssp/rtg;

    invoke-static {p0}, Lcom/oneplus/android/server/ssp/rtg;->zta(Lcom/oneplus/android/server/ssp/rtg;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ble_scan_always_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/ssp/rtg$zta;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->rtg:Z

    return p0
.end method

.method static synthetic dma(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->lqr()V

    return-void
.end method

.method private fto()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->cno:Z

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "turn on gps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->sis:Landroid/location/LocationManager;

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method static synthetic gck(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->vdb()V

    return-void
.end method

.method private gwm()V
    .locals 2

    iget v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->ssp:I

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "restore wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->you:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method private hmo()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->bio:Z

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "turn on wifi scan always available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->you:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    :cond_0
    return-void
.end method

.method private ibl()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->cno:Z

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "restore gps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->sis:Landroid/location/LocationManager;

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method static synthetic igw(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->zgw()V

    return-void
.end method

.method private ire()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->igw:Z

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "turn on ble scan always available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/ssp/rtg$zta;->cjf(Z)V

    :cond_0
    return-void
.end method

.method static synthetic kth(Lcom/oneplus/android/server/ssp/rtg$zta;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->rtg:Z

    return p1
.end method

.method private lqr()V
    .locals 2

    iget v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->ssp:I

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "turn on wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->you:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method private obl()V
    .locals 2

    const-string v0, "OpLocMngrSrv"

    const-string v1, "save current wifi scan always available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->you:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->bio:Z

    return-void
.end method

.method private oif()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->wtn:Lcom/oneplus/android/server/ssp/rtg;

    invoke-static {p0}, Lcom/oneplus/android/server/ssp/rtg;->zta(Lcom/oneplus/android/server/ssp/rtg;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ble_scan_always_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private oxb()V
    .locals 3

    const-string v0, "OpLocMngrSrv"

    const-string v1, "save current wifi status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->wtn:Lcom/oneplus/android/server/ssp/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/ssp/rtg;->zta(Lcom/oneplus/android/server/ssp/rtg;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->ssp:I

    return-void
.end method

.method static synthetic qbh(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->hmo()V

    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->ugm()V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->gwm()V

    return-void
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->bvj()V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->ibl()V

    return-void
.end method

.method private ugm()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->bio:Z

    if-nez v0, :cond_0

    const-string v0, "OpLocMngrSrv"

    const-string v1, "restore wifi scan always available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->you:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    :cond_0
    return-void
.end method

.method private vdb()V
    .locals 2

    const-string v0, "OpLocMngrSrv"

    const-string v1, "save current ble scan always available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->oif()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->igw:Z

    return-void
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->obl()V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->ire()V

    return-void
.end method

.method static synthetic ywr(Lcom/oneplus/android/server/ssp/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/rtg$zta;->fto()V

    return-void
.end method

.method private zgw()V
    .locals 2

    const-string v0, "OpLocMngrSrv"

    const-string v1, "save current gps status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->sis:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->cno:Z

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/ssp/rtg$zta;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->kth:Z

    return p0
.end method


# virtual methods
.method public ear()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->zta:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/rtg$zta;->tsu:Lcom/oneplus/android/server/ssp/rtg$zta$zta;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_0
    const-string p0, "OpLocMngrSrv"

    const-string v0, "OP_FEATURE_OPERATOR_GPS_E911 is not set"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
