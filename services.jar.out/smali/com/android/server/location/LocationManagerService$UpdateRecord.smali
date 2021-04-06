.class public Lcom/android/server/location/LocationManagerService$UpdateRecord;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateRecord"
.end annotation


# instance fields
.field private mExpirationRealtimeMs:J

.field private mIsForegroundUid:Z

.field private mLastFixBroadcast:Landroid/location/Location;

.field final mProvider:Ljava/lang/String;

.field private final mRealRequest:Landroid/location/LocationRequest;

.field protected final mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

.field mRequest:Landroid/location/LocationRequest;

.field private mStackTrace:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 9

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mExpirationRealtimeMs:J

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    iput-object p4, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$2600(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppForegroundHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppForegroundHelper;->isAppForeground(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    :cond_1
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$2700(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;->INSTANCE:Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->access$2800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v4, v1, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iget-boolean v8, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/LocationRequestStatistics;->startRequesting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;Lcom/android/server/location/LocationManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->updateForeground(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mExpirationRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/location/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    return v0
.end method

.method private disposeLocked(Z)V
    .locals 11

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$2800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/location/LocationRequestStatistics;->stopRequesting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$2900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationUsageLogger;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->isListener()Z

    move-result v7

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v8

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$2600(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppForegroundHelper;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v10, v10, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v1, v10}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v10

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/location/LocationManagerService;->access$2700(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-static {v3, v4}, Lcom/android/server/location/LocationManagerService;->access$2200(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$Receiver;)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private updateForeground(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$2800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/location/LocationRequestStatistics;->updateForeground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateRecord["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-nez v2, :cond_0

    const-string v2, "(background) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
