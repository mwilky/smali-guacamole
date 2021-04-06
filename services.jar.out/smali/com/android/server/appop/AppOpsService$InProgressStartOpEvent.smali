.class final Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InProgressStartOpEvent"
.end annotation


# instance fields
.field private mClientId:Landroid/os/IBinder;

.field private mOnDeath:Ljava/lang/Runnable;

.field private mStartElapsedTime:J

.field private mStartTime:J

.field private mUidState:I

.field numUnfinishedStarts:I


# direct methods
.method private constructor <init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    iput p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method synthetic constructor <init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;ILcom/android/server/appop/AppOpsService$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I
    .locals 1

    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public getClientId()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    return-object v0
.end method

.method public getStartElapsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    return-wide v0
.end method

.method public getUidState()I
    .locals 1

    iget v0, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    return v0
.end method

.method public reinit(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartTime:J

    iput-wide p3, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mStartElapsedTime:J

    iput-object p5, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    iput p7, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->mUidState:I

    const/4 v0, 0x0

    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method
