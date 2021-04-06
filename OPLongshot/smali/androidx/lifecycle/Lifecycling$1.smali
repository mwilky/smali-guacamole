.class final Landroidx/lifecycle/Lifecycling$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/Lifecycling;->getCallback(Ljava/lang/Object;)Landroidx/lifecycle/GenericLifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/Lifecycling$1;->a:Landroidx/lifecycle/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/e;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/lifecycle/Lifecycling$1;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/c;->onStateChanged(Landroidx/lifecycle/e;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
