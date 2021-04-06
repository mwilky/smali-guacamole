.class Lcom/android/server/ConnectivityService$ConnectivityReportEvent;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityReportEvent"
.end annotation


# instance fields
.field private final mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mTimestampMillis:J


# direct methods
.method private constructor <init>(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->mTimestampMillis:J

    iput-object p3, p0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-void
.end method

.method synthetic constructor <init>(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;-><init>(JLcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->mTimestampMillis:J

    return-wide v0
.end method
