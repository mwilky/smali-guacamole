.class Lcom/google/analytics/tracking/android/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/analytics/tracking/android/Logger;


# instance fields
.field private a:Lcom/google/analytics/tracking/android/Logger$LogLevel;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/i;->a:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/i;->a:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->a:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GAV3"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->a:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GAV3"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->a:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GAV3"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e()Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->a:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/i;->a:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->WARNING:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GAV3"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
