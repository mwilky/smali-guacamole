.class Lcom/android/server/location/AbstractLocationProvider$InternalState;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/AbstractLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalState"
.end annotation


# instance fields
.field public final listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

.field public final state:Lcom/android/server/location/AbstractLocationProvider$State;


# direct methods
.method private constructor <init>(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    iput-object p2, p0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$State;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/AbstractLocationProvider$InternalState;Ljava/util/function/UnaryOperator;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->withState(Ljava/util/function/UnaryOperator;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/AbstractLocationProvider$InternalState;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->withState(Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/AbstractLocationProvider$InternalState;Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->withListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method private withListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v1, p0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$State;)V

    return-object v0
.end method

.method private withState(Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-virtual {p1, v0}, Lcom/android/server/location/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v1, p0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    invoke-direct {v0, v1, p1}, Lcom/android/server/location/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$State;)V

    return-object v0
.end method

.method private withState(Ljava/util/function/UnaryOperator;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Lcom/android/server/location/AbstractLocationProvider$State;",
            ">;)",
            "Lcom/android/server/location/AbstractLocationProvider$InternalState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-direct {p0, v0}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->withState(Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method
