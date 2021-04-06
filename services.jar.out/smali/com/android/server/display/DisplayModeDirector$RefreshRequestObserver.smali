.class final Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RefreshRequestObserver"
.end annotation


# instance fields
.field private mRequestRefreshRate:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->mRequestRefreshRate:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const-string v0, "DisplayModeDirector"

    const-string v1, "dumpLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    const/4 v1, 0x0

    aget-object v3, p2, v1

    const-string v4, "adfr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " vote dumpLocked "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, p2, v2

    const-string v3, "-h"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    aget-object v0, p2, v2

    const-string v3, "-help"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;-><init>()V

    aget-object v3, p2, v2

    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x6

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v5, :cond_1

    iput v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    aget-object v1, p2, v2

    const-string v3, "fod"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    const/high16 v1, 0x42f00000    # 120.0f

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    return-void

    :cond_3
    aget-object v1, p2, v2

    const-string/jumbo v3, "sun"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    return-void

    :cond_4
    array-length v1, p2

    const/4 v3, 0x2

    if-le v1, v3, :cond_a

    const/high16 v1, -0x40800000    # -1.0f

    :try_start_0
    aget-object v6, p2, v3

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v6

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "  Please enter the correct number!"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gez v6, :cond_5

    return-void

    :cond_5
    aget-object v6, p2, v2

    const-string/jumbo v7, "memc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x3

    iput v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    return-void

    :cond_6
    aget-object v6, p2, v2

    const-string v7, "bs"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x5

    iput v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    return-void

    :cond_7
    aget-object v6, p2, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iput v5, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    return-void

    :cond_8
    aget-object v4, p2, v2

    const-string v5, "aod"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iput v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    return-void

    :cond_9
    :goto_2
    const-string v0, "  Usage: adfr [-h|-help]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "         adfr [ reset | fod | aod | adfr | memc | bs ] [f N]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    f:   fps, 64-bit single-precision number N."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  E.g.:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    dumpsys display adfr memc 60.0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_a
    return-void
.end method

.method public requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V
    .locals 5

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->displayId:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    invoke-static {v1}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->getPolicyPriority(I)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->createVote(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->mRequestRefreshRate:Landroid/util/SparseArray;

    iget v4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->mRequestRefreshRate:Landroid/util/SparseArray;

    iget v4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    :goto_0
    return-void
.end method
