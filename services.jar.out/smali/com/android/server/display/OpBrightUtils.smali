.class public Lcom/android/server/display/OpBrightUtils;
.super Ljava/lang/Object;
.source "OpBrightUtils.java"


# static fields
.field public static instance:Lcom/android/server/display/OpBrightUtils;

.field public static mDisplayPendingMessage:Z

.field public static mDisplayPowerState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/display/OpBrightUtils;->mDisplayPowerState:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/OpBrightUtils;->mDisplayPendingMessage:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/display/OpBrightUtils;->instance:Lcom/android/server/display/OpBrightUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/display/OpBrightUtils;
    .locals 2

    const-class v0, Lcom/android/server/display/OpBrightUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/display/OpBrightUtils;->instance:Lcom/android/server/display/OpBrightUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/display/OpBrightUtils;

    invoke-direct {v1}, Lcom/android/server/display/OpBrightUtils;-><init>()V

    sput-object v1, Lcom/android/server/display/OpBrightUtils;->instance:Lcom/android/server/display/OpBrightUtils;

    :cond_0
    sget-object v1, Lcom/android/server/display/OpBrightUtils;->instance:Lcom/android/server/display/OpBrightUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
