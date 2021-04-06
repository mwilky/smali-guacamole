.class public Lcom/android/server/qbh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/gck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/qbh$tsu;,
        Lcom/android/server/qbh$you;,
        Lcom/android/server/qbh$sis;,
        Lcom/android/server/qbh$rtg;
    }
.end annotation


# static fields
.field static final A:J = 0x2710L

.field private static B:Z = false

.field private static final C:J = 0x6ddd00L

.field private static final D:I = 0x0

.field private static final E:I = 0x1

.field private static final F:I = 0x2

.field private static final G:I = -0x1

.field private static final H:I = 0x0

.field private static final I:I = 0x1

.field private static final J:I = 0x2

.field private static final a:Ljava/lang/String; = "net.oneplus.charingguarder.intent.mdm"

.field private static final b:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field public static final bud:Ljava/lang/String; = "/sys/class/power_supply/bms/battery_health"

.field private static final c:Ljava/lang/String; = "com.oneplus.chargingguarder.open_quietmode"

.field private static final d:Ljava/lang/String; = "com.oneplus.chargingguarder.close_quietmode"

.field private static final e:Ljava/lang/String; = "com.oneplus.chargingguarder.close_quietmode.notification"

.field private static final f:Ljava/lang/String; = "/sys/class/power_supply/wireless/online"

.field public static final g:I = 0x8

.field private static final h:J = 0x249f00L

.field private static final i:J = 0x36ee80L

.field private static final irq:Ljava/lang/String; = "Charging Guarder"

.field private static final ivd:Ljava/lang/String; = "net.oneplus.charingguarder.intent.OPCG"

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x3

.field private static final les:Ljava/lang/String; = "charging_guarder_notification"

.field private static m:I = 0x0

.field private static final n:I = -0x2

.field private static final o:I = -0x1

.field private static final p:I = 0x0

.field private static final q:I = 0x1

.field private static final qeg:Ljava/lang/String; = "net.oneplus.chargingguarder.intent.enable"

.field private static final r:I = 0x2

.field private static final s:I = 0x1

.field private static final t:I = 0x0

.field private static final u:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final v:Ljava/lang/String; = "OnePlusChargingGuarder"

.field private static final vdw:Ljava/lang/String; = "com.oneplus.action.INTENT_TRANSIT_ACTIVITY"

.field public static final vju:Ljava/lang/String; = "OnePlusChargingGuarder"

.field private static final w:Ljava/lang/String; = "opcg_sleep_time_data"

.field private static final x:Ljava/lang/String; = "|"

.field private static final y:Ljava/lang/String; = "\\|"

.field private static final z:Ljava/lang/String; = "opcg_recover_charge_data"


# instance fields
.field private bio:Lcom/android/server/qbh$you;

.field private bvj:Lcom/android/server/qbh$sis;

.field private cgv:Z

.field private cjf:Z

.field private cno:J

.field private dma:J

.field private ear:Z

.field private fto:Z

.field private gck:I

.field private gwm:I

.field private hmo:I

.field private ibl:I

.field private igw:Landroid/content/Context;

.field private ire:J

.field private kth:Landroid/app/AlarmManager;

.field private lqr:I

.field private obl:Z

.field private oif:Landroid/content/ContentResolver;

.field private oxb:Z

.field qbh:Landroid/telephony/TelephonyManager;

.field private rtg:J

.field private sis:Ljava/time/LocalTime;

.field private ssp:J

.field private tsu:J

.field private ugm:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private vdb:Lyou/zta/you/zta/zta/you;

.field private veq:I

.field private wtn:Landroid/app/NotificationManager;

.field private you:Lcom/android/server/qbh$tsu;

.field ywr:Landroid/os/BatteryManager;

.field private zgw:Z

