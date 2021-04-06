.class public Lcom/oneplus/android/server/iris/you;
.super Lcom/oneplus/android/server/iris/cno;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/iris/you$rtg;,
        Lcom/oneplus/android/server/iris/you$you;,
        Lcom/oneplus/android/server/iris/you$sis;,
        Lcom/oneplus/android/server/iris/you$tsu;
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field private static final B:I = 0x0

.field private static final C:I = 0x1

.field private static final D:I = 0x2

.field private static final E:I = 0x3

.field private static final F:I = 0x4

.field private static final G:I = 0x5

.field private static final H:I = 0x6

.field private static final I:I = 0x7

.field private static final J:I = 0x8

.field private static final K:I = 0x3e8

.field private static final L:I = 0x1f4

.field private static final M:F = 60.0f

.field private static final N:F = 120.0f

.field private static final O:J = 0x1f40L

.field private static final P:J = 0x3e8L

.field private static final Q:I = 0x18

.field public static final R:I = 0x0

.field private static final S:I = 0x5a0

.field private static final T:I = 0xa00

.field private static final U:F = 120.0f

.field private static final V:F = 1.0f

.field private static final o:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final p:Ljava/lang/String; = "com.oneplus.gallery/com.oneplus.gallery2.VideoPlayerActivity"

.field private static final q:Ljava/lang/String; = "com.oneplus.gallery/com.oneplus.gallery.VideoPlayerActivity"

.field private static final r:Ljava/lang/String; = "com.android.systemui"

.field private static final s:Ljava/lang/String; = "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

.field private static final t:Ljava/lang/String; = "SCREEN OFF"

.field private static final u:Ljava/lang/String; = "com.netflix.mediaclient"

.field private static final v:I = 0xb

.field private static final w:I = 0x0

.field private static final x:I = 0x1

.field private static final y:I

.field private static final z:I


# instance fields
.field private a:Lcom/oneplus/iris/OpIrisWindowInfo;

.field private b:Ljava/lang/String;

.field private bio:Landroid/os/Handler;

.field private bud:Z

.field private bvj:Z

.field private c:Ljava/lang/String;

.field private cgv:Z

.field private cjf:Z

.field private cno:Lcom/oneplus/android/server/iris/kth;

.field private d:Ljava/lang/String;

.field private dma:Z

.field private e:Ljava/lang/String;

.field private ear:Z

.field private f:Ljava/lang/String;

.field private fto:Z

.field private g:Ljava/lang/String;

.field private gck:Z

.field private gwm:Z

.field private h:Landroid/app/KeyguardManager;

.field private hmo:Z

.field private i:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private ibl:Z

.field private igw:I

.field private ire:Z

.field private irq:I

.field private ivd:Lcom/oneplus/android/server/iris/you$rtg;

.field private j:Lcom/oneplus/android/server/iris/ssp;

.field private k:Landroid/hardware/display/DisplayManager;

.field private kth:Lcom/oneplus/android/server/iris/you$sis;

.field private l:Landroid/hardware/display/DisplayManagerInternal;

.field private les:Z

.field private lqr:Z

.field private m:Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

.field private n:Lcom/oneplus/android/server/iris/you$tsu;

.field private obl:Z

.field private oif:Z

.field private oxb:Z

.field private qbh:Z

.field private qeg:Ljava/lang/Runnable;

.field private final rtg:Lcom/oneplus/android/server/iris/you$you;

.field private ssp:Lcom/oneplus/android/server/iris/bio;

.field private final tsu:Landroid/content/Context;

.field private ugm:Z

.field private vdb:Z

.field private vdw:I

.field private veq:Z

.field private vju:Z

.field private wtn:I

.field private ywr:Z

