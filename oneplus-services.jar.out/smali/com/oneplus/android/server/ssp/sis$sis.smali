.class Lcom/oneplus/android/server/ssp/sis$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/ssp/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# static fields
.field private static final cno:I = 0x1000

.field private static final rtg:I = 0x2

.field private static final ssp:I = 0x0

.field private static final tsu:I = 0x5


# instance fields
.field final synthetic sis:Lcom/oneplus/android/server/ssp/sis;

.field private you:I

.field private zta:Z


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/ssp/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/sis$sis;->sis:Lcom/oneplus/android/server/ssp/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/ssp/sis$sis;->zta:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/android/server/ssp/sis$sis;->you:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/ssp/sis;Lcom/oneplus/android/server/ssp/sis$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/ssp/sis$sis;-><init>(Lcom/oneplus/android/server/ssp/sis;)V

    return-void
.end method

.method private sis()I
    .locals 1

    const-string p0, "persist.sys.gps.dbg_level"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private tsu(Z)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "OpGnssLocPro"

    if-eqz p1, :cond_0

    const-string p1, "OEM Logging: start oem logging"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/ssp/sis$sis;->sis()I

    move-result p1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/oneplus/android/server/ssp/sis$sis;->you:I

    goto :goto_0

    :cond_0
    const-string p1, "OEM Logging: stop oem logging"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/oneplus/android/server/ssp/sis$sis;->you:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public you()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "OpGnssLocPro"

    const-string v0, "gnss hal level is invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/ssp/sis$sis;->zta:Z

    return-void
.end method

.method public zta(Z)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string v3, "OpGnssLocPro"

    if-nez v1, :cond_0

    const-string p0, "gnss hal level is invalid"

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/ssp/sis$sis;->zta:Z

    if-nez v1, :cond_1

    return v2

    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/android/server/ssp/sis$sis;->zta:Z

    iget-object v1, p0, Lcom/oneplus/android/server/ssp/sis$sis;->sis:Lcom/oneplus/android/server/ssp/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/ssp/sis;->getLogLevelStatusUpdates()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "gps debug log is set"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/ssp/sis$sis;->tsu(Z)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string p0, "not change default log level on boot"

    goto :goto_0

    :cond_3
    const-string p1, "gps debug log is not set"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/ssp/sis$sis;->tsu(Z)V

    :goto_1
    iget p0, p0, Lcom/oneplus/android/server/ssp/sis$sis;->you:I

    const/4 p1, 0x2

    if-lt p0, p1, :cond_4

    const/4 p1, 0x5

    if-gt p0, p1, :cond_4

    or-int/lit16 p0, p0, 0x1000

    return p0

    :cond_4
    return v2
.end method
