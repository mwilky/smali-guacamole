.class public Lcom/oneplus/screenshot/statistics/EventStatistics;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/statistics/EventStatistics$Action;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Error;,
        Lcom/oneplus/screenshot/statistics/EventStatistics$Base;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventStatistics"

.field private static appBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/oneplus/screenshot/statistics/EventStatistics;->appBase:I

    return v0
.end method

.method public static addAction(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Action;)V
    .locals 0

    return-void
.end method

.method public static addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "AppCode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x2710

    sput p0, Lcom/oneplus/screenshot/statistics/EventStatistics;->appBase:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static isDebuggable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static onDebug(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
