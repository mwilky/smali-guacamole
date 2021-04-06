.class Lcom/android/server/ConnectivityService$NetworkTestedResults;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkTestedResults"
.end annotation


# instance fields
.field private final mNetId:I

.field private final mRedirectUrl:Ljava/lang/String;

.field private final mTestResult:I

.field private final mTimestampMillis:J


# direct methods
.method private constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mNetId:I

    iput p2, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mTestResult:I

    iput-wide p3, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mTimestampMillis:J

    iput-object p5, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IIJLjava/lang/String;Lcom/android/server/ConnectivityService$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/ConnectivityService$NetworkTestedResults;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService$NetworkTestedResults;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mNetId:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService$NetworkTestedResults;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mTestResult:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService$NetworkTestedResults;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkTestedResults;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method
