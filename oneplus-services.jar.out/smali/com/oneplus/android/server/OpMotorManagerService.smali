.class public Lcom/oneplus/android/server/OpMotorManagerService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/IOpMotorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/OpMotorManagerService$gwm;,
        Lcom/oneplus/android/server/OpMotorManagerService$oif;,
        Lcom/oneplus/android/server/OpMotorManagerService$bvj;,
        Lcom/oneplus/android/server/OpMotorManagerService$ibl;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:Ljava/lang/String; = null

.field private static final C:I = 0xb7

.field private static final D:I = 0xb8

.field private static final E:I = 0xb9

.field private static final F:I = 0xba

.field private static final G:I = 0xbb

.field private static final H:I = 0xbc

.field private static final I:I = 0xbd

.field private static final J:I = 0xbe

.field private static final K:I = 0x10

.field private static final L:I = 0x1388

.field private static final M:I = 0x800

.field private static final N:I = 0x0

.field private static final O:I = 0x1

.field private static final P:I = 0x1

.field private static final Q:I = 0x2bc

.field private static final R:I = 0x2bf

.field private static final S:I = 0x1fa2658

.field private static final T:I = 0x32

.field private static U:I = 0x0

.field private static V:I = 0x0

.field private static W:I = 0x0

.field private static X:I = 0x0

.field private static Y:I = 0x0

.field private static Z:I = 0x0

.field private static a0:I = 0x0

.field private static b0:I = 0x0

.field private static c0:I = 0x0

.field private static d0:I = 0x0

.field private static e0:I = 0x0

.field private static f0:J = 0x0L

.field private static g0:J = 0x0L

.field private static h0:J = 0x0L

.field private static i0:J = 0x0L

.field private static final j:Ljava/lang/String; = "OpMotorManagerService"

.field private static j0:J = 0x0L

.field private static final k:Ljava/lang/String; = "OpMotorManager"

.field private static k0:J = 0x0L

.field private static l:Z = true

.field private static l0:Z = false

.field private static m:Z = false

.field private static m0:Z = false

.field private static n:Lcom/oneplus/android/server/OpMotorManagerService; = null

.field private static n0:Z = false

.field private static o:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static o0:Z = false

.field private static final p:Ljava/lang/String; = "com.oneplus.action.CAMERA"

.field private static p0:Z = false

.field private static final q:Ljava/lang/String; = "oneplus.intent.action.INCALLUI_ANSWER"

.field private static q0:Z = false

.field private static final r:Ljava/lang/String; = "isVideo"

.field private static r0:Z = false

.field private static final s:Ljava/lang/String; = "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

.field private static s0:Z = false

.field private static final t:Ljava/lang/String; = "android.policy:POWER"

.field private static t0:Z = false

.field private static final u:Ljava/lang/String; = "android.policy:DOUBLE_TAP"

.field private static u0:Z = false

.field private static final v:Ljava/lang/String; = "systemui_faceunlock"

.field private static v0:Z = false

.field private static final w:Ljava/lang/String; = "screenoff"

.field private static w0:Z = false

.field private static final x:Ljava/lang/String; = "persist.sys.motor.calibtime"

.field private static x0:Z = false

.field private static final y:Ljava/lang/String; = "org.codeaurora.ims"

.field private static z:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Z

.field private bio:Landroid/os/PowerManager;

.field private bud:Z

.field private bvj:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

.field private c:Z

.field private cgv:Z

.field private cjf:Ljava/lang/String;

.field private cno:Landroid/app/IActivityTaskManager;

.field private final d:Landroid/hardware/SensorEventListener;

.field private final dma:Lcom/android/server/ServiceThread;

.field private e:Landroid/media/AudioManager$AudioRecordingCallback;

.field private ear:Ljava/lang/String;

.field private final f:Landroid/content/BroadcastReceiver;

.field private fto:I

.field private g:Landroid/telephony/PhoneStateListener;

.field private gck:Lyou/zta/you/sis/zta/zta;

.field private final gwm:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/oneplus/android/server/OpMotorManagerService$oif;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/app/IProcessObserver;

.field private hmo:I

.field private i:Landroid/os/IBinder;

.field private final ibl:Ljava/lang/Object;

.field private igw:Lcom/oneplus/android/server/scene/GameModeObserver;

.field private ire:I

.field private irq:Z

.field private ivd:Z

.field private kth:Landroid/telephony/TelephonyManager;

.field private les:Z

.field private lqr:Z

.field private obl:Ljava/lang/String;

.field private oif:Landroid/app/AlertDialog;

.field private oxb:Ljava/lang/String;

.field private final qbh:Lcom/oneplus/android/server/OpMotorManagerService$ibl;

