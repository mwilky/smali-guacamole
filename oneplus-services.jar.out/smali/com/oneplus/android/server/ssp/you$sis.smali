.class Lcom/oneplus/android/server/ssp/you$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/ssp/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# static fields
.field private static final you:Ljava/lang/String; = "com.oneplus.carrierlocation"


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/ssp/you;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/ssp/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/you$sis;->zta:Lcom/oneplus/android/server/ssp/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/ssp/you;Lcom/oneplus/android/server/ssp/you$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/ssp/you$sis;-><init>(Lcom/oneplus/android/server/ssp/you;)V

    return-void
.end method


# virtual methods
.method public you(Ljava/util/Properties;)V
    .locals 3

    const-string p0, "NFW_PROXY_APPS"

    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xea

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oneplus.carrierlocation"

    invoke-virtual {p1, p0, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/oneplus/android/server/ssp/you;->zta()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OpGnssConf"

    const-string p1, "op feature NFW_OTA_PATCH is defined, set attr app default"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public zta(Ljava/util/Properties;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/ssp/you$sis;->you(Ljava/util/Properties;)V

    return-void
.end method
