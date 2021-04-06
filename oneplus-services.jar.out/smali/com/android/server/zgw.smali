.class public Lcom/android/server/zgw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/zgw$igw;,
        Lcom/android/server/zgw$wtn;,
        Lcom/android/server/zgw$cno;,
        Lcom/android/server/zgw$bio;,
        Lcom/android/server/zgw$kth;,
        Lcom/android/server/zgw$dma;,
        Lcom/android/server/zgw$ywr;,
        Lcom/android/server/zgw$ssp;,
        Lcom/android/server/zgw$oif;,
        Lcom/android/server/zgw$qbh;,
        Lcom/android/server/zgw$tsu;,
        Lcom/android/server/zgw$gck;,
        Lcom/android/server/zgw$rtg;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "WhitelistGameDolbyPackage"

.field private static final B:Ljava/lang/String; = "EnableImageImproveConfig"

.field private static final C:Ljava/lang/String; = "WhitelistAdaptiveColorGamutConfig"

.field private static final D:Ljava/lang/String; = "WhitelistAdaptiveColorGamutPackage"

.field private static final E:Z

.field private static final F:Ljava/lang/String; = "0"

.field private static final G:Ljava/lang/String; = "1"

.field private static final H:Ljava/lang/String; = "oneplus.action.front_package_changed"

.field private static final I:Ljava/lang/String; = "com.heytap.speechassist"

.field private static final J:Ljava/lang/String; = "driving_mode_state"

.field private static final K:Landroid/net/Uri;

.field private static final L:I = 0x0

.field private static final M:I = 0x1

.field private static final N:I = 0x2

.field private static final O:Ljava/lang/String; = "smart_fiveg_whitelist"

.field private static final P:Landroid/net/Uri;

.field private static final Q:I = 0x5

.field private static final R:Ljava/lang/String; = "BlacklistVideoEnhancerConfig"

.field private static final S:Ljava/lang/String; = "LMKD_TUNE"

.field public static final T:Ljava/lang/String; = "/sys/module/memplus_core/parameters/memory_plus_wake_memex"

.field private static final U:Z

.field private static final V:Ljava/lang/String; = "TPD"

.field private static final W:Ljava/lang/String; = "/sys/module/tpd/parameters/tpd_cmds"

.field private static final X:Ljava/lang/String; = "/sys/module/tpd/parameters/tpd_enable"

.field private static final Y:Ljava/lang/String; = "/sys/module/tpd/parameters/tpd_dynamic"

.field private static final Z:Ljava/lang/String; = "com.google.android.providers.media.module"

.field private static final a0:Ljava/lang/String; = "oneplus.intent.action.THERMAL_STATUS"

.field private static final b0:I = 0x2

.field private static final k:Z

.field private static final l:Ljava/lang/String; = "CommonFrontMonitor"

.field private static m:Lcom/android/server/zgw; = null

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4

.field private static final r:Ljava/lang/String; = "op_video_enhancer"

.field private static final s:Ljava/lang/String; = "com.oneplus.retailmode"

.field private static final t:Landroid/net/Uri;

.field private static final u:Ljava/lang/String; = "smart_fiveg"

.field private static final v:I = 0x1

.field private static final w:Ljava/lang/String; = "Whitelist5GConfig"

.field private static final x:Landroid/net/Uri;

.field private static final y:Ljava/lang/String; = "WhitelistFastOutputConfig"

.field private static final z:Ljava/lang/String; = "WhitelistGameDolbyConfig"


# instance fields
.field private a:Z

.field private b:Z

.field private bio:Z

.field private bud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bvj:Z

.field private final c:Ljava/lang/Object;

.field private cgv:Lcom/oneplus/config/ConfigObserver;

.field private cjf:Landroid/database/ContentObserver;

.field private cno:Lcom/oneplus/config/ConfigObserver;

.field private d:Lcom/oneplus/config/ConfigObserver;

.field private dma:Z

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/zgw$wtn;",
            ">;"
        }
    .end annotation
.end field

.field private ear:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field public fto:Z

.field private g:Z

.field private gck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gwm:Z

.field private h:I

.field private hmo:Ljava/lang/Object;

.field private i:I

.field private ibl:Lcom/oneplus/config/ConfigObserver;