.field private qeg:Z

.field private rtg:Landroid/media/AudioManager;

.field private sis:Landroid/hardware/Sensor;

.field private ssp:Landroid/app/IActivityManager;

.field private tsu:Landroid/hardware/Sensor;

.field private final ugm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/android/os/IOpMotorStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private vdb:[J

.field private vdw:Z

.field private veq:Z

.field private vju:Z

.field private wtn:Lcom/oneplus/android/server/OpMotorManagerService$oif;

.field private you:Landroid/hardware/SensorManager;

.field private final ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

.field private zgw:Ljava/lang/String;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->A:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->B:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    sput v0, Lcom/oneplus/android/server/OpMotorManagerService;->V:I

    const/4 v1, 0x1

    sput v1, Lcom/oneplus/android/server/OpMotorManagerService;->W:I

    sput v1, Lcom/oneplus/android/server/OpMotorManagerService;->X:I

    const/4 v2, 0x4

    sput v2, Lcom/oneplus/android/server/OpMotorManagerService;->Y:I

    const/16 v2, 0x64

    sput v2, Lcom/oneplus/android/server/OpMotorManagerService;->Z:I

    sput v2, Lcom/oneplus/android/server/OpMotorManagerService;->a0:I

    const/16 v2, 0x1f4

    sput v2, Lcom/oneplus/android/server/OpMotorManagerService;->b0:I

    const/16 v2, 0x7d0

    sput v2, Lcom/oneplus/android/server/OpMotorManagerService;->c0:I

    const/16 v2, 0x3e8

    sput v2, Lcom/oneplus/android/server/OpMotorManagerService;->d0:I

    const/16 v2, 0x5dc

    sput v2, Lcom/oneplus/android/server/OpMotorManagerService;->e0:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/oneplus/android/server/OpMotorManagerService;->f0:J

    sput-wide v2, Lcom/oneplus/android/server/OpMotorManagerService;->g0:J

    sput-wide v2, Lcom/oneplus/android/server/OpMotorManagerService;->h0:J

    sput-wide v2, Lcom/oneplus/android/server/OpMotorManagerService;->i0:J

    sput-wide v2, Lcom/oneplus/android/server/OpMotorManagerService;->j0:J

    sput-wide v2, Lcom/oneplus/android/server/OpMotorManagerService;->k0:J

    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->l0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->m0:Z

    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->n0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->o0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->p0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->v0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->w0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->x0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->wtn:Lcom/oneplus/android/server/OpMotorManagerService$oif;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ibl:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gwm:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ugm:Ljava/util/List;

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdb:[J

    const-string v0, "temp"

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zgw:Ljava/lang/String;

    const-string v0, "focus"

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    const-string v0, "backgroud"

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oxb:Ljava/lang/String;

    const-string v0, "backActivity"

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cjf:Ljava/lang/String;

    const-string v0, "focusActivity"

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ear:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    iput v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->fto:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->lqr:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->veq:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cgv:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vju:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->les:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->irq:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdw:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ivd:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->a:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->b:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->c:Z

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$cno;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$cno;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->d:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$kth;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$kth;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->e:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$bio;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$bio;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$igw;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$igw;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->g:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$16;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$16;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->h:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$17;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$17;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->i:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "OpMotorManager"

    const/16 v2, 0xa

    invoke-direct {p1, v0, v2, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->dma:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    new-instance p1, Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->dma:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService$bvj;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    new-instance p1, Lcom/oneplus/android/server/OpMotorManagerService$ibl;

    const-string v0, "OpMotorManagerSocket"

    invoke-direct {p1, p0, p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService$ibl;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qbh:Lcom/oneplus/android/server/OpMotorManagerService$ibl;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic A(Lcom/oneplus/android/server/OpMotorManagerService;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->i:Landroid/os/IBinder;

    return-object p0
.end method

.method private A0()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    const-string v1, "OpMotorManagerService"

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetectMotor sMotorDownLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->f0()I

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->v0:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    if-nez v0, :cond_5

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    if-eqz v0, :cond_5

    :cond_3
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetectMotor sMotorUpLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppMotorCommand: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o1()I

    :cond_5
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->v0:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->f0()I

    :cond_7
    return-void
.end method

.method static synthetic B(Lcom/oneplus/android/server/OpMotorManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->irq:Z

    return p0
.end method

.method private B0()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oxb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->u0()Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, "OpMotorManagerService"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera app focus from back in 600ms, remove downMessage"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->veq:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cgv:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zgw:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_3

    const-string v0, "camera app focus from backgroud and should upmotor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->b1()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->c:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->h1(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->p1(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_5
    :goto_0
    const-string v0, "temp"

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zgw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->veq:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cgv:Z

    :cond_6
    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz v0, :cond_a

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oxb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->a:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    const-string v3, "net.oneplus.launcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->fto:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->t0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const-string v0, "non-standard camera app, maybe not release when backgroud"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    sget v2, Lcom/oneplus/android/server/OpMotorManagerService;->Z:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->x0(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 v0, 0x14

    sget v1, Lcom/oneplus/android/server/OpMotorManagerService;->c0:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void
.end method

.method static synthetic C(Lcom/oneplus/android/server/OpMotorManagerService;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gwm:Ljava/util/LinkedList;

    return-object p0
.end method

.method private C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "no"

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    iget-object p3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ear:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic D(Lcom/oneplus/android/server/OpMotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->irq:Z

    return p1
.end method

.method static synthetic E()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic F(Lcom/oneplus/android/server/OpMotorManagerService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    return p0
.end method

.method private F0(I)V
    .locals 5

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyMotorStateChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ugm:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ugm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/os/IOpMotorStateChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lcom/oneplus/android/os/IOpMotorStateChangedCallback;->onMotorStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "OpMotorManagerService"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ugm:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic G(Lcom/oneplus/android/server/OpMotorManagerService;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    return v0
.end method

.method static synthetic H()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->m:Z

    return v0
.end method

.method static synthetic I(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->m:Z

    return p0
.end method

.method private I0()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "openCamera"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "pullMotorWake"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic J()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->Y:I

    return v0
.end method

.method private J0()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "show phoneFallDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Y()V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v2, 0x50f0127

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f00d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$rtg;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$rtg;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$ssp;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$ssp;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic K(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/OpMotorManagerService;->Y:I

    return p0
.end method

.method private K0(I)I
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->L0(II)I

    move-result p0

    return p0
.end method

.method static synthetic L(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/OpMotorManagerService;->k0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private L0(II)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "readMotorControlData "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o0()Lyou/zta/you/sis/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gck:Lyou/zta/you/sis/zta/zta;

    invoke-interface {p0, p1, p2}, Lyou/zta/you/sis/zta/zta;->irq(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "readMotorData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic M()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->A:Ljava/lang/String;

    return-object v0
.end method

.method private M0(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg from socket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Message;->what:I

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic N(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/OpMotorManagerService;->a0(Ljava/lang/String;ILandroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method private N0(Landroid/os/IBinder;)Lcom/oneplus/android/server/OpMotorManagerService$oif;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gwm:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/OpMotorManagerService$oif;

    invoke-static {v1}, Lcom/oneplus/android/server/OpMotorManagerService$oif;->zta(Lcom/oneplus/android/server/OpMotorManagerService$oif;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/OpMotorManagerService;->k1(Lcom/oneplus/android/server/OpMotorManagerService$oif;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic O(Lcom/oneplus/android/server/OpMotorManagerService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ugm:Ljava/util/List;

    return-object p0
.end method

.method private O0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has not removed, exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->g0(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method static synthetic P(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->r1()V

    return-void
.end method

.method private P0(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OpMotorManagerService"

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/OpMotorManagerService;->N0(Landroid/os/IBinder;)Lcom/oneplus/android/server/OpMotorManagerService$oif;

    iget-object p2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gwm:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->wtn:Lcom/oneplus/android/server/OpMotorManagerService$oif;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const-string p2, "after unlinkToDeath"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p2, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    const/4 v1, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    :cond_1
    sget-boolean p2, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to delaydown Motor by "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    if-eq p1, v1, :cond_4

    :cond_3
    iget p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    if-eqz p1, :cond_6

    :cond_4
    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "other2 is using motor, mIsFaceRecog: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    return p0
.end method

.method static synthetic Q(Lcom/oneplus/android/server/OpMotorManagerService;)Lcom/oneplus/android/server/scene/GameModeObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->igw:Lcom/oneplus/android/server/scene/GameModeObserver;

    return-object p0
.end method

.method private Q0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cgv:Z

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zgw:Ljava/lang/String;

    return-void
.end method

.method static synthetic R()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    return v0
.end method

.method private R0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->veq:Z

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zgw:Ljava/lang/String;

    return-void
.end method

.method static synthetic S(Lcom/oneplus/android/server/OpMotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->lqr:Z

    return p1
.end method

.method private S0()V
    .locals 5

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorDownArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->c0()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/android/server/OpMotorManagerService;->i0:J

    sget-wide v3, Lcom/oneplus/android/server/OpMotorManagerService;->h0:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/android/server/OpMotorManagerService;->k0:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->p0:Z

    iget-boolean v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    if-eq v3, v1, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    if-eqz v3, :cond_2

    :cond_0
    sget-boolean v3, Lcom/oneplus/android/server/OpMotorManagerService;->v0:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/OpMotorManagerService;->w0:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->lqr:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->les:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMotorDownArrived sMotorDownPress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAppMotorCommand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatestMotorCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o1()I

    :cond_2
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->v0:Z

    if-eqz v0, :cond_7

    :cond_3
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 v1, 0x12

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->v0:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 v1, 0x16

    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Q0()V

    :cond_7
    sput-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->x0:Z

    iput-boolean v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->lqr:Z

    sput-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    sput-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->v0:Z

    iput-boolean v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdw:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->b0()V

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->m0:Z

    sput-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->m0:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->W()V

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ivd:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->d0()V

    :cond_8
    return-void
.end method

.method private T()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "backgroundSpecialControl:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->n0:Z

    if-eqz v1, :cond_0

    const-string v1, "backgroundSpecialControl true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->v0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->R0()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->irq:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/OpMotorManagerService;->g0(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method private T0()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->p0:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->m0:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->U()V

    return-void
.end method

.method private U()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    sget v2, Lcom/oneplus/android/server/OpMotorManagerService;->a0:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->X()V

    return-void
.end method

.method private U0()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/android/server/OpMotorManagerService;->h0:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->p0:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotorDowning mFocusPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sCameraUserPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/OpMotorManagerService;->F0(I)V

    :cond_0
    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->l0()V

    :cond_1
    return-void
.end method

.method private V()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    sget v2, Lcom/oneplus/android/server/OpMotorManagerService;->a0:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->W()V

    return-void
.end method

.method private V0()V
    .locals 0

    return-void
.end method

.method private W()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/android/server/OpMotorManagerService;->X:I

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private W0()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorPush"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->F0(I)V

    return-void
.end method

.method private X()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/android/server/OpMotorManagerService;->W:I

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private X0()V
    .locals 8

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUpArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->l1()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/android/server/OpMotorManagerService;->g0:J

    sget-wide v3, Lcom/oneplus/android/server/OpMotorManagerService;->f0:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/android/server/OpMotorManagerService;->j0:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->o0:Z

    sget v3, Lcom/oneplus/android/server/OpMotorManagerService;->V:I

    add-int/2addr v3, v1

    sput v3, Lcom/oneplus/android/server/OpMotorManagerService;->V:I

    const/16 v4, 0x3c

    if-le v3, v4, :cond_0

    sput v2, Lcom/oneplus/android/server/OpMotorManagerService;->V:I

    :cond_0
    sget-boolean v3, Lcom/oneplus/android/server/OpMotorManagerService;->m0:Z

    sput-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->m0:Z

    sget-boolean v3, Lcom/oneplus/android/server/OpMotorManagerService;->x0:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdw:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    if-eqz v3, :cond_1

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->f0()I

    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdw:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->X()V

    iget-boolean v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "persist.sys.motor.calibtime"

    invoke-static {v7, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-boolean v5, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sinceLastCalibTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide v5, 0x9a7ec800L

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    iput-boolean v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    return-void

    :cond_4
    invoke-static {}, Lcom/oneplus/android/server/sis;->kth()Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ivd:Z

    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ivd:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->m1()V

    :cond_6
    return-void
.end method

.method private Y()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vju:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->a1()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v2, 0x510000b

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Motor Error"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method private Y0()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUpLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->o0:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->m0:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->V()V

    return-void
.end method

.method private Z()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "delayDownMotorByCamera"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->Z:I

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ear:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0x50

    invoke-static {v2, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->b0:I

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ibl:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Z0()V
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/android/server/OpMotorManagerService;->f0:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->o0:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    sget-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->F0(I)V

    :cond_0
    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->s0()V

    return-void
.end method

.method static synthetic a(Lcom/oneplus/android/server/OpMotorManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cjf:Ljava/lang/String;

    return-object p0
.end method

.method private a0(Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayDownMotorBySystemApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ibl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/oneplus/android/server/OpMotorManagerService;->P0(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const/16 v1, 0xb

    iput v1, p3, Landroid/os/Message;->what:I

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    int-to-long p1, p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a1()Z
    .locals 0

    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic b(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cjf:Ljava/lang/String;

    return-object p1
.end method

.method private b0()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->you:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->d:Landroid/hardware/SensorEventListener;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private b1()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyguardAppear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vju:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFaceRecog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sCameraUserPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraUserPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mShowUpMotorView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vju:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    if-nez v0, :cond_1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    const-string v1, "com.oneplus.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    const-string v1, "com.oneplus.faceunlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x166

    sget-object v1, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->b:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic bio(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/OpMotorManagerService;->p1(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static synthetic bud(Lcom/oneplus/android/server/OpMotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    return p1
.end method

.method static synthetic bvj(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oneplus/android/server/OpMotorManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ear:Ljava/lang/String;

    return-object p0
.end method

.method private c0()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ivd:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/sis;->zta()V

    const-string p0, "OpMotorManagerService"

    const-string v0, "downArrivedCalib successed"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private c1()V
    .locals 6

    const-string v0, "OpMotorManagerService"

    const-string v1, "showBackgroundUseMotorDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Y()V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->fto:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v4, 0x50f0088

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v5, 0x50f000e

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f008e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$sis;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$sis;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f0040

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$tsu;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$tsu;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic cgv(Lcom/oneplus/android/server/OpMotorManagerService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->b1()Z

    move-result p0

    return p0
.end method

.method static synthetic cjf(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic cno(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/OpMotorManagerService;->M0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ear:Ljava/lang/String;

    return-object p1
.end method

.method private d0()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/android/server/sis;->ssp(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oneplus/android/server/sis;->lqr:I

    add-int/2addr v1, v0

    sput v1, Lcom/oneplus/android/server/sis;->lqr:I

    :cond_0
    sget v1, Lcom/oneplus/android/server/sis;->lqr:I

    sget v2, Lcom/oneplus/android/server/OpMotorManagerService;->Y:I

    if-le v1, v2, :cond_1

    const-string v1, "OpMotorManagerService"

    const-string v2, "downArrivedCalibDetect successed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    :cond_1
    return-void
.end method

.method private d1()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorCannotUpDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Y()V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v2, 0x50f0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f013b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$qbh;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$qbh;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic dma(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/OpMotorManagerService;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->B0()V

    return-void
.end method

.method private e0()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l0:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->X:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/android/server/OpMotorManagerService;->X:I

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loopDetect sDownLoopDetectCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/OpMotorManagerService;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->X:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    sget v2, Lcom/oneplus/android/server/OpMotorManagerService;->d0:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->A0()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->F0(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private e1()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Y()V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v2, 0x50f0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f013b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$zta;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$zta;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic ear(Lcom/oneplus/android/server/OpMotorManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->c:Z

    return p0
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    return v0
.end method

.method private f0()I
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "downMotor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->v1(III)I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downMotor res: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private f1()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorUpLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Y()V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v2, 0x50f0015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f00d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$dma;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$dma;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$ywr;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$ywr;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic fto(Lcom/oneplus/android/server/OpMotorManagerService;Lcom/oneplus/android/server/OpMotorManagerService$gwm;)Lcom/oneplus/android/server/OpMotorManagerService$gwm;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bvj:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    return-object p1
.end method

.method static synthetic g(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->l0:Z

    return p0
.end method

.method private g0(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downMotorByAllScene :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAppMotorCommand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mLatestMotorCommand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpMotorManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ibl:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string v0, "OpMotorManagerService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "screenoff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->x0:Z

    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    if-nez v3, :cond_9

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "systemui_faceunlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    if-eq p1, v1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    if-eqz p1, :cond_5

    :cond_3
    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz p1, :cond_4

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other2 is using motor, mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p2

    return v2

    :cond_5
    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    monitor-exit p2

    return p0

    :cond_7
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz p1, :cond_8

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downMotorByAllScene sMotorUped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->f0()I

    move-result p0

    monitor-exit p2

    return p0

    :cond_9
    :goto_2
    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz p1, :cond_a

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other1 is using motor, mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit p2

    return v2

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private g1()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Y()V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v2, 0x50f000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v3, 0x50f013b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/OpMotorManagerService$you;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/OpMotorManagerService$you;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic gck(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->l0()V

    return-void
.end method

.method static synthetic gwm(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    return p0
.end method

.method static synthetic h(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->n1()V

    return-void
.end method

.method private h0()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "downMotorByAudio"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->v0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "downMotorByAudio isDownOrNot true"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->R0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->irq:Z

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->g0(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_1
    return-void
.end method

.method private h1(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showUpMotorView show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic hmo(Lcom/oneplus/android/server/OpMotorManagerService;)Lcom/oneplus/android/server/OpMotorManagerService$gwm;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bvj:Lcom/oneplus/android/server/OpMotorManagerService$gwm;

    return-object p0
.end method

.method static synthetic i(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->e0()V

    return-void
.end method

.method private i0()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "poweroff down motor at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->w0:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->f0()I

    return-void
.end method

.method private i1()V
    .locals 12

    const-string v0, "OpMotorManagerService"

    const-string v1, "showUpMotorWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Y()V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v2, 0x50f0125

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const v2, 0x50f013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/android/server/OpMotorManagerService$wtn;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/OpMotorManagerService$wtn;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oif:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v11

    const v0, -0x777778

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setClickable(Z)V

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$gck;

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/oneplus/android/server/OpMotorManagerService$gck;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;JJLandroid/widget/Button;I)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic ibl()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    return v0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/OpMotorManagerService;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o1()I

    move-result p0

    return p0
.end method

.method static synthetic ire(Lcom/oneplus/android/server/OpMotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->c:Z

    return p1
.end method

.method static synthetic irq(Lcom/oneplus/android/server/OpMotorManagerService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/OpMotorManagerService;->t0(I)Z

    move-result p0

    return p0
.end method

.method static synthetic ivd(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oxb:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/OpMotorManagerService;->g0(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method private j0()V
    .locals 2

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->F0(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->v0:Z

    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->o0:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdw:Z

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->T()V

    return-void
.end method

.method private k0(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Motor Manager State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFocusPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/OpMotorManagerService;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAppMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/OpMotorManagerService;->x0(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sRequestMotorTagSize = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sIntervalTime = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->Z:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUping = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->o0:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDowning = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->p0:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUped = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDowned = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUpLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDownLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sAudioCameraUserExit = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->n0:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private k1(Lcom/oneplus/android/server/OpMotorManagerService$oif;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/oneplus/android/server/OpMotorManagerService$oif;->zta(Lcom/oneplus/android/server/OpMotorManagerService$oif;)Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic kth(Lcom/oneplus/android/server/OpMotorManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->j0()V

    return-void
.end method

.method private l0()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "OpMotorManagerService"

    const-string v2, "startHomeIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private l1()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ivd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/sis;->gck()V

    invoke-static {}, Lcom/oneplus/android/server/sis;->bio()Z

    const-string v0, "OpMotorManagerService"

    const-string v1, "upArrivedCalib successed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ivd:Z

    sput v0, Lcom/oneplus/android/server/sis;->lqr:I

    sput v0, Lcom/oneplus/android/server/sis;->veq:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "persist.sys.motor.calibtime"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic les(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/OpMotorManagerService;->w0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lqr(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Z()V

    return-void
.end method

.method static synthetic m(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->I0()V

    return-void
.end method

.method public static m0()Lcom/oneplus/android/server/OpMotorManagerService;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->n:Lcom/oneplus/android/server/OpMotorManagerService;

    return-object v0
.end method

.method private m1()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/android/server/sis;->ssp(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/android/server/sis;->veq:I

    add-int/2addr v0, v1

    sput v0, Lcom/oneplus/android/server/sis;->veq:I

    :cond_0
    sget v0, Lcom/oneplus/android/server/sis;->veq:I

    sget v2, Lcom/oneplus/android/server/OpMotorManagerService;->Y:I

    if-le v0, v2, :cond_1

    const-string v0, "OpMotorManagerService"

    const-string v2, "upArrivedCalibDetect successed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->qeg:Z

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->h0()V

    return-void
.end method

.method public static n0(Landroid/content/Context;)Lcom/oneplus/android/server/OpMotorManagerService;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->n:Lcom/oneplus/android/server/OpMotorManagerService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->n:Lcom/oneplus/android/server/OpMotorManagerService;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/OpMotorManagerService;->n:Lcom/oneplus/android/server/OpMotorManagerService;

    return-object p0
.end method

.method private n1()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l0:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->W:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/android/server/OpMotorManagerService;->W:I

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetect sUpLoopDetectCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/android/server/OpMotorManagerService;->W:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->W:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ge v0, v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    sget v1, Lcom/oneplus/android/server/OpMotorManagerService;->d0:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->A0()V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/OpMotorManagerService;->F0(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/oneplus/android/server/OpMotorManagerService;->g0(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 v0, 0xf

    goto :goto_1

    :cond_3
    if-le v0, v2, :cond_4

    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/OpMotorManagerService;->F0(I)V

    invoke-direct {p0, v1, v4}, Lcom/oneplus/android/server/OpMotorManagerService;->g0(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 v0, 0x10

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic o(Lcom/oneplus/android/server/OpMotorManagerService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/OpMotorManagerService;->x0(I)Z

    move-result p0

    return p0
.end method

.method private o0()Lyou/zta/you/sis/zta/zta;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gck:Lyou/zta/you/sis/zta/zta;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lyou/zta/you/sis/zta/zta;->ywr()Lyou/zta/you/sis/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gck:Lyou/zta/you/sis/zta/zta;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getting MotorControl hw service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gck:Lyou/zta/you/sis/zta/zta;

    return-object p0
.end method

.method private o1()I
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "upMotor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->irq:Z

    iget-boolean v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/oneplus/android/server/OpMotorManagerService;->s1(J)V

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v2}, Lcom/oneplus/android/server/OpMotorManagerService;->v1(III)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upMotor res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method static synthetic obl(Lcom/oneplus/android/server/OpMotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->a:Z

    return p1
.end method

.method static synthetic oif()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic oxb(Lcom/oneplus/android/server/OpMotorManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->q1()V

    return-void
.end method

.method private p0()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cno:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private p1(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotorByAllScene :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ibl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OpMotorManagerService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "systemui_faceunlock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/OpMotorManagerService;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->hmo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :try_start_1
    new-instance v1, Lcom/oneplus/android/server/OpMotorManagerService$oif;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oneplus/android/server/OpMotorManagerService$oif;-><init>(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;Landroid/os/IBinder;Lcom/oneplus/android/server/OpMotorManagerService$cno;)V

    iput-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->wtn:Lcom/oneplus/android/server/OpMotorManagerService$oif;

    const/4 p1, 0x0

    invoke-interface {p2, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    const-string p2, "OpMotorManagerService"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "OpMotorManagerService"

    const-string v1, "removeMessages MSG_MOTOR_DELAY_DOWN_SYSTEMAPP"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-boolean p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->les:Z

    if-eqz p1, :cond_7

    :cond_6
    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    iget p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ire:I

    monitor-exit v0

    return p0

    :cond_8
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz p1, :cond_9

    const-string p1, "OpMotorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotorByAllScene upMotor sMotorDowned: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o1()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic q()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->p0:Z

    return v0
.end method

.method private q0()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cno:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private q1()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->veq:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OpMotorManagerService"

    const-string v1, "upMotorByCallEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->v0()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "upMotorByCallEnd isDownOrNot false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o1()I

    :cond_1
    return-void
.end method

.method static synthetic qbh(Lcom/oneplus/android/server/OpMotorManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->fto:I

    return p1
.end method

.method static synthetic qeg(Lcom/oneplus/android/server/OpMotorManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->oxb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->i1()V

    return-void
.end method

.method private r0()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "start motor service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "motor"

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->i:Landroid/os/IBinder;

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-boolean v1, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v1, :cond_1

    const-string v1, "Start motor service failed"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private r1()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vju:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "OpMotorManagerService"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->p1(Ljava/lang/String;Landroid/os/IBinder;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->h1(Z)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->b:Z

    :cond_0
    return-void
.end method

.method static synthetic rtg()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->Z:I

    return v0
.end method

.method static synthetic s(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->f1()V

    return-void
.end method

.method private s0()V
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "initSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->you:Landroid/hardware/SensorManager;

    const v1, 0x1fa2658

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->sis:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->d:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->sis:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->you:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    return-void
.end method

.method private s1(J)V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update motor up time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdb:[J

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, v2, v3

    aput-wide v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdb:[J

    aput-wide p1, v1, v2

    aget-wide p1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-lez p1, :cond_2

    aget-wide p1, v1, v2

    aget-wide v1, v1, v0

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x4650

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    const/4 p1, 0x6

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vdb:[J

    aput-wide v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->R0()V

    return-void
.end method

.method static synthetic ssp(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/OpMotorManagerService;->Z:I

    return p0
.end method

.method static synthetic t(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->d1()V

    return-void
.end method

.method private t0(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private t1(II)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "writeFlashControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o0()Lyou/zta/you/sis/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gck:Lyou/zta/you/sis/zta/zta;

    invoke-interface {p0, p1, p2}, Lyou/zta/you/sis/zta/zta;->vdb(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeFlashControlData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/OpMotorManagerService;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->f0()I

    move-result p0

    return p0
.end method

.method static synthetic u(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->e1()V

    return-void
.end method

.method private u0()Z
    .locals 1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic ugm(Lcom/oneplus/android/server/OpMotorManagerService;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->p0()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->g1()V

    return-void
.end method

.method private v0()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->w0(Ljava/lang/String;)Z

    move-result v0

    sget v1, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/OpMotorManagerService;->x0(I)Z

    move-result p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private v1(III)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "writeMotorControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o0()Lyou/zta/you/sis/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gck:Lyou/zta/you/sis/zta/zta;

    invoke-interface {p0, p1, p2, p3}, Lyou/zta/you/sis/zta/zta;->hmo(III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMotorControlData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic vdb(Lcom/oneplus/android/server/OpMotorManagerService;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->q0()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic vdw()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->b0:I

    return v0
.end method

.method static synthetic veq(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->n0:Z

    return p0
.end method

.method static synthetic vju(Lcom/oneplus/android/server/OpMotorManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bud:Z

    return p0
.end method

.method static synthetic w()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->e0:I

    return v0
.end method

.method private w0(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic wtn()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->m0:Z

    return v0
.end method

.method static synthetic x(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->c1()V

    return-void
.end method

.method private x0(I)Z
    .locals 5

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->rtg:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "get_pid"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPidArray.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecording: camaraUserPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " broadcastPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecording: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    sget-object p1, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic y()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->u0:Z

    return v0
.end method

.method private y0()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "isUpMotorOrNot"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    if-eqz v0, :cond_4

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->obl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    const-string v2, "org.codeaurora.ims"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/oneplus/android/server/OpMotorManagerService;->U:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->x0(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUpMotorOrNot upMotor, mUpMotorViewShowing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->b1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->c:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->h1(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->p1(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/OpMotorManagerService;)Lcom/oneplus/android/server/OpMotorManagerService$bvj;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    return-object p0
.end method

.method static synthetic ywr(Lcom/oneplus/android/server/OpMotorManagerService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->fto:I

    return p0
.end method

.method static synthetic z(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->J0()V

    return-void
.end method

.method private z0()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->kth:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->g:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method static synthetic zgw(Lcom/oneplus/android/server/OpMotorManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->a:Z

    return p0
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    return v0
.end method


# virtual methods
.method public D0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vju:Z

    sget-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz p0, :cond_0

    const-string p0, "OpMotorManagerService"

    const-string v0, "notifyKeyguardAppear"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public E0()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyKeyguardDisappear"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vju:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->b:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->y0()V

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->h1(Z)V

    return-void
.end method

.method public G0()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->les:Z

    iget-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->vju:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    const-string v1, "com.oneplus.faceunlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->z:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/OpMotorManagerService;->A:Ljava/lang/String;

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "screenoff"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->g0(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->b:Z

    return-void
.end method

.method public H0()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/OpMotorManagerService;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyScreenOn ScreenOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->les:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->y0()V

    return-void
.end method

.method public getMotorState()I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->o0:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->p0:Z

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    sget-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->s0:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    sget-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->t0:Z

    if-eqz p0, :cond_3

    const/4 p0, -0x5

    return p0

    :cond_3
    sget-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->q0:Z

    if-eqz p0, :cond_4

    const/16 p0, 0xa

    return p0

    :cond_4
    sget-boolean p0, Lcom/oneplus/android/server/OpMotorManagerService;->r0:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/16 p0, -0xa

    return p0
.end method

.method public j1()V
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ssp:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->cno:Landroid/app/IActivityTaskManager;

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o0()Lyou/zta/you/sis/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gck:Lyou/zta/you/sis/zta/zta;

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->rtg:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->kth:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->bio:Landroid/os/PowerManager;

    invoke-static {}, Lcom/oneplus/android/server/scene/GameModeObserver;->getInstance()Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->igw:Lcom/oneplus/android/server/scene/GameModeObserver;

    invoke-static {}, Lcom/oneplus/android/server/sis;->tsu()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/OpMotorManagerService;->K0(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->f0()I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ssp:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->h:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpMotorManagerService"

    const-string v2, "cannot register activity monitoring"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->rtg:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->e:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->ywr:Lcom/oneplus/android/server/OpMotorManagerService$bvj;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.INCALLUI_ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService;->f:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->r0()V

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->z0()V

    return-void
.end method

.method public notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while checking window status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/OpMotorManagerService;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public notifyKeyguardState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->E0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->D0()V

    :goto_0
    return-void
.end method

.method public notifyMotorState(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v3, "motor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->T0()V

    :cond_2
    :pswitch_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->S0()V

    :cond_3
    :goto_2
    move v1, v2

    goto :goto_3

    :pswitch_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->U0()V

    goto :goto_2

    :pswitch_3
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->X0()V

    goto :goto_2

    :pswitch_4
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Y0()V

    goto :goto_2

    :pswitch_5
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->Z0()V

    goto :goto_2

    :pswitch_6
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->W0()V

    goto :goto_2

    :pswitch_7
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->V0()V

    goto :goto_2

    :cond_4
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyPowerOff()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->i0()V

    return-void
.end method

.method public notifyScreenState(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->G0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->H0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public u1(ILjava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeMotorCalibData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->o0()Lyou/zta/you/sis/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService;->gck:Lyou/zta/you/sis/zta/zta;

    invoke-interface {p0, p1, p2}, Lyou/zta/you/sis/zta/zta;->p(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMotorCalibData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method
