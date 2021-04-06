.class public Lcom/android/server/am/OpAppRecordInjector;
.super Ljava/lang/Object;
.source "OpAppRecordInjector.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final HOLD:I = 0x1

.field public static final KILL_AMS:I = 0x4

.field public static final KILL_BY_USER:I = 0x9

.field public static final KILL_CACHE:I = 0x5

.field public static final KILL_DUMP:I = 0xa

.field public static final KILL_EMPTY:I = 0x6

.field public static final KILL_EXCEPTION:I = 0xb

.field public static final KILL_HIGH_POWER:I = 0x3

.field public static final KILL_ISOLATE:I = 0x7

.field public static final KILL_LMK:I = 0x2

.field public static final KILL_OMM:I = 0x1

.field public static final KILL_TOP:I = 0x8

.field public static final KILL_UNKOWN:I = 0x0

.field public static final NOT_HOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpAppRecordInjector"

.field private static sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIsolatedUid(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->addIsolatedUid(II)V

    :cond_0
    return-void
.end method

.method public static dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public static forceStopPackageSmart(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->forceStopPackageSmart(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V

    :cond_0
    return-void
.end method

.method public static initEnv(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->initEnv(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static initInstance()V
    .locals 1

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apprecord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpAppRecord;

    sput-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    :cond_0
    return-void
.end method

.method public static noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteBluetoothConnectedChanged(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static noteFlashlightOff(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteFlashlightOff(I)V

    :cond_0
    return-void
.end method

.method public static noteFlashlightOn(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteFlashlightOn(I)V

    :cond_0
    return-void
.end method

.method public static noteFloatWindowChange(Ljava/lang/String;IIZ)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteFloatWindowChange(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public static noteFreezeStateChange(IZ)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteFreezeStateChange(IZ)V

    :cond_0
    return-void
.end method

.method public static noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 7

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/am/IOpAppRecord;->noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public static noteNotificationChanged(Ljava/lang/String;IIZ)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteNotificationChanged(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public static notePSSChanged(IIJ)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->notePSSChanged(IIJ)V

    :cond_0
    return-void
.end method

.method public static notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static notePredctionAppChanged(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->notePredctionAppChanged(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static noteResetAudio()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetAudio()V

    :cond_0
    return-void
.end method

.method public static noteResetCamera()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetCamera()V

    :cond_0
    return-void
.end method

.method public static noteResetFlashlight()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetFlashlight()V

    :cond_0
    return-void
.end method

.method public static noteResetVideo()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->noteResetVideo()V

    :cond_0
    return-void
.end method

.method public static noteRfcommSocketToServiceRecord(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteRfcommSocketToServiceRecord(II)V

    :cond_0
    return-void
.end method

.method public static noteStartAudio(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartAudio(I)V

    :cond_0
    return-void
.end method

.method public static noteStartAudio(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartAudio(II)V

    :cond_0
    return-void
.end method

.method public static noteStartCamera(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartCamera(I)V

    :cond_0
    return-void
.end method

.method public static noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IOpAppRecord;->noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static noteStartSensor(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartSensor(II)V

    :cond_0
    return-void
.end method

.method public static noteStartVideo(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStartVideo(I)V

    :cond_0
    return-void
.end method

.method public static noteStartVideo(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStartVideo(II)V

    :cond_0
    return-void
.end method

.method public static noteStopAudio(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopAudio(I)V

    :cond_0
    return-void
.end method

.method public static noteStopAudio(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopAudio(II)V

    :cond_0
    return-void
.end method

.method public static noteStopCamera(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopCamera(I)V

    :cond_0
    return-void
.end method

.method public static noteStopGps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopGps(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static noteStopSensor(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopSensor(II)V

    :cond_0
    return-void
.end method

.method public static noteStopVideo(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteStopVideo(I)V

    :cond_0
    return-void
.end method

.method public static noteStopVideo(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->noteStopVideo(II)V

    :cond_0
    return-void
.end method

.method public static noteUserLockAppChanged(Ljava/lang/String;IZ)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->noteUserLockAppChanged(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public static noteVibratorOff(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->noteVibratorOff(I)V

    :cond_0
    return-void
.end method

.method public static noteVibratorOn(IJ)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IOpAppRecord;->noteVibratorOn(IJ)V

    :cond_0
    return-void
.end method

.method public static processDie(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->processDie(Lcom/android/server/am/ProcessRecord;I)V

    :cond_0
    return-void
.end method

.method public static processStart(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpAppRecord;->processStart(Lcom/android/server/am/ProcessRecord;I)V

    :cond_0
    return-void
.end method

.method public static removeIsolatedUid(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpAppRecord;->removeIsolatedUid(I)V

    :cond_0
    return-void
.end method

.method public static schedulePerformPoll()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->initInstance()V

    sget-object v0, Lcom/android/server/am/OpAppRecordInjector;->sIOpAppRecord:Lcom/android/server/am/IOpAppRecord;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/am/IOpAppRecord;->schedulePerformPoll()V

    :cond_0
    return-void
.end method
