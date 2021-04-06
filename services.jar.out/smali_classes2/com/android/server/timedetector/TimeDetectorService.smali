.class public final Lcom/android/server/timedetector/TimeDetectorService;
.super Landroid/app/timedetector/ITimeDetectorService$Stub;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeDetectorService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategy;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
    .locals 1

    invoke-static {p0}, Lcom/android/server/timedetector/TimeDetectorService;->create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
    .locals 8

    new-instance v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-direct {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;-><init>()V

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/timedetector/TimeDetectorService;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    nop

    const-string v5, "auto_time"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/timedetector/TimeDetectorService$1;

    invoke-direct {v6, v2, v3}, Lcom/android/server/timedetector/TimeDetectorService$1;-><init>(Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorService;)V

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v3
.end method

.method private enforceSuggestManualTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

    const-string v2, "suggest manual time and time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSuggestNetworkTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "set time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSuggestTelephonyTimePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

    const-string v2, "suggest telephony time and time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "TimeDetectorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p2, p3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public handleAutoTimeDetectionChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timedetector/-$$Lambda$lkjIbFi2SczFhCGbzNmkRxmPS0M;

    invoke-direct {v2, v1}, Lcom/android/server/timedetector/-$$Lambda$lkjIbFi2SczFhCGbzNmkRxmPS0M;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$suggestManualTime$1$TimeDetectorService(Landroid/app/timedetector/ManualTimeSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)V

    return-void
.end method

.method public synthetic lambda$suggestNetworkTime$2$TimeDetectorService(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public synthetic lambda$suggestTelephonyTime$0$TimeDetectorService(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void
.end method

.method public suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestManualTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$DcAkTJaWB9_yMqP5iTI6-JQdq4g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$DcAkTJaWB9_yMqP5iTI6-JQdq4g;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/ManualTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestNetworkTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$nU2ruOeSUWWPVvB4A7i7qaumT4s;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$nU2ruOeSUWWPVvB4A7i7qaumT4s;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/NetworkTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestTelephonyTimePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$-psn4dtQQi-8j8LFHWcI7Y6I83U;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$-psn4dtQQi-8j8LFHWcI7Y6I83U;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
