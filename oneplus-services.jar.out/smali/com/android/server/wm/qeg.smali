.class public Lcom/android/server/wm/qeg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/qeg$zta;
    }
.end annotation


# static fields
.field private static cno:Z = false

.field public static final kth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final rtg:Ljava/lang/String; = "ColorZoomWindowRUSConfigManager"

.field private static volatile ssp:Lcom/android/server/wm/qeg; = null

.field public static final tsu:I = 0x2


# instance fields
.field private final sis:Lcom/android/server/wm/qeg$zta;

.field private you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

.field private final zta:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/IColorZoomWindowManager;->sDebugfDetail:Z

    sput-boolean v0, Lcom/android/server/wm/qeg;->cno:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.whatsapp/.TextStatusComposerActivity"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wm/qeg;->kth:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    new-instance v0, Lcom/android/server/wm/qeg$zta;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/qeg$zta;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/qeg;->sis:Lcom/android/server/wm/qeg$zta;

    return-void
.end method

.method public static rtg()Lcom/android/server/wm/qeg;
    .locals 2

    sget-object v0, Lcom/android/server/wm/qeg;->ssp:Lcom/android/server/wm/qeg;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/qeg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/qeg;->ssp:Lcom/android/server/wm/qeg;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/qeg;

    invoke-direct {v1}, Lcom/android/server/wm/qeg;-><init>()V

    sput-object v1, Lcom/android/server/wm/qeg;->ssp:Lcom/android/server/wm/qeg;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/qeg;->ssp:Lcom/android/server/wm/qeg;

    return-object v0
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/qeg;->cno:Z

    return v0
.end method


# virtual methods
.method public bio(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    invoke-static {}, Lcom/android/server/wm/c;->rtg()Lcom/android/server/wm/c;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/c;->cno(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)Z

    move-result p0

    return p0
.end method

.method public cno()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getUnSupportCpnList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dma(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/qeg;->cno:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeConfigChangedListener listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowRUSConfigManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/qeg;->sis:Lcom/android/server/wm/qeg$zta;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/qeg;->sis:Lcom/android/server/wm/qeg$zta;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/qeg$zta;->ssp(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public gck()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnabled mZoomSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {v1}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getZoomWindowSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowRUSConfigManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getZoomWindowSwitch()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public igw()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/qeg;->cno:Z

    if-eqz v0, :cond_0

    const-string v0, "ColorZoomWindowRUSConfigManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/c;->rtg()Lcom/android/server/wm/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/c;->wtn()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/wm/qeg;->cno:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mColorZoomWindowRUSConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ColorZoomWindowRUSConfigManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public kth()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/qeg;->cno:Z

    if-eqz v0, :cond_0

    const-string v0, "ColorZoomWindowRUSConfigManager"

    const-string v1, "getZoomWindowConfig start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sis(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigList type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowRUSConfigManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/wm/c;->rtg()Lcom/android/server/wm/c;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {v2, v1, p0, p1}, Lcom/android/server/wm/c;->tsu(Ljava/util/List;Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;I)V

    const-string p0, "ColorZoomWindowRUSConfigManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkgList = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ssp()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.tencent.mobileqq/.activity.SplashActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.mobileqq/.activity.ChatActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tsu()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/wm/qeg;->kth:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wtn(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getZoomWindowSwitch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ColorZoomWindowRUSConfigManager"

    const-string p1, "zoom feature off"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/c;->rtg()Lcom/android/server/wm/c;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/wm/c;->bio(Ljava/lang/String;ILcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {p0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getShowToastSwitch()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getInstance()Lcom/android/server/wm/ColorZoomWindowManagerService;

    move-result-object v2

    const/4 v3, 0x2

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ColorZoomWindowManagerService;->notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "ColorZoomWindowRUSConfigManager"

    const-string p1, "show unsupport toast"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "ColorZoomWindowRUSConfigManager"

    const-string p1, "toast switch off, cancel show toast"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return v1

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/qeg;->bio(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public you(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/qeg;->cno:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConfigChangedListener listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorZoomWindowRUSConfigManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/qeg;->sis:Lcom/android/server/wm/qeg$zta;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/qeg;->sis:Lcom/android/server/wm/qeg$zta;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/qeg$zta;->zta(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ywr(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/qeg;->cno:Z

    if-eqz v0, :cond_0

    const-string v0, "ColorZoomWindowRUSConfigManager"

    const-string v1, "setZoomWindowConfig start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qeg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    sget-boolean v1, Lcom/android/server/wm/qeg;->cno:Z

    if-eqz v1, :cond_1

    const-string v1, "ColorZoomWindowRUSConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mColorZoomWindowRUSConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {v3}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/qeg;->sis:Lcom/android/server/wm/qeg$zta;

    if-eqz v1, :cond_2

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/server/wm/qeg;->sis:Lcom/android/server/wm/qeg$zta;

    iget-object v3, p0, Lcom/android/server/wm/qeg;->you:Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-virtual {v3}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->getZoomWindowSwitch()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/qeg$zta;->tsu(Z)V

    iget-object p0, p0, Lcom/android/server/wm/qeg;->sis:Lcom/android/server/wm/qeg$zta;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/qeg$zta;->rtg(I)V

    :cond_2
    invoke-static {}, Lcom/android/server/wm/c;->rtg()Lcom/android/server/wm/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/c;->dma(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/wm/qeg;->cno:Z

    if-eqz p0, :cond_3

    const-string p0, "ColorZoomWindowRUSConfigManager"

    const-string p1, "setZoomWindowConfig end"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