.field private zta:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xee

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/qbh;->B:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/qbh;->sis:Ljava/time/LocalTime;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/qbh;->gck:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/qbh;->dma:J

    iput-object v0, p0, Lcom/android/server/qbh;->vdb:Lyou/zta/you/zta/zta/you;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/qbh;->zgw:Z

    iput-boolean v2, p0, Lcom/android/server/qbh;->obl:Z

    iput-boolean v2, p0, Lcom/android/server/qbh;->oxb:Z

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v5, 0xed

    aput v5, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/qbh;->cjf:Z

    iput-boolean v2, p0, Lcom/android/server/qbh;->ear:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/qbh;->hmo:I

    iput-boolean v2, p0, Lcom/android/server/qbh;->fto:Z

    iput v2, p0, Lcom/android/server/qbh;->lqr:I

    iput v2, p0, Lcom/android/server/qbh;->veq:I

    iput-boolean v2, p0, Lcom/android/server/qbh;->cgv:Z

    iput-object p1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    :try_start_0
    invoke-static {v3}, Lyou/zta/you/zta/zta/you;->dma(Z)Lyou/zta/you/zta/zta/you;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/qbh;->vdb:Lyou/zta/you/zta/zta/you;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/qbh;->qbh:Landroid/telephony/TelephonyManager;

    const-wide/32 v5, 0x249f00

    iput-wide v5, p0, Lcom/android/server/qbh;->cno:J

    const-wide/32 v5, 0x6ddd00

    iput-wide v5, p0, Lcom/android/server/qbh;->ire:J

    new-instance p1, Lcom/android/server/qbh$tsu;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {p1, p0, v5}, Lcom/android/server/qbh$tsu;-><init>(Lcom/android/server/qbh;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/qbh;->you:Lcom/android/server/qbh$tsu;

    iget-object p1, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    const-string v5, "charging_guarder_enabled"

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/qbh;->ibl:I

    invoke-direct {p0}, Lcom/android/server/qbh;->q()V

    iget-object p1, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/qbh;->ibl:I

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/qbh;->A()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput v4, p0, Lcom/android/server/qbh;->ibl:I

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    invoke-static {p1, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput v1, p0, Lcom/android/server/qbh;->ibl:I

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    const-string v1, "charging_optimized_status"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/qbh;->bvj:Lcom/android/server/qbh$sis;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/server/qbh$sis;

    iget-object v1, p0, Lcom/android/server/qbh;->you:Lcom/android/server/qbh$tsu;

    invoke-direct {p1, p0, v1}, Lcom/android/server/qbh$sis;-><init>(Lcom/android/server/qbh;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/qbh;->bvj:Lcom/android/server/qbh$sis;

    :cond_2
    new-instance p1, Lcom/android/server/qbh$you;

    invoke-direct {p1, p0, v0}, Lcom/android/server/qbh$you;-><init>(Lcom/android/server/qbh;Lcom/android/server/qbh$zta;)V

    iput-object p1, p0, Lcom/android/server/qbh;->bio:Lcom/android/server/qbh$you;

    iget-object p1, p0, Lcom/android/server/qbh;->kth:Landroid/app/AlarmManager;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/qbh;->kth:Landroid/app/AlarmManager;

    :cond_3
    iget-object p1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/qbh;->wtn:Landroid/app/NotificationManager;

    iget-object p1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcom/android/server/qbh;->ywr:Landroid/os/BatteryManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "net.oneplus.chargingguarder.intent.enable"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "net.oneplus.charingguarder.intent.OPCG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "net.oneplus.charingguarder.intent.mdm"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "com.oneplus.chargingguarder.open_quietmode"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "com.oneplus.chargingguarder.close_quietmode"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "com.oneplus.chargingguarder.close_quietmode.notification"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/qbh;->wtn:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/server/qbh;->s(Landroid/app/NotificationManager;)V

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/qbh;->ugm:Lnet/oneplus/odm/OpDeviceManagerInjector;

    invoke-virtual {p0}, Lcom/android/server/qbh;->D()V

    invoke-virtual {p0}, Lcom/android/server/qbh;->y()V

    invoke-virtual {p0}, Lcom/android/server/qbh;->E()V

    return-void
.end method

.method private A()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/qbh;->qbh:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/qbh;->you:Lcom/android/server/qbh$tsu;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/qbh;->you:Lcom/android/server/qbh$tsu;

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/qbh;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x4069980000000000L    # 204.75

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private B(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/16 v1, 0x31

    const/4 v3, 0x1

    aput-char v1, v0, v3

    const/16 v1, 0x32

    const/4 v3, 0x2

    aput-char v1, v0, v3

    const/4 v1, 0x3

    const/16 v4, 0x33

    aput-char v4, v0, v1

    const/16 v1, 0x34

    const/4 v4, 0x4

    aput-char v1, v0, v4

    const/4 v1, 0x5

    const/16 v4, 0x35

    aput-char v4, v0, v1

    const/4 v1, 0x6

    const/16 v4, 0x36

    aput-char v4, v0, v1

    const/4 v1, 0x7

    const/16 v4, 0x37

    aput-char v4, v0, v1

    const/16 v1, 0x8

    const/16 v4, 0x38

    aput-char v4, v0, v1

    const/16 v1, 0x9

    const/16 v4, 0x39

    aput-char v4, v0, v1

    const/16 v1, 0xa

    const/16 v4, 0x61

    aput-char v4, v0, v1

    const/16 v1, 0xb

    const/16 v4, 0x62

    aput-char v4, v0, v1

    const/16 v1, 0xc

    const/16 v4, 0x63

    aput-char v4, v0, v1

    const/16 v1, 0xd

    const/16 v4, 0x64

    aput-char v4, v0, v1

    const/16 v1, 0xe

    const/16 v4, 0x65

    aput-char v4, v0, v1

    const/16 v1, 0x66

    const/16 v4, 0xf

    aput-char v1, v0, v4

    array-length v1, p1

    mul-int/2addr v1, v3

    new-array v1, v1, [C

    array-length v3, p1

    move v5, v2

    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v6, p1, v2

    add-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/2addr v8, v4

    aget-char v8, v0, v8

    aput-char v8, v1, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method private G(Z)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/qbh;->vdb:Lyou/zta/you/zta/zta/you;

    invoke-interface {p0, p1}, Lyou/zta/you/zta/zta/you;->i1(Z)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t setWlsQuietMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OnePlusChargingGuarder"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic a(Lcom/android/server/qbh;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/qbh;->rtg:J

    return-wide v0
.end method

.method static synthetic b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->kth:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic bio(Lcom/android/server/qbh;)I
    .locals 0

    iget p0, p0, Lcom/android/server/qbh;->ibl:I

    return p0
.end method

.method static synthetic bud(Lcom/android/server/qbh;)I
    .locals 0

    iget p0, p0, Lcom/android/server/qbh;->hmo:I

    return p0
.end method

.method static synthetic bvj(Lcom/android/server/qbh;)I
    .locals 0

    iget p0, p0, Lcom/android/server/qbh;->gwm:I

    return p0
.end method

.method static synthetic c(Lcom/android/server/qbh;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/qbh;->kth:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic cgv(Lcom/android/server/qbh;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/qbh;->veq:I

    return p1
.end method

.method static synthetic cjf(Lcom/android/server/qbh;)I
    .locals 0

    iget p0, p0, Lcom/android/server/qbh;->lqr:I

    return p0
.end method

.method static synthetic d(Lcom/android/server/qbh;Ljava/lang/String;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/qbh;->r(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic dma(Lcom/android/server/qbh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/qbh;->ear:Z

    return p0
.end method

.method static synthetic e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->ugm:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p0
.end method

.method static synthetic ear(Lcom/android/server/qbh;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/qbh;->lqr:I

    return p1
.end method

.method static synthetic f(Lcom/android/server/qbh;)Landroid/app/Notification;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/qbh;->t()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic fto(Lcom/android/server/qbh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/qbh;->fto:Z

    return p1
.end method

.method static synthetic g(Lcom/android/server/qbh;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/qbh;->x()Z

    move-result p0

    return p0
.end method

.method static synthetic gck(Lcom/android/server/qbh;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/qbh;->tsu:J

    return-wide v0
.end method

.method static synthetic gwm(Lcom/android/server/qbh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/qbh;->zgw:Z

    return p0
.end method

.method static synthetic h(Lcom/android/server/qbh;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/qbh;->q()V

    return-void
.end method

.method static synthetic hmo(Lcom/android/server/qbh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/qbh;->fto:Z

    return p0
.end method

.method static synthetic i(Lcom/android/server/qbh;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic ibl(Lcom/android/server/qbh;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/qbh;->gwm:I

    return p1
.end method

.method static synthetic igw(Lcom/android/server/qbh;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/qbh;->ire:J

    return-wide v0
.end method

.method static synthetic ire(Lcom/android/server/qbh;)I
    .locals 2

    iget v0, p0, Lcom/android/server/qbh;->lqr:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/qbh;->lqr:I

    return v0
.end method

.method static synthetic irq(Lcom/android/server/qbh;)Lcom/android/server/qbh$you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->bio:Lcom/android/server/qbh$you;

    return-object p0
.end method

.method static synthetic ivd(Lcom/android/server/qbh;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/qbh;->cno:J

    return-wide v0
.end method

.method static synthetic j(Lcom/android/server/qbh;)I
    .locals 0

    iget p0, p0, Lcom/android/server/qbh;->gck:I

    return p0
.end method

.method static synthetic k(Lcom/android/server/qbh;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/qbh;->gck:I

    return p1
.end method

.method static synthetic l(Lcom/android/server/qbh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/qbh;->cjf:Z

    return p0
.end method

.method static synthetic les(Lcom/android/server/qbh;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/qbh;->hmo:I

    return p1
.end method

.method static synthetic lqr(Lcom/android/server/qbh;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic m(Lcom/android/server/qbh;)Lcom/android/server/qbh$tsu;
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->you:Lcom/android/server/qbh$tsu;

    return-object p0
.end method

.method static synthetic n(Lcom/android/server/qbh;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/qbh;->dma:J

    return-wide v0
.end method

.method static synthetic o(Lcom/android/server/qbh;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/qbh;->dma:J

    return-wide p1
.end method

.method static synthetic obl(Lcom/android/server/qbh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/qbh;->oxb:Z

    return p0
.end method

.method static synthetic oif(Lcom/android/server/qbh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/qbh;->cgv:Z

    return p1
.end method

.method static synthetic oxb(Lcom/android/server/qbh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/qbh;->oxb:Z

    return p1
.end method

.method static synthetic p(Lcom/android/server/qbh;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/qbh;->G(Z)Z

    move-result p0

    return p0
.end method

.method private q()V
    .locals 3

    iget v0, p0, Lcom/android/server/qbh;->ibl:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/qbh;->A()Z

    move-result v0

    const-string v1, "charging_guarder_enabled"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput v2, p0, Lcom/android/server/qbh;->ibl:I

    :cond_1
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/qbh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/qbh;->cgv:Z

    return p0
.end method

.method static synthetic qeg(Lcom/android/server/qbh;)Lcom/android/server/qbh$sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->bvj:Lcom/android/server/qbh$sis;

    return-object p0
.end method

.method private r(Ljava/lang/String;)Landroid/app/Notification;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.INTENT_TRANSIT_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intent_action"

    const-string v2, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment"

    const-string v2, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:fragment_args_key"

    const-string v2, "charging_optimization_summary"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const v3, 0x50f001e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v2

    const p1, 0x50f001d

    invoke-virtual {v3, p1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/content/Intent;

    const-string v5, "net.oneplus.chargingguarder.intent.enable"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v7, 0x8000000

    invoke-static {v5, v2, v3, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Action$Builder;

    iget-object v5, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const v6, 0x50f001c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x1080376

    invoke-direct {v3, v6, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const-string v7, "charging_guarder_notification"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x5070146

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const v6, 0x106001c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string p1, "sys"

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v4}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method private s(Landroid/app/NotificationManager;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/app/NotificationChannel;

    const/4 v0, 0x4

    const-string v1, "charging_guarder_notification"

    const-string v2, "Charging Guarder"

    invoke-direct {p0, v1, v2, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private t()Landroid/app/Notification;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.BED_TIME_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const v3, 0x50f00ca

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const v4, 0x50f00c9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oneplus.chargingguarder.close_quietmode.notification"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v7, 0x8000000

    invoke-static {v5, v2, v4, v7, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$Action$Builder;

    iget-object v5, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const v6, 0x50f00c8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x1080376

    invoke-direct {v4, v6, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const-string v7, "charging_guarder_notification"

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x5070147

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const v6, 0x106001c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v0, "sys"

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method static synthetic ugm(Lcom/android/server/qbh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/qbh;->zgw:Z

    return p1
.end method

.method static synthetic vdb(Lcom/android/server/qbh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/qbh;->obl:Z

    return p0
.end method

.method static synthetic vdw(Lcom/android/server/qbh;)Landroid/content/IntentFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/qbh;->zta:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic veq(Lcom/android/server/qbh;)I
    .locals 0

    iget p0, p0, Lcom/android/server/qbh;->veq:I

    return p0
.end method

.method static synthetic vju(Lcom/android/server/qbh;)I
    .locals 2

    iget v0, p0, Lcom/android/server/qbh;->veq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/qbh;->veq:I

    return v0
.end method

.method static synthetic wtn(Lcom/android/server/qbh;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/qbh;->ibl:I

    return p1
.end method

.method private x()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/qbh;->vdb:Lyou/zta/you/zta/zta/you;

    invoke-interface {p0}, Lyou/zta/you/zta/zta/you;->k0()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic ywr(Lcom/android/server/qbh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/qbh;->ear:Z

    return p1
.end method

.method static synthetic zgw(Lcom/android/server/qbh;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/qbh;->obl:Z

    return p1
.end method


# virtual methods
.method public C(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, "BufferedReader close exception :"

    const-string v0, "OnePlusChargingGuarder"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object p1, v1

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readNodeValue IO exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    :goto_2
    return-object p1

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw p1
.end method

.method public D()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/qbh;->you:Lcom/android/server/qbh$tsu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/qbh;->you:Lcom/android/server/qbh$tsu;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public E()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    const-wide/16 v6, 0x3e8

    add-long/2addr v0, v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v0, v0, v6

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/qbh;->kth:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/qbh;->kth:Landroid/app/AlarmManager;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "net.oneplus.charingguarder.intent.mdm"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    invoke-static {v4, v1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/qbh;->kth:Landroid/app/AlarmManager;

    invoke-virtual {p0, v5, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "it will set a alarm to report mdm data in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public F()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/qbh;->tsu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/qbh;->rtg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opcg_sleep_time_data"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public H()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/qbh;->sis:Ljava/time/LocalTime;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/qbh;->sis:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :cond_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/qbh;->tsu:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/qbh;->tsu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusChargingGuarder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/qbh;->F()V

    return-void
.end method

.method public cno(J)V
    .locals 2

    iput-wide p1, p0, Lcom/android/server/qbh;->tsu:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSleepStart:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/qbh;->tsu:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusChargingGuarder"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public kth()V
    .locals 10

    const-string v0, "OnePlusChargingGuarder"

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/qbh;->vdb:Lyou/zta/you/zta/zta/you;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lyou/zta/you/zta/zta/you;->h1(Z)I

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "android"

    const/4 v7, 0x0

    const v8, 0x33954bd

    const/4 v9, -0x1

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput v1, p0, Lcom/android/server/qbh;->gck:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel notification exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "charging_optimized_status"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCharging: mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/qbh;->gck:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_2
    iput v1, p0, Lcom/android/server/qbh;->gck:I

    throw v0
.end method

.method public rtg(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "advance_period"

    const-wide/32 v1, 0x249f00

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/qbh;->cno:J

    const-string v0, "disable_charge_optimizated_period"

    const-wide/32 v1, 0x6ddd00

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/qbh;->ire:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] mAdvancePeriod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/qbh;->cno:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusChargingGuarder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/qbh;->ibl:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/qbh;->ibl:I

    const-string v4, "function_option"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/android/server/qbh;->ibl:I

    iget-object v0, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    const-string v2, "charging_guarder_enabled"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] mOPCharingGuarderEnabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/qbh;->ibl:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "function_option could not set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", it can only set to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public sis()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/qbh;->you:Lcom/android/server/qbh$tsu;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public ssp(Ljava/time/LocalTime;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/qbh;->sis:Ljava/time/LocalTime;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSleepStartLocalTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/qbh;->sis:Ljava/time/LocalTime;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusChargingGuarder"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public tsu()V
    .locals 4

    const-string v0, "OnePlusChargingGuarder"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/qbh;->vdb:Lyou/zta/you/zta/zta/you;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lyou/zta/you/zta/zta/you;->h1(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCharging exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/qbh;->gck:I

    iget-object v2, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    const-string v3, "charging_optimized_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableCharging: mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/qbh;->gck:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public u()I
    .locals 3

    const-string v0, ","

    sget-boolean v1, Lcom/android/server/qbh;->B:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/qbh;->vdb:Lyou/zta/you/zta/zta/you;

    invoke-interface {p0}, Lyou/zta/you/zta/zta/you;->lqr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    return v2

    :catch_0
    move-exception p0

    const-string v0, "OnePlusChargingGuarder"

    const-string v1, "Can\'t get dual cell voltage."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public v()I
    .locals 4

    const/16 p0, 0xa

    const/4 v0, 0x0

    :try_start_0
    new-array v1, p0, [C

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/power_supply/bms/battery_health"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v1, v0, p0}, Ljava/io/FileReader;->read([CII)I

    move-result p0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v0, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p0, "OnePlusChargingGuarder"

    const-string v1, "Can\'t get device health w /sys/class/power_supply/bms/battery_health"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public w()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/qbh;->oif:Landroid/content/ContentResolver;

    const-string v0, "charging_guarder_enabled"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public y()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opcg_recover_charge_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/qbh;->dma:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/qbh;->igw:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "opcg_sleep_time_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/qbh;->tsu:J

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/qbh;->rtg:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPersistData:mSleepStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/qbh;->tsu:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mSleepDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/qbh;->rtg:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnePlusChargingGuarder"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/qbh;->H()V

    :cond_2
    return-void
.end method

.method public you(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/qbh;->rtg:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSleepDuration:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/qbh;->rtg:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnePlusChargingGuarder"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/qbh;->H()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/qbh;->ear:Z

    return-void
.end method

.method public z()Z
    .locals 1

    iget p0, p0, Lcom/android/server/qbh;->gck:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public zta(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "**** OnePlusChargingGuarder ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/qbh;->tsu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/qbh;->rtg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/qbh;->gck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOPCharingGuarderEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/qbh;->ibl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWirelessChargingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/qbh;->hmo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
