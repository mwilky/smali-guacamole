.class public abstract Landroidx/loader/app/LoaderManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroidx/lifecycle/e;)Landroidx/loader/app/LoaderManager;
    .locals 2
    .param p0    # Landroidx/lifecycle/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/e;",
            ":",
            "Landroidx/lifecycle/k;",
            ">(TT;)",
            "Landroidx/loader/app/LoaderManager;"
        }
    .end annotation

    new-instance v0, Landroidx/loader/app/LoaderManagerImpl;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/k;

    invoke-interface {v1}, Landroidx/lifecycle/k;->getViewModelStore()Landroidx/lifecycle/j;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/loader/app/LoaderManagerImpl;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/j;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c()V
.end method
