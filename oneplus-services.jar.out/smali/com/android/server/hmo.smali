.class public Lcom/android/server/hmo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bio:Ljava/lang/String; = "0"

.field public static final dma:Ljava/lang/String; = "ais"

.field public static final gck:Ljava/lang/String; = "aie"

.field private static final igw:Ljava/lang/String; = "1"

.field private static final kth:Ljava/lang/String; = "QConfigClient"

.field private static final wtn:Ljava/lang/String; = "op_video_enhancer"

.field public static final ywr:Ljava/lang/String; = "QModKey_Static_VppFilter"


# instance fields
.field private cno:Landroid/content/BroadcastReceiver;

.field private rtg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sis:Landroid/content/pm/PackageManager;

.field private ssp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tsu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lyou/sis/zta/zta/zta/rtg;",
            ">;"
        }
    .end annotation
.end field

.field private you:Landroid/content/Context;

.field private zta:Lyou/sis/zta/zta/zta/you;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyou/sis/zta/zta/zta/you;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hmo;->zta:Lyou/sis/zta/zta/zta/you;

    iput-object v0, p0, Lcom/android/server/hmo;->sis:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hmo;->rtg:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/hmo$zta;

    invoke-direct {v0, p0}, Lcom/android/server/hmo$zta;-><init>(Lcom/android/server/hmo;)V

    iput-object v0, p0, Lcom/android/server/hmo;->cno:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/hmo;->you:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/hmo;->zta:Lyou/sis/zta/zta/zta/you;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hmo;->sis:Landroid/content/pm/PackageManager;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "package"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object p2, p0, Lcom/android/server/hmo;->you:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/hmo;->cno:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/hmo;->wtn()V

    const-string p0, "QConfigClient"

    const-string p1, "QConfigClient init "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dma(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " pkgName "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QConfigClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hmo;->bio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/hmo;->igw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hmo;->ibl(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method private igw()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/hmo;->you:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_video_enhancer"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/hmo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hmo;->dma(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/hmo;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/hmo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hmo;->ywr(Ljava/lang/String;)V

    return-void
.end method

.method private wtn()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v1, "com.tencent.qqlive"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v1, "com.netflix.mediaclient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v2, "tv.danmaku.bili"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v2, "com.qiyi.video"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v2, "com.youku.phone"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v2, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v1, "com.mxtech.videoplayer.pro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    const-string v0, "org.videolan.vlc"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic you(Lcom/android/server/hmo;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/hmo;->rtg:Ljava/util/ArrayList;

    return-object p0
.end method

.method private ywr(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "QConfigClient"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " null pkgName "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/hmo;->igw()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/hmo;->cno(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can  be cleaned : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic zta(Lcom/android/server/hmo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/hmo;->igw()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bio(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "QConfigClient"

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hmo;->sis:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, " not installed "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public bvj(Lyou/sis/zta/zta/zta/rtg;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lyou/sis/zta/zta/zta/rtg;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lyou/sis/zta/zta/zta/rtg;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QConfigClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "QModKey_Static_VppFilter"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hmo;->gwm(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public cno(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyou/sis/zta/zta/zta/rtg;

    iget-object v0, v0, Lyou/sis/zta/zta/zta/rtg;->zta:Ljava/lang/String;

    const-string v1, "QModKey_Static_VppFilter"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hmo;->kth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v0
.end method

.method public gck(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-gtz v0, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    iget-object p1, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/hmo;->bio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lyou/sis/zta/zta/zta/rtg;

    invoke-direct {v0}, Lyou/sis/zta/zta/zta/rtg;-><init>()V

    iput-object p1, v0, Lyou/sis/zta/zta/zta/rtg;->zta:Ljava/lang/String;

    iput-object p2, v0, Lyou/sis/zta/zta/zta/rtg;->you:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/hmo;->bio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lyou/sis/zta/zta/zta/rtg;

    invoke-direct {v3}, Lyou/sis/zta/zta/zta/rtg;-><init>()V

    iput-object v0, v3, Lyou/sis/zta/zta/zta/rtg;->zta:Ljava/lang/String;

    iput-object p2, v3, Lyou/sis/zta/zta/zta/rtg;->you:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/android/server/hmo;->rtg:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/hmo;->igw()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "QModKey_Static_VppFilter"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/hmo;->gwm(Ljava/lang/String;Ljava/util/ArrayList;)Z

    const/4 p1, 0x1

    const-string p2, "aie"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hmo;->oif(ZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public gwm(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lyou/sis/zta/zta/zta/rtg;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "QConfigClient"

    iget-object p0, p0, Lcom/android/server/hmo;->zta:Lyou/sis/zta/zta/zta/you;

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lyou/sis/zta/zta/zta/you;->d1(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " setUserConfigs status  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, " setUserConfigs failed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public ibl(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/hmo;->bio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "QModKey_Static_VppFilter"

    invoke-virtual {p0, p3, v0}, Lcom/android/server/hmo;->kth(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p3, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p3, Lyou/sis/zta/zta/zta/rtg;

    invoke-direct {p3}, Lyou/sis/zta/zta/zta/rtg;-><init>()V

    iput-object v0, p3, Lyou/sis/zta/zta/zta/rtg;->zta:Ljava/lang/String;

    iput-object p2, p3, Lyou/sis/zta/zta/zta/rtg;->you:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/hmo;->tsu:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lcom/android/server/hmo;->bvj(Lyou/sis/zta/zta/zta/rtg;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public kth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "QConfigClient"

    iget-object p0, p0, Lcom/android/server/hmo;->zta:Lyou/sis/zta/zta/zta/you;

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lyou/sis/zta/zta/zta/you;->K(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " clearUserConfig  status "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, " clearUserConfig failed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public oif(ZLjava/lang/String;)V
    .locals 2

    const/16 v0, 0x3f5

    const-string v1, "QModKey_Static_VppFilter"

    if-eqz p1, :cond_0

    new-instance p1, Lyou/sis/zta/zta/zta/rtg;

    invoke-direct {p1}, Lyou/sis/zta/zta/zta/rtg;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lyou/sis/zta/zta/zta/rtg;->zta:Ljava/lang/String;

    iput-object p2, p1, Lyou/sis/zta/zta/zta/rtg;->you:Ljava/lang/String;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, p2}, Lcom/android/server/hmo;->gwm(Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hmo;->kth(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public qbh(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "QConfigClient"

    const-string v1, "onWhiteListChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hmo;->gck(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public ssp(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/hmo;->cno(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_1
    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hmo;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/hmo;->cno(Ljava/lang/String;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "aie"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hmo;->oif(ZLjava/lang/String;)V

    return-void
.end method
