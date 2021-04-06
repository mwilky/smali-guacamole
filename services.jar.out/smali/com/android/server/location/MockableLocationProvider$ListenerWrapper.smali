.class Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "MockableLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/AbstractLocationProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MockableLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

.field final synthetic this$0:Lcom/android/server/location/MockableLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;Lcom/android/server/location/MockableLocationProvider$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;)V

    return-void
.end method


# virtual methods
.method public final onReportLocation(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->reportLocation(Landroid/location/Location;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onReportLocation(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockableLocationProvider;->reportLocation(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/MockableLocationProvider;->access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/MockableLocationProvider;->access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/MockableLocationProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/location/MockableLocationProvider;->setState(Lcom/android/server/location/AbstractLocationProvider$State;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
