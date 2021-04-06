.class public Lcom/oneplus/settings/utils/OPZenModeUtils;
.super Ljava/lang/Object;
.source "OPZenModeUtils.java"


# static fields
.field private static final IGNORE_TIME_VALUE:Ljava/lang/Long;

.field private static mOPZenModeUtils:Lcom/oneplus/settings/utils/OPZenModeUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRun:Ljava/lang/Runnable;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPZenModeUtils;->IGNORE_TIME_VALUE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/utils/OPZenModeUtils$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/utils/OPZenModeUtils$1;-><init>(Lcom/oneplus/settings/utils/OPZenModeUtils;)V

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mRun:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mOPZenModeUtils:Lcom/oneplus/settings/utils/OPZenModeUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/utils/OPZenModeUtils;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/utils/OPZenModeUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mOPZenModeUtils:Lcom/oneplus/settings/utils/OPZenModeUtils;

    :cond_0
    sget-object p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mOPZenModeUtils:Lcom/oneplus/settings/utils/OPZenModeUtils;

    return-object p0
.end method


# virtual methods
.method public sendAppTracker()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mContext:Landroid/content/Context;

    const-string v1, "App_Tracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v2, "zen_mode_alarms"

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "zen_mode_important_interruptions"

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "zen_mode_off"

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget p0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mZenMode:I

    const-string v1, "zen_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public sendAppTrackerDelay()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils;->mRun:Ljava/lang/Runnable;

    sget-object v1, Lcom/oneplus/settings/utils/OPZenModeUtils;->IGNORE_TIME_VALUE:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
