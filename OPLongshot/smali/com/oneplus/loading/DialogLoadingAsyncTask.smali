.class public abstract Lcom/oneplus/loading/DialogLoadingAsyncTask;
.super Lcom/oneplus/loading/LoadingAsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/loading/LoadingAsyncTask<",
        "TParam;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/loading/LoadingAsyncTask;-><init>()V

    iput-object p1, p0, Lcom/oneplus/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/oneplus/loading/DialogLoadingAsyncTask;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method