.field private zgw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/cno;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/iris/you;->igw:I

    iput v0, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->gck:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->dma:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ywr:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->qbh:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->bvj:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->gwm:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ugm:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->vdb:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->zgw:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->obl:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->oxb:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->cjf:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ear:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ire:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->hmo:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->fto:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->veq:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->cgv:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->vju:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->bud:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->les:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    iput v0, p0, Lcom/oneplus/android/server/iris/you;->vdw:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->qeg:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->ivd:Lcom/oneplus/android/server/iris/you$rtg;

    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    invoke-direct {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->m:Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    iput-object p1, p0, Lcom/oneplus/android/server/iris/you;->tsu:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->bio:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/android/server/iris/you$sis;

    invoke-static {}, Lcom/oneplus/android/server/iris/sis;->you()Lcom/oneplus/android/server/iris/sis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/oneplus/android/server/iris/you$sis;-><init>(Lcom/oneplus/android/server/iris/you;Landroid/os/Looper;Lcom/oneplus/android/server/iris/you$zta;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    new-instance v1, Lcom/oneplus/android/server/iris/bio;

    invoke-direct {v1, p1}, Lcom/oneplus/android/server/iris/bio;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->ssp:Lcom/oneplus/android/server/iris/bio;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/bio;->ssp()Lcom/oneplus/android/server/iris/kth;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    new-instance v1, Lcom/oneplus/android/server/iris/you$you;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/iris/you$you;-><init>(Lcom/oneplus/android/server/iris/you;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->rtg:Lcom/oneplus/android/server/iris/you$you;

    new-instance v1, Lcom/oneplus/android/server/iris/you$rtg;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/iris/you$rtg;-><init>(Lcom/oneplus/android/server/iris/you;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->ivd:Lcom/oneplus/android/server/iris/you$rtg;

    new-instance v1, Lcom/oneplus/iris/OpIrisWindowInfo;

    invoke-direct {v1}, Lcom/oneplus/iris/OpIrisWindowInfo;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    new-instance v1, Lcom/oneplus/android/server/iris/ssp;

    invoke-direct {v1, p1}, Lcom/oneplus/android/server/iris/ssp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/you;->j:Lcom/oneplus/android/server/iris/ssp;

    new-instance p1, Lcom/oneplus/android/server/iris/you$tsu;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/iris/you$tsu;-><init>(Lcom/oneplus/android/server/iris/you;Lcom/oneplus/android/server/iris/you$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/iris/you;->n:Lcom/oneplus/android/server/iris/you$tsu;

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->x()V

    return-void
.end method

.method private A()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    const/16 v0, 0x10c

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/iris/tsu;->zta(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->gwm:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->vdb:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->bvj:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/you;->ugm:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private C()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->h:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ire:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/you;->hmo:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->cjf:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/you;->ear:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private F()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ywr:Z

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->hmo:Z

    if-eq v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/you;->ire:Z

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private G(I)Z
    .locals 6

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->k:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object p0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    const/16 v5, 0x5a0

    if-lt v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    const/16 v4, 0xa00

    if-lt v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private I(IZ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oneplus/android/server/iris/you;->igw:I

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    move v0, v2

    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2

    move v0, v1

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eq p1, v2, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    iget-object v5, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v5, "OpIrisManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setIrisConfigure bypassEnable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " sdr2hdrEnable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " memcEnable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " turnOnChip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz v4, :cond_4

    move p2, v2

    goto :goto_3

    :cond_4
    move p2, v1

    :goto_3
    iput p2, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    iput v1, p1, Landroid/os/Message;->arg2:I

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_6
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/you;->M(Z)V

    invoke-direct {p0, v4}, Lcom/oneplus/android/server/iris/you;->N(Z)V

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->L(Z)V

    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private J(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->cgv:Z

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->cgv:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private K(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private L(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->gck:Z

    const-string v1, "OpIrisManager"

    if-ne v0, p1, :cond_0

    const-string p0, "[ABypass] status has not change"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ABypass] changes from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->gck:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->y(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Can\'t switch to PT in QHD 120HZ!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    if-nez v0, :cond_2

    const-string p0, "PT status has changed!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->gck:Z

    iget-object p0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    if-eqz p1, :cond_3

    const-string p1, "56-1"

    goto :goto_0

    :cond_3
    const-string p1, "56-0"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/tsu;->ssp(Ljava/lang/String;)V

    return-void
.end method

.method private M(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ywr:Z

    const-string v1, "OpIrisManager"

    if-ne v0, p1, :cond_0

    const-string p0, "[MEMC] status has not change"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MEMC] changes from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->ywr:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->y(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Can\'t switch to MEMC in QHD 120HZ!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    const-string p0, "MEMC status has changed!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->ywr:Z

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->bud:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/kth;->you()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/iris/you;->k(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/kth;->tsu()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/iris/you;->k(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/you;->ssp()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    const-string v2, "com.netflix.mediaclient"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "258-74-0"

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/iris/tsu;->ssp(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    const-string v1, "258-0"

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/iris/tsu;->ssp(Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->cgv:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->J(Z)V

    :cond_7
    return-void
.end method

.method private N(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->dma:Z

    const-string v1, "OpIrisManager"

    if-ne v0, p1, :cond_0

    const-string p0, "[SDR2HDR] status has not change"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SDR2HDR] changes from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->dma:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->y(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Can\'t switch to SDR2HDR in QHD 120HZ!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const-string p0, "SDR2HDR status has changed!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->dma:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->i:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setActiveModesId(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p1}, Lcom/oneplus/android/server/iris/kth;->igw()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->i:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->resumeColorMode()V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    const-string p1, "267-3-0"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/tsu;->ssp(Ljava/lang/String;)V

    return-void
.end method

.method private O(I)Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/oneplus/android/server/iris/you;->qbh:Z

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->G(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->y(I)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->zgw:Z

    if-eqz p1, :cond_4

    move v0, v2

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-boolean p1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    if-eqz p1, :cond_5

    move v0, v2

    :cond_5
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->veq:Z

    if-eqz p1, :cond_6

    move v0, v2

    :cond_6
    iget p1, p0, Lcom/oneplus/android/server/iris/you;->vdw:I

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    if-nez p1, :cond_9

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_7
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->C()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    iput-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    :cond_9
    :goto_2
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->obl:Z

    if-eqz p1, :cond_a

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_a

    and-int/lit8 v0, v0, -0x3

    :cond_a
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->oxb:Z

    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->les:Z

    if-nez p1, :cond_c

    move v0, v1

    :cond_c
    sget-boolean p1, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz p1, :cond_e

    const-string p1, "OpIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIrisMode Current Mode: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Last Mode: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    invoke-direct {p0, v4}, Lcom/oneplus/android/server/iris/you;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] mMatchMEMC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mMatchSdr2Hdr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->qbh:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mVideoSdr2HdrSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->ugm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mVideoMemcSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->bvj:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mVideoMemcExtremeSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mGameMemcSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->gwm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mGameSdr2HdrSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->vdb:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsRecentAnimating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->veq:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mBatterySaverEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->zgw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mUserHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/iris/you;->vdw:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isKeyguardLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->C()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mUserPresent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsAdvancedNative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->obl:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsDisplayInversion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->oxb:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mScreenOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/android/server/iris/you;->les:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " splitScreenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-boolean v4, v4, Lcom/oneplus/iris/OpIrisWindowInfo;->splitScreenMode:Z

    if-eqz v4, :cond_d

    move v4, v2

    goto :goto_3

    :cond_d
    move v4, v1

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget p1, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    if-ne p1, v0, :cond_f

    monitor-exit p0

    return v1

    :cond_f
    const-string p1, "OpIrisManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IrisMode changes from: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/you;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n current package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/server/iris/you;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->bio:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->qeg:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget p1, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    iput p1, p0, Lcom/oneplus/android/server/iris/you;->igw:I

    iput v0, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private P(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->vju:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->vju:Z

    sget-boolean p0, Lcom/oneplus/server/zta;->q:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/oneplus/server/zta;->q()Lcom/oneplus/server/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/server/zta;->N(Z)V

    :cond_1
    return-void
.end method

.method private Q()V
    .locals 7

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    iget v1, p0, Lcom/oneplus/android/server/iris/you;->igw:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    and-int/lit8 v0, v1, 0x4

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRefreshPolicy mIrisMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/you;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLastIrisMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/iris/you;->igw:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/iris/you;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x42700000    # 60.0f

    iget v2, p0, Lcom/oneplus/android/server/iris/you;->igw:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    and-int/lit8 v2, v2, 0x4

    :cond_2
    iget v2, p0, Lcom/oneplus/android/server/iris/you;->igw:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    iget-boolean v5, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    const/high16 v6, 0x42f00000    # 120.0f

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/iris/you;->n(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_4

    iget v5, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/iris/you;->G(I)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v6

    :cond_4
    iget-object v5, p0, Lcom/oneplus/android/server/iris/you;->m:Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    iget-boolean v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    if-ne v2, v5, :cond_6

    sget-boolean p0, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz p0, :cond_5

    const-string p0, "MEMC status has not changed"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    cmpl-float v5, v0, v6

    if-nez v5, :cond_7

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/iris/you;->J(Z)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/iris/you;->J(Z)V

    :goto_1
    iget-object v3, p0, Lcom/oneplus/android/server/iris/you;->m:Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    iput v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->displayId:I

    const/4 v4, 0x3

    iput v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    iput-boolean v2, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    iput v0, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    sget-boolean v0, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRefreshPolicy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->m:Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->l:Landroid/hardware/display/DisplayManagerInternal;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->m:Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    return-void
.end method

.method private R(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStateMachine pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentModeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p1}, Lcom/oneplus/android/server/iris/you;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/oneplus/android/server/iris/you;->O(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iget p2, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    if-eqz p4, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/oneplus/android/server/iris/you;->I(IZ)V

    goto :goto_1

    :cond_0
    and-int/lit8 p2, p2, 0x4

    const/4 p3, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Lcom/oneplus/android/server/iris/you;->igw:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    if-eqz p2, :cond_2

    iget p4, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    invoke-direct {p0, p4, p1}, Lcom/oneplus/android/server/iris/you;->I(IZ)V

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->Q()V

    if-nez p2, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    invoke-direct {p0, p1, p3}, Lcom/oneplus/android/server/iris/you;->I(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/oneplus/android/server/iris/you;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->r(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/oneplus/android/server/iris/you;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/iris/you;->u(ZZ)V

    return-void
.end method

.method static synthetic bud(Lcom/oneplus/android/server/iris/you;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    return p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkWhiteList package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " containsSdr2HdrKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/you;->f(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " containMEMCPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/you;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " containsMEMCKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->e(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->fto:Z

    :cond_2
    iput-object p1, p0, Lcom/oneplus/android/server/iris/you;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/you;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ugm:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->vdb:Z

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/you;->m(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ugm:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->cjf:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->vdb:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ear:Z

    :goto_0
    const-string v0, "com.oneplus.gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.oneplus.gallery/com.oneplus.gallery2.VideoPlayerActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.oneplus.gallery/com.oneplus.gallery.VideoPlayerActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->cjf:Z

    goto :goto_4

    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->cjf:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->ear:Z

    :cond_8
    :goto_4
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/you;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->bvj:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->gwm:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/you;->l(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_c

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->bvj:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move p1, v1

    goto :goto_6

    :cond_b
    :goto_5
    move p1, v2

    :goto_6
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->ire:Z

    goto :goto_8

    :cond_c
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->gwm:Z

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->hmo:Z

    goto :goto_8

    :cond_d
    :goto_7
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->ire:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->hmo:Z

    :goto_8
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/you;->ssp()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "com.netflix.mediaclient"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->bvj:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    if-eqz p1, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->ire:Z

    :cond_10
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->E()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->qbh:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->D()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_11
    :goto_9
    return-void
.end method

.method static synthetic cgv(Lcom/oneplus/android/server/iris/you;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->veq:Z

    return p1
.end method

.method static synthetic cjf(Lcom/oneplus/android/server/iris/you;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->p(Z)V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->cno()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/kth;->tsu()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/kth;->tsu()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic ear(Lcom/oneplus/android/server/iris/you;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->t(Z)V

    return-void
.end method

.method private f(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->igw()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic fto(Lcom/oneplus/android/server/iris/you;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->q(I)V

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "unknown"

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/kth;->ssp()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->qbh:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->bio()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    const/4 p0, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v1, 0x30

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0x31

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const-string p1, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p0, v2

    :cond_4
    :goto_0
    if-eqz p0, :cond_6

    if-eq p0, v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "game"

    goto :goto_1

    :cond_6
    const-string v0, "video"

    :goto_1
    return-object v0
.end method

.method static synthetic hmo(Lcom/oneplus/android/server/iris/you;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->s(Z)V

    return-void
.end method

.method private i(I)Ljava/lang/String;
    .locals 3

    and-int/lit8 p0, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    move v2, v1

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    move v1, p0

    :goto_1
    if-eqz v1, :cond_2

    const-string p0, "Bypass"

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    const-string p0, "MEMC_ONLY"

    return-object p0

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    const-string p0, "SDR2HDR_ONLY"

    return-object p0

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    const-string p0, "SDR_AND_MEMC"

    return-object p0

    :cond_5
    const-string p0, "unknown"

    return-object p0
.end method

.method static synthetic ire(Lcom/oneplus/android/server/iris/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->v()V

    return-void
.end method

.method static synthetic irq(Lcom/oneplus/android/server/iris/you;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->tsu:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic ivd(Lcom/oneplus/android/server/iris/you;)Lcom/oneplus/android/server/iris/you$sis;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    return-object p0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->kth()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string p1, "1"

    if-ne p0, p1, :cond_0

    const-string p0, "extreme"

    goto :goto_0

    :cond_0
    const-string p0, "smooth"

    goto :goto_0

    :cond_1
    const-string p0, "no effect"

    :cond_2
    :goto_0
    return-object p0
.end method

.method private k(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/you;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private l(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->ssp()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic les(Lcom/oneplus/android/server/iris/you;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->i(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lqr(Lcom/oneplus/android/server/iris/you;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->o(I)V

    return-void
.end method

.method private m(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->bio()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private n(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "OpIrisManager"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v2}, Lcom/oneplus/android/server/iris/kth;->kth()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-boolean v3, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoMemcMode pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " memcRate : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x1

    if-ne v2, p1, :cond_3

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    if-eqz p0, :cond_3

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "smr:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PKG:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private o(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OpIrisManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAfterModeChange modeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/oneplus/android/server/iris/you;->R(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private p(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatterySaverChange enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMemcEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->ywr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSdr2HdrEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->dma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ywr:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->dma:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->H()V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->j:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->ibl(Z)V

    return-void
.end method

.method private q(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget v1, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/android/server/iris/you;->R(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic qeg(Lcom/oneplus/android/server/iris/you;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->fto:Z

    return p1
.end method

.method private r(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "values"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFeatureChange type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " values[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpIrisManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->K(Z)V

    :cond_0
    return-void
.end method

.method private s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->j:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/iris/ssp;->gwm(Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->j:Lcom/oneplus/android/server/iris/ssp;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/ssp;->oxb()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/ssp;->ear()V

    :goto_0
    return-void
.end method

.method private t(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->fto:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1f40

    :goto_0
    sget-boolean v2, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasShown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/android/server/iris/you;->fto:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " immediate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpIrisManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->qeg:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    new-instance p1, Lcom/oneplus/android/server/iris/you$zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/iris/you$zta;-><init>(Lcom/oneplus/android/server/iris/you;)V

    iput-object p1, p0, Lcom/oneplus/android/server/iris/you;->qeg:Ljava/lang/Runnable;

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->bio:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->qeg:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->bio:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->qeg:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private u(ZZ)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/iris/you;->L(Z)V

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/you;->N(Z)V

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/iris/you;->M(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private v()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "OpIrisManager"

    const-string v1, "handleSystemSceneChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v0, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/android/server/iris/you;->R(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic vdw(Lcom/oneplus/android/server/iris/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/you;->cgv:Z

    return p0
.end method

.method static synthetic veq(Lcom/oneplus/android/server/iris/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->w()V

    return-void
.end method

.method static synthetic vju(Lcom/oneplus/android/server/iris/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->H()V

    return-void
.end method

.method private w()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "OpIrisManager"

    const-string v1, "handleWindowChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->d:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/android/server/iris/you;->irq:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/android/server/iris/you;->R(Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private x()V
    .locals 1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->kth(Lcom/android/server/OnePlusUtil$zta$zta;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/cno;->zta:Lcom/oneplus/android/server/iris/tsu;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->rtg:Lcom/oneplus/android/server/iris/you$you;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/iris/tsu;->rtg(Lyou/you/zta/zta/you/igw$you;)V

    return-void
.end method

.method private y(I)Z
    .locals 6

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->k:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object p0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    const/high16 v5, 0x42f00000    # 120.0f

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private z(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "258-40-0-0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bio()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->ssp:Lcom/oneplus/android/server/iris/bio;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/bio;->igw()V

    return-void
.end method

.method public bvj(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenStatus on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->H()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->C()Z

    move-result v0

    const-string v1, "OpIrisManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenStatus iskeyguardLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->les:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cno()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->dma()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dma(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayInversionEnable enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->oxb:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->H()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-boolean p2, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontPackageChanged packageName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpIrisManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iput-object p1, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    const-string p3, ""

    iput-object p3, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const-string p2, "OpIrisManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "frontPackageChanged packageName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p4, p4, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " activityName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p4, p4, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/you;->gck:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/you;->dma:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    if-eqz p2, :cond_3

    :cond_2
    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public gck(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBatterySaverEnable enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->zgw:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public gwm(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/iris/you;->vdw:I

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->j:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->vdb(I)V

    return-void
.end method

.method public ibl()V
    .locals 2

    const-string v0, "OpIrisManager"

    const-string v1, "setUserPresent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->H()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public igw(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenStateChange state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->les:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public kth(Z)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRecentAnimatorStatus mIsRecentAnimating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you;->veq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isAnimating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->ivd:Lcom/oneplus/android/server/iris/you$rtg;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->ivd:Lcom/oneplus/android/server/iris/you$rtg;

    iput-boolean p1, v0, Lcom/oneplus/android/server/iris/you$rtg;->zta:Z

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->veq:Z

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public obl()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->tsu:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->h:Landroid/app/KeyguardManager;

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->i:Lcom/oneplus/display/IOneplusColorDisplayManager;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->tsu:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->k:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->j:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/ssp;->ire()V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->bud:Z

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->l:Landroid/hardware/display/DisplayManagerInternal;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->n:Lcom/oneplus/android/server/iris/you$tsu;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayModeSpecsCallback(Landroid/hardware/display/DisplayManagerInternal$DesiredDisplayModeSpecsCallback;)V

    return-void
.end method

.method public bridge synthetic oif(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/android/server/iris/cno;->oif(Ljava/lang/String;)V

    return-void
.end method

.method public oxb(Lcom/oneplus/iris/OpIrisWindowInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->B()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->b:Ljava/lang/String;

    const-string v0, "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->vdw:I

    if-eqz v0, :cond_2

    const-string v0, "SCREEN OFF"

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object v1, v1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/android/server/iris/you;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/oneplus/android/server/iris/you;->d:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/you;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public qbh(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGameSdr2HdrSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->vdb:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public rtg()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->kth()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic sis(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/android/server/iris/cno;->sis(I)I

    move-result p0

    return p0
.end method

.method public ssp()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->gck()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tsu()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/kth;->ssp()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public ugm(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoMemcExtremeSwitch enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->j:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/iris/ssp;->ugm(Z)V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->H()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public vdb(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoMemcSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->bvj:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public wtn(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdvancedNativeStatus enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->obl:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public you(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    const-string v0, " timmingv2: "

    const-string v1, ""

    if-eqz p2, :cond_3

    array-length v2, p2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " args[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OpIrisManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p2, p2, v3

    const-string v2, "-whitelist"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "------------WhitList Version----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p2}, Lcom/oneplus/android/server/iris/kth;->ywr()J

    move-result-wide v4

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " version: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " url: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v2}, Lcom/oneplus/android/server/iris/kth;->dma()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/kth;->gck()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------Sdr2Hdr App Info----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p2}, Lcom/oneplus/android/server/iris/kth;->wtn()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/kth;->bio()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v2}, Lcom/oneplus/android/server/iris/kth;->igw()Ljava/util/HashMap;

    move-result-object v2

    move v4, v3

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, " appType: "

    const-string v7, " package: "

    const-string v8, " cmd: "

    if-ge v4, v5, :cond_0

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------Memc App Info----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p2}, Lcom/oneplus/android/server/iris/kth;->cno()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/kth;->ssp()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/kth;->kth()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "package info: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v3

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " effect: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "activity info: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p2}, Lcom/oneplus/android/server/iris/kth;->rtg()Ljava/util/ArrayList;

    move-result-object p2

    move v0, v3

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, " activity: "

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v4}, Lcom/oneplus/android/server/iris/kth;->tsu()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string p2, "Dual MEMC activity info: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {p2}, Lcom/oneplus/android/server/iris/kth;->sis()Ljava/util/ArrayList;

    move-result-object p2

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you;->cno:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v1}, Lcom/oneplus/android/server/iris/kth;->you()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const-string p2, "Iris Status Manager:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------App Info----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " current package: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " current activity: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->f:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " match sdr2hdr whitelist: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/you;->f(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " match memc whitelist: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->f:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/you;->e(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " app type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/you;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " memc effect: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/you;->g:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/you;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------Iris Status----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " iris mode: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/iris/you;->wtn:I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/iris/you;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " video memc enable: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->ire:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " game memc enable: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->hmo:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " video sdr2hdr enable: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->cjf:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " game sdr2hdr enable: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->ear:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Dual MIPI Supported: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/you;->bud:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/you;->ssp()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------System Status----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " userHandle: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/iris/you;->vdw:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " userPresent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->lqr:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " keyguard locked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/you;->C()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " battery saver enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->zgw:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " rencent is animating: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->veq:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " display inversion enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->oxb:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "------------Settings Value----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " video memc 60HZ switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->bvj:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " video memc 120Hz switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ibl:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " video sdr2hdr switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->ugm:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " game memc switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->gwm:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " game sdr2hdr switch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/you;->vdb:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you;->j:Lcom/oneplus/android/server/iris/ssp;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/ssp;->ywr(Ljava/io/PrintWriter;)V

    :cond_4
    return-void
.end method

.method public ywr(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGameMemcSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->gwm:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zgw(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoSdr2HdrSwitch enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->ugm:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zta(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    sget-boolean p2, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontActivityChanged activityName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpIrisManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p4, p4, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    const-string p1, "OpIrisManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "frontActivityChanged packageName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p3, p3, Lcom/oneplus/iris/OpIrisWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " activityName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p3, p3, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->gck:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->dma:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/iris/you;->oif:Z

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "com.android.systemui/com.android.systemui.pip.phone.PipMenuActivity"

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->a:Lcom/oneplus/iris/OpIrisWindowInfo;

    iget-object p2, p2, Lcom/oneplus/iris/OpIrisWindowInfo;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/you;->kth:Lcom/oneplus/android/server/iris/you$sis;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
