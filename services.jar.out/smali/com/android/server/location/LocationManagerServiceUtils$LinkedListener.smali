.class public Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;
.super Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;
.source "LocationManagerServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;"
    }
.end annotation


# instance fields
.field private final mBinderDeathCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field protected final mRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRequest;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;TT",
            "Listener;",
            "Lcom/android/server/location/CallerIdentity;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->mListener:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->mRequest:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->mBinderDeathCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->mBinderDeathCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->mListener:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public getRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTRequest;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationManagerServiceUtils$LinkedListener;->mRequest:Ljava/lang/Object;

    return-object v0
.end method
