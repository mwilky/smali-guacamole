.class Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;
.super Landroid/util/Pools$SimplePool;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProgressStartOpEventPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pools$SimplePool<",
        "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    return-void
.end method


# virtual methods
.method acquire(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-eqz v0, :cond_0

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->reinit(JJLandroid/os/IBinder;Ljava/lang/Runnable;I)V

    return-object v0

    :cond_0
    new-instance v10, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    const/4 v9, 0x0

    move-object v1, v10

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;-><init>(JJLandroid/os/IBinder;Ljava/lang/Runnable;ILcom/android/server/appop/AppOpsService$1;)V

    return-object v10
.end method