.field private igw:Lcom/oneplus/config/ConfigObserver;

.field private ire:Lcom/oneplus/config/ConfigObserver;

.field private irq:Lcom/android/server/hmo;

.field private ivd:Landroid/os/Handler;

.field private j:Landroid/content/BroadcastReceiver;

.field private kth:Landroid/database/ContentObserver;

.field private final les:Ljava/lang/Object;

.field public lqr:J

.field private obl:I

.field private oif:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oxb:Landroid/database/ContentObserver;

.field private qbh:Lcom/oneplus/config/ConfigObserver;

.field private qeg:Z

.field private rtg:Ljava/lang/Object;

.field private sis:Z

.field private ssp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Z

.field private ugm:Lcom/oneplus/config/ConfigObserver;

.field private vdb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vdw:Lyou/sis/zta/zta/zta/you;

.field private veq:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vju:Z

.field private wtn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private you:Landroid/database/ContentObserver;

.field private ywr:Landroid/media/AudioManager;

.field private zgw:Z

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/zgw;->k:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/zgw;->m:Lcom/android/server/zgw;

    const-string v0, "op_video_enhancer"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/zgw;->t:Landroid/net/Uri;

    const-string v0, "smart_fiveg"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/zgw;->x:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x145

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/zgw;->E:Z

    const-string v1, "driving_mode_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/zgw;->K:Landroid/net/Uri;

    const-string v1, "smart_fiveg_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/zgw;->P:Landroid/net/Uri;

    new-array v0, v0, [I

    const/16 v1, 0x127

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/zgw;->U:Z

    new-instance v0, Lcom/android/server/zgw;

    invoke-direct {v0}, Lcom/android/server/zgw;-><init>()V

    sput-object v0, Lcom/android/server/zgw;->m:Lcom/android/server/zgw;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/zgw;->sis:Z

    iput-boolean v1, p0, Lcom/android/server/zgw;->tsu:Z

    iput-object v0, p0, Lcom/android/server/zgw;->rtg:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/zgw;->bio:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->wtn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->gck:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/zgw;->dma:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->oif:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/zgw;->bvj:Z

    iput-boolean v1, p0, Lcom/android/server/zgw;->gwm:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->vdb:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/zgw;->zgw:Z

    iput v1, p0, Lcom/android/server/zgw;->obl:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->ear:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->hmo:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/zgw;->fto:Z

    const-wide/16 v2, 0xc00

    iput-wide v2, p0, Lcom/android/server/zgw;->lqr:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/zgw;->veq:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/zgw;->vju:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/zgw;->les:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/zgw;->qeg:Z

    new-instance v2, Lcom/android/server/zgw$zta;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/zgw$zta;-><init>(Lcom/android/server/zgw;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/server/zgw;->a:Z

    iput-boolean v1, p0, Lcom/android/server/zgw;->b:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/zgw;->e:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/android/server/zgw;->f:Z

    iput-boolean v1, p0, Lcom/android/server/zgw;->g:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/zgw;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/zgw;->i:I

    new-instance v0, Lcom/android/server/zgw$sis;

    invoke-direct {v0, p0}, Lcom/android/server/zgw$sis;-><init>(Lcom/android/server/zgw;)V

    iput-object v0, p0, Lcom/android/server/zgw;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(ZI)V
    .locals 8

    const-string v0, "CommonFrontMonitor"

    :try_start_0
    invoke-static {}, Lcom/android/server/zgw;->fto()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/zgw;->rtg:Ljava/lang/Object;

    sget-boolean v1, Lcom/android/server/zgw;->k:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got sIExtTelephony: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/zgw;->rtg:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/zgw;->rtg:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/zgw;->rtg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "generalSetter"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "enable"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "type"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/zgw;->rtg:Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    const-string v3, "setEndcStateExt"

    aput-object v3, p2, v6

    aput-object v2, p2, v7

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "switch5G mIs5GMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/zgw;->tsu:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private b(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolve5GConfigFromJSON: mWhitelist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolve5GConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/zgw;->k:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update 5G config add whitelist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/zgw;->bio:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/zgw;->bio:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolve5GConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->bio:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/zgw;->bio:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolve5GConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->bio:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/zgw;->bio:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/zgw;->bio:Z

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->bio:Z

    sget-boolean v2, Lcom/android/server/zgw;->k:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw p1
.end method

.method static synthetic bio(Lcom/android/server/zgw;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private bud()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/zgw;->irq:Lcom/android/server/hmo;

    const-string v1, "CommonFrontMonitor"

    if-nez v0, :cond_0

    const-string p0, "qocnfig service is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/zgw;->vju()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HQV setting on"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/zgw;->irq:Lcom/android/server/hmo;

    iget-object p0, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    const-string v1, "aie"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/hmo;->gck(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "HQV setting off"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/zgw;->irq:Lcom/android/server/hmo;

    iget-object p0, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/android/server/hmo;->ssp(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method static synthetic bvj(Lcom/android/server/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->j(Lorg/json/JSONArray;)V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_fiveg_whitelist"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/zgw;->ear:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/zgw;->ear:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/zgw;->k:Z

    if-eqz v1, :cond_1

    const-string v1, "CommonFrontMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmart5GWhitelist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/zgw;->ear:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  whitelistConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cgv()Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "smart_fiveg"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    if-nez p0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x80

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic cno(Lcom/android/server/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->b(Lorg/json/JSONArray;)V

    return-void
.end method

.method private d(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveAdaptiveColorGamutConfigFromJSON: mWhitelistAdaptiveColorGamutFetched = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveAdaptiveColorGamutConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/zgw;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update adaptive color gamut json config size is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/zgw;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/zgw;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v5, Lcom/android/server/zgw;->k:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update adaptive color gamut add whitelist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/zgw;->zgw:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->zgw:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->vdb:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveAdaptiveColorGamutConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->zgw:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->zgw:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveAdaptiveColorGamutConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->zgw:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->zgw:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/zgw;->zgw:Z

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/zgw;->zgw:Z

    sget-boolean v2, Lcom/android/server/zgw;->k:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->vdb:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw p1
.end method

.method static synthetic dma()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/zgw;->U:Z

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/zgw;->k:Z

    const-string v1, "CommonFrontMonitor"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveAdditionalConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, "BlacklistVideoEnhancerConfig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/zgw;->k(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    const-string v2, "Whitelist5GConfig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/zgw;->b(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_2
    const-string v2, "WhitelistFastOutputConfig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/zgw;->h(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_3
    const-string v2, "WhitelistGameDolbyConfig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/zgw;->i(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_4
    const-string v2, "EnableImageImproveConfig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/zgw;->g(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_5
    const-string v2, "LMKD_TUNE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lcom/android/server/zgw;->f(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_6
    const-string v2, "WhitelistAdaptiveColorGamutConfig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "get adaptive color gamut from json!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/zgw;->d(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_7
    const-string p0, "resolveAdditionalConfig: mContext is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return-void
.end method

.method private ear(Z)V
    .locals 6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "com.google.android.providers.media.module"

    invoke-static {v1, v1, v0}, Lcom/android/server/am/AppRecordManager;->gck(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/zgw;->g:Z

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/zgw;->i:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/server/zgw;->i:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doLimitMediaProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CommonFrontMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    invoke-direct {p0, v4, v0, v1, v1}, Lcom/android/server/zgw;->l(IIII)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0, v4, v0, v4, v1}, Lcom/android/server/zgw;->l(IIII)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " failed for pid("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") not founded on current user("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private f(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "CommonFrontMonitor"

    const-string p1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableProject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/zgw;->hmo:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/zgw;->fto:Z

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "memThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/zgw;->hmo:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/zgw;->lqr:J

    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mSpecialLMKDList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mSpecialLMKDList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/zgw;->hmo:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/zgw;->veq:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/zgw;->veq:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/zgw;->veq:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v3

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v0, "[OnlineConfig] resolveConfigFromJSON mSpecialLMKDList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/zgw;->veq:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mEnableProject = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/zgw;->fto:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mMemAvailableThreshold = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/zgw;->lqr:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonFrontMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    :try_start_7
    const-string v0, "CommonFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_8
    const-string v0, "CommonFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mSpecialLMKDList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->veq:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mEnableProject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw;->fto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMemAvailableThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/zgw;->lqr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonFrontMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1
.end method

.method private static fto()Ljava/lang/Object;
    .locals 9

    sget-boolean v0, Lcom/android/server/zgw;->k:Z

    const-string v1, "CommonFrontMonitor"

    if-eqz v0, :cond_0

    const-string v0, "getIExtTelephony()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIExtTelephony() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private g(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "enable"

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveEnableImageImproveConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "vendor.config.image.improve.enable"

    if-eqz v4, :cond_1

    const-string v6, "1"

    goto :goto_1

    :cond_1
    const-string v6, "0"

    :goto_1
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/zgw;->k:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolveEnableImageImproveConfigFromJSON: enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/zgw;->gwm:Z

    if-nez p1, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/zgw;->gwm:Z

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "resolveEnableImageImproveConfigFromJSON error:"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->gwm:Z

    if-nez p1, :cond_4

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    const-string v0, "resolveEnableImageImproveConfigFromJSON JSONException:"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->gwm:Z

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    :goto_4
    iget-boolean v0, p0, Lcom/android/server/zgw;->gwm:Z

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/android/server/zgw;->gwm:Z

    :cond_5
    throw p1
.end method

.method static synthetic gck(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->h:I

    return p0
.end method

.method static synthetic gwm(Lcom/android/server/zgw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/zgw;->bud()V

    return-void
.end method

.method private h(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveFastOutputConfigFromJSON: mWhitelist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveFastOutputConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/zgw;->wtn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/zgw;->gck:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/zgw;->gck:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/zgw;->ywr:Landroid/media/AudioManager;

    const-string v6, "WhitelistFastOutputConfig"

    invoke-virtual {v5, v6, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/zgw;->wtn:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/zgw;->k:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update FastOutput config add whitelist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/zgw;->dma:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->dma:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveFastOutputConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->dma:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->dma:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveFastOutputConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->dma:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->dma:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/zgw;->dma:Z

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/zgw;->dma:Z

    sget-boolean v2, Lcom/android/server/zgw;->k:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw p1
.end method

.method private hmo()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "driving_mode_state"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private i(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveGameDolbyConfigFromJSON: mWhitelist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveGameDolbyConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/zgw;->oif:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/zgw;->oif:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/zgw;->oif:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/zgw;->ywr:Landroid/media/AudioManager;

    const-string v6, "WhitelistGameDolbyPackage"

    invoke-virtual {v5, v6, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v5, Lcom/android/server/zgw;->k:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update FastOutput config add whitelist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/zgw;->bvj:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->bvj:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveGameDolbyConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->bvj:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->bvj:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveGameDolbyConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->bvj:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->bvj:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/zgw;->bvj:Z

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/zgw;->bvj:Z

    sget-boolean v2, Lcom/android/server/zgw;->k:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw p1
.end method

.method static synthetic ibl()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/zgw;->E:Z

    return v0
.end method

.method static synthetic igw(Lcom/android/server/zgw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw;->a:Z

    return p0
.end method

.method private ire()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    const-string v1, "CommonFrontMonitor"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-array v4, v2, [I

    const/16 v5, 0xb6

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/zgw;->sis:Z

    if-nez v4, :cond_0

    const-string v4, "CONFIG_NAME_VIDEO_ENHANCEMENT"

    const-string v5, "BlacklistVideoEnhancerConfig"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-array v4, v2, [I

    const/16 v5, 0x67

    aput v5, v4, v6

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/zgw;->bio:Z

    if-nez v4, :cond_1

    const-string v4, "CONFIG_NAME_SMART5G"

    const-string v5, "Whitelist5GConfig"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-array v4, v2, [I

    const/16 v5, 0xef

    aput v5, v4, v6

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/zgw;->dma:Z

    if-nez v4, :cond_2

    const-string v4, "CONFIG_NAME_FASTOUTPUT"

    const-string v5, "WhitelistFastOutputConfig"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-array v2, v2, [I

    const/16 v4, 0x112

    aput v4, v2, v6

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/zgw;->bvj:Z

    if-nez v2, :cond_3

    const-string v2, "CONFIG_NAME_GAME_DOLBY"

    const-string v4, "WhitelistGameDolbyConfig"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v2, Lcom/android/server/zgw;->U:Z

    if-eqz v2, :cond_4

    const-string v2, "CONFIG_NAME_LMKD_WATERMARK"

    const-string v4, "LMKD_TUNE"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-boolean v2, Lcom/android/server/zgw;->E:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/zgw;->zgw:Z

    if-nez v2, :cond_5

    const-string v2, "bundle for adaptive game color gamut!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CONFIG_NAME_ADAPTIVE_COLOR_GAMUT"

    const-string v2, "WhitelistAdaptiveColorGamutConfig"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    sget-boolean p0, Lcom/android/server/zgw;->k:Z

    if-eqz p0, :cond_7

    const-string p0, "fetchConfig: skip to fetch"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method private irq()V
    .locals 3

    :try_start_0
    invoke-static {}, Lyou/sis/zta/zta/zta/you;->ywr()Lyou/sis/zta/zta/zta/you;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/zgw;->vdw:Lyou/sis/zta/zta/zta/you;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CommonFrontMonitor"

    const-string v1, "can not connect to QConfig service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/zgw;->vdw:Lyou/sis/zta/zta/zta/you;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/hmo;

    iget-object v2, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/server/hmo;-><init>(Landroid/content/Context;Lyou/sis/zta/zta/zta/you;)V

    iput-object v1, p0, Lcom/android/server/zgw;->irq:Lcom/android/server/hmo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/zgw;->qeg:Z

    iget-object p0, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    const-string v0, "aie"

    invoke-virtual {v1, p0, v0}, Lcom/android/server/hmo;->gck(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ivd(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/zgw;->hmo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/zgw;->veq:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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

.method private j(Lorg/json/JSONArray;)V
    .locals 10

    if-nez p1, :cond_0

    const-string p0, "CommonFrontMonitor"

    const-string p1, "resolveTpdConfigFromJSON: jsonArray is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/zgw;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "tpd_list"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "decision"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/zgw$wtn;

    invoke-direct {v7, p0, v6}, Lcom/android/server/zgw$wtn;-><init>(Lcom/android/server/zgw;Ljava/lang/String;)V

    const-string v6, "act"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v8, v0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/zgw$wtn;->zta(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    const-string v6, "threads"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v8, v0

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/zgw$wtn;->you(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    const-string v6, "pkg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v8, p0, Lcom/android/server/zgw;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_3
    const-string v3, "feature"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/zgw;->q(Z)V

    :cond_4
    const-string v3, "mediaprovider"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/zgw;->p(Z)V

    :cond_5
    const-string v3, "trigger"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/zgw;->h:I

    const-string v2, "CommonFrontMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] mTriggerStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/zgw;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonFrontMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method private k(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "resolveVEConfigFromJSON: mVideoEnhancerBlacklist = "

    const-string v1, "CommonFrontMonitor"

    if-nez p1, :cond_0

    const-string p0, "resolveVEConfigFromJSON: jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/zgw;->k:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update VE config add blacklist pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "resolveVEConfigFromJSON"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/zgw;->irq:Lcom/android/server/hmo;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/zgw;->irq:Lcom/android/server/hmo;

    iget-object v2, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    const-string v4, "aie"

    invoke-virtual {p1, v2, v4}, Lcom/android/server/hmo;->qbh(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/zgw;->sis:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->sis:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "resolveVEConfigFromJSON error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->sis:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->sis:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "resolveVEConfigFromJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/android/server/zgw;->sis:Z

    if-nez p1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/zgw;->sis:Z

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :goto_2
    iget-boolean v2, p0, Lcom/android/server/zgw;->sis:Z

    if-nez v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/zgw;->sis:Z

    sget-boolean v2, Lcom/android/server/zgw;->k:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw p1
.end method

.method static synthetic kth(Lcom/android/server/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->f(Lorg/json/JSONArray;)V

    return-void
.end method

.method private l(IIII)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/sys/module/tpd/parameters/tpd_dynamic"

    invoke-direct {p0, p2, p1}, Lcom/android/server/zgw;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/zgw;->g:Z

    :cond_1
    return-void
.end method

.method public static lqr()Lcom/android/server/zgw;
    .locals 1

    sget-object v0, Lcom/android/server/zgw;->m:Lcom/android/server/zgw;

    return-object v0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p0, "IO close failed : path="

    const-string v0, ",ex->"

    const-string v1, "CommonFrontMonitor"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : file not exits :"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v3, Lcom/android/server/zgw;->k:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo failed : path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw p2
.end method

.method private n(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/zgw;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "/sys/module/tpd/parameters/tpd_enable"

    invoke-direct {p0, v0, p1}, Lcom/android/server/zgw;->m(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private o(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/zgw;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptive p3 set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonFrontMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "persist.sys.color.gamut.adaptive"

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/server/zgw;->obl:I

    if-nez v2, :cond_1

    iput v1, p0, Lcom/android/server/zgw;->obl:I

    const-string p0, "1"

    :goto_0
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/server/zgw;->obl:I

    if-ne v1, p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/zgw;->obl:I

    const-string p0, "0"

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic obl(Lcom/android/server/zgw;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic oif(Lcom/android/server/zgw;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->n(Z)V

    return-void
.end method

.method static synthetic oxb(Lcom/android/server/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->k(Lorg/json/JSONArray;)V

    return-void
.end method

.method private p(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/zgw;->f:Z

    const-string v1, "CommonFrontMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMediaProviderFeature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/zgw;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->ear(Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private q(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/zgw;->a:Z

    iget-boolean p1, p0, Lcom/android/server/zgw;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->n(Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic qbh(Lcom/android/server/zgw;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/zgw;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private qeg()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/zgw;->hmo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/zgw;->fto:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic rtg(Lcom/android/server/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->g(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->h(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->d(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->i(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic ugm(Lcom/android/server/zgw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/zgw;->c()V

    return-void
.end method

.method static synthetic vdb(Lcom/android/server/zgw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    return-object p0
.end method

.method private vdw()V
    .locals 3

    new-instance v0, Lcom/android/server/zgw$wtn;

    const-string v1, "1"

    invoke-direct {v0, p0, v1}, Lcom/android/server/zgw$wtn;-><init>(Lcom/android/server/zgw;Ljava/lang/String;)V

    const-string v1, "[GT]VideoPlayer default_matrix_"

    invoke-virtual {v0, v1}, Lcom/android/server/zgw$wtn;->you(Ljava/lang/String;)V

    const-string v1, "com.tencent.mm.plugin.recordvideo.activity.MMRecordUI"

    invoke-virtual {v0, v1}, Lcom/android/server/zgw$wtn;->zta(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/zgw;->e:Ljava/util/HashMap;

    const-string v2, "com.tencent.mm"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private veq()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/zgw;->hmo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/zgw;->lqr:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private vju()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

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

.method static synthetic wtn(Lcom/android/server/zgw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw;->f:Z

    return p0
.end method

.method static synthetic you(Lcom/android/server/zgw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/zgw;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->ear(Z)V

    return-void
.end method

.method static synthetic zgw()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/zgw;->k:Z

    return v0
.end method


# virtual methods
.method public cjf(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/zgw;->les:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-boolean p3, Lcom/android/server/zgw;->U:Z

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/android/server/zgw;->qeg()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->ivd(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/android/server/zgw;->vju:Z

    if-nez p3, :cond_0

    const-string p3, "/sys/module/memplus_core/parameters/memory_plus_wake_memex"

    invoke-direct {p0}, Lcom/android/server/zgw;->veq()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/zgw;->m(Ljava/lang/String;Ljava/lang/String;)Z

    iput-boolean p6, p0, Lcom/android/server/zgw;->vju:Z

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Lcom/android/server/zgw;->vju:Z

    if-eqz p3, :cond_1

    const-string p3, "/sys/module/memplus_core/parameters/memory_plus_wake_memex"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/zgw;->m(Ljava/lang/String;Ljava/lang/String;)Z

    iput-boolean p5, p0, Lcom/android/server/zgw;->vju:Z

    :cond_1
    :goto_0
    sget-boolean p3, Lcom/android/server/zgw;->k:Z

    if-eqz p3, :cond_2

    const-string p3, "CommonFrontMonitor"

    const-string v0, "change memex"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/zgw;->hmo()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/zgw$you;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/server/zgw$you;-><init>(Lcom/android/server/zgw;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-boolean p3, p0, Lcom/android/server/zgw;->qeg:Z

    if-nez p3, :cond_6

    new-array p3, p6, [I

    const/16 v0, 0xb6

    aput v0, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-direct {p0}, Lcom/android/server/zgw;->vju()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/server/zgw;->bud:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "com.oneplus.retailmode"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p6}, Lcom/android/server/zgw;->r(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, p5}, Lcom/android/server/zgw;->r(Z)V

    :cond_6
    :goto_2
    new-array p3, p6, [I

    const/16 v0, 0x67

    aput v0, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-boolean p3, p0, Lcom/android/server/zgw;->tsu:Z

    iget-object v0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/zgw;->ear:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/zgw;->tsu:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/zgw;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/zgw;->ear:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iput-boolean p5, p0, Lcom/android/server/zgw;->tsu:Z

    goto :goto_4

    :cond_9
    :goto_3
    iput-boolean p6, p0, Lcom/android/server/zgw;->tsu:Z

    :cond_a
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/zgw;->tsu:Z

    if-eq p3, v0, :cond_b

    iget-boolean p3, p0, Lcom/android/server/zgw;->tsu:Z

    invoke-direct {p0, p3, p6}, Lcom/android/server/zgw;->a(ZI)V

    :cond_b
    new-array p3, p6, [I

    const/16 v0, 0xef

    aput v0, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/android/server/zgw;->gck:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/android/server/zgw;->ywr:Landroid/media/AudioManager;

    const-string v0, "WhitelistFastOutputConfig"

    invoke-virtual {p3, v0, p1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-array p3, p6, [I

    const/16 v0, 0x112

    aput v0, p3, p5

    invoke-static {p3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/android/server/zgw;->oif:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lcom/android/server/zgw;->ywr:Landroid/media/AudioManager;

    const-string v0, "WhitelistGameDolbyPackage"

    invoke-virtual {p3, v0, p1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/zgw;->ywr:Landroid/media/AudioManager;

    const-string v0, "WhitelistGameDolbyConfig=1"

    invoke-virtual {p3, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_d
    iget-object p3, p0, Lcom/android/server/zgw;->oif:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/android/server/zgw;->oif:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    const-string p3, "SCREEN OFF"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/android/server/zgw;->ywr:Landroid/media/AudioManager;

    const-string p4, "WhitelistGameDolbyConfig=0"

    invoke-virtual {p3, p4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_e
    sget-boolean p3, Lcom/android/server/zgw;->E:Z

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/android/server/zgw;->vdb:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0, p6}, Lcom/android/server/zgw;->o(Z)V

    goto :goto_5

    :cond_f
    invoke-direct {p0, p5}, Lcom/android/server/zgw;->o(Z)V

    :cond_10
    :goto_5
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public les(Landroid/content/Context;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/zgw;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "CommonFrontMonitor"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object v0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    :cond_1
    invoke-direct {p0}, Lcom/android/server/zgw;->vdw()V

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/zgw$igw;

    invoke-direct {v2, p0}, Lcom/android/server/zgw$igw;-><init>(Lcom/android/server/zgw;)V

    const-string v3, "TPD"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/zgw;->d:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->kth(Lcom/android/server/OnePlusUtil$zta$zta;)V

    iget-object p1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/zgw;->ywr:Landroid/media/AudioManager;

    iget-object p1, p0, Lcom/android/server/zgw;->les:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [I

    const/16 v2, 0xb6

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/zgw;->vju()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/zgw;->r(Z)V

    :cond_2
    sget-boolean v1, Lcom/android/server/zgw;->E:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/zgw;->o(Z)V

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/android/server/zgw$rtg;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v4}, Lcom/android/server/zgw$rtg;-><init>(Lcom/android/server/zgw;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/zgw;->oxb:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/zgw;->K:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/zgw;->oxb:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-array p1, v0, [I

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_4

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register Video enhancement observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/zgw$tsu;

    invoke-direct {v6, p0}, Lcom/android/server/zgw$tsu;-><init>(Lcom/android/server/zgw;)V

    const-string v7, "BlacklistVideoEnhancerConfig"

    invoke-direct {p1, v1, v4, v6, v7}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/zgw;->ire:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/android/server/zgw$gck;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v4}, Lcom/android/server/zgw$gck;-><init>(Lcom/android/server/zgw;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/zgw;->you:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/zgw;->t:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/zgw;->you:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_5
    new-array p1, v0, [I

    const/16 v1, 0x67

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_6

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register 5G observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/zgw$dma;

    invoke-direct {v6, p0}, Lcom/android/server/zgw$dma;-><init>(Lcom/android/server/zgw;)V

    const-string v7, "Whitelist5GConfig"

    invoke-direct {p1, v1, v4, v6, v7}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/zgw;->cno:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/android/server/zgw$kth;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v4}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/zgw;->kth:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/zgw;->x:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/zgw;->kth:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p1, "ro.boot.opcarrier"

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tmo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/server/zgw;->c()V

    new-instance p1, Lcom/android/server/zgw$bio;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v4}, Lcom/android/server/zgw$bio;-><init>(Lcom/android/server/zgw;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/zgw;->cjf:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/zgw;->P:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/zgw;->cjf:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_7
    new-array p1, v0, [I

    const/16 v1, 0xef

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_8

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register fastoutput package observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/zgw$qbh;

    invoke-direct {v5, p0}, Lcom/android/server/zgw$qbh;-><init>(Lcom/android/server/zgw;)V

    const-string v6, "WhitelistFastOutputConfig"

    invoke-direct {p1, v1, v4, v5, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/zgw;->igw:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_9
    new-array p1, v0, [I

    const/16 v1, 0x112

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_a

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register game dolby package observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/zgw$oif;

    invoke-direct {v5, p0}, Lcom/android/server/zgw$oif;-><init>(Lcom/android/server/zgw;)V

    const-string v6, "WhitelistGameDolbyConfig"

    invoke-direct {p1, v1, v4, v5, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/zgw;->qbh:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_b
    sget-boolean p1, Lcom/android/server/zgw;->E:Z

    if-eqz p1, :cond_d

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_c

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register adaptive color gamut package observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/zgw$ywr;

    invoke-direct {v5, p0}, Lcom/android/server/zgw$ywr;-><init>(Lcom/android/server/zgw;)V

    const-string v6, "WhitelistAdaptiveColorGamutConfig"

    invoke-direct {p1, v1, v4, v5, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/zgw;->ugm:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_d
    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_e

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register image quality package observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/zgw$ssp;

    invoke-direct {v5, p0}, Lcom/android/server/zgw$ssp;-><init>(Lcom/android/server/zgw;)V

    const-string v6, "EnableImageImproveConfig"

    invoke-direct {p1, v1, v4, v5, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/zgw;->ibl:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    sget-boolean p1, Lcom/android/server/zgw;->U:Z

    if-eqz p1, :cond_10

    sget-boolean p1, Lcom/android/server/zgw;->k:Z

    if-eqz p1, :cond_f

    const-string p1, "CommonFrontMonitor"

    const-string v1, "register lmkd watermater observer"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object p1, p0, Lcom/android/server/zgw;->veq:Ljava/util/HashSet;

    const-string v1, "com.oneplus.camera"

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/zgw$cno;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/zgw$cno;-><init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V

    const-string v6, "LMKD_TUNE"

    invoke-direct {p1, v1, v4, v5, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/zgw;->cgv:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_10
    invoke-direct {p0}, Lcom/android/server/zgw;->ire()V

    iget-object p1, p0, Lcom/android/server/zgw;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/zgw;->j:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "oneplus.intent.action.THERMAL_STATUS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-array p1, v0, [I

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/android/server/zgw;->irq()V

    const-string p0, "CommonFrontMonitor"

    const-string p1, "initQconfigs"

    goto :goto_0

    :cond_11
    const-string p0, "CommonFrontMonitor"

    const-string p1, "OP_FEATURE_MM_VIDEO_ENHANCEMENT not support"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method r(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "persist.sys.oem.vendor.media.vpp.enable"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zta(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iget-object p3, p0, Lcom/android/server/zgw;->c:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/zgw;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/zgw;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/zgw$wtn;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/zgw$wtn;->you:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p4}, Lcom/android/server/zgw$wtn;->sis(I)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/zgw;->b:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->n(Z)V

    :cond_1
    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
