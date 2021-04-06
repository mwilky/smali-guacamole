.class public Lcom/oneplus/android/server/ssp/tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/ssp/tsu$zta;
    }
.end annotation


# static fields
.field private static you:Lcom/oneplus/android/server/ssp/tsu$zta; = null

.field private static final zta:Ljava/lang/String; = "OpLabSettings"


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

.method public static sis()Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/ssp/tsu;->you:Lcom/oneplus/android/server/ssp/tsu$zta;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/android/server/ssp/tsu$zta;->you()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static tsu(Ljava/util/Properties;)V
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/ssp/tsu;->you:Lcom/oneplus/android/server/ssp/tsu$zta;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/ssp/tsu$zta;->cno(Ljava/util/Properties;)V

    :cond_0
    return-void
.end method

.method public static you()Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/ssp/tsu;->you:Lcom/oneplus/android/server/ssp/tsu$zta;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/android/server/ssp/tsu$zta;->zta()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized zta()V
    .locals 3

    const-class v0, Lcom/oneplus/android/server/ssp/tsu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/android/server/ssp/tsu;->you:Lcom/oneplus/android/server/ssp/tsu$zta;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/android/server/ssp/tsu$zta;

    invoke-direct {v1}, Lcom/oneplus/android/server/ssp/tsu$zta;-><init>()V

    sput-object v1, Lcom/oneplus/android/server/ssp/tsu;->you:Lcom/oneplus/android/server/ssp/tsu$zta;

    const-string v1, "OpLabSettings"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
