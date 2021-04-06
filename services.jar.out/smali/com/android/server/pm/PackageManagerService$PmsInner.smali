.class public final Lcom/android/server/pm/PackageManagerService$PmsInner;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmsInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstallArgsForExisting(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$9400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method public deletePackageX(Ljava/lang/String;JII)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;-><init>(Lcom/android/server/pm/PackageManagerService$PmsInner;Ljava/lang/String;JII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic lambda$deletePackageX$0$PackageManagerService$PmsInner(Ljava/lang/String;JII)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    return-void
.end method

.method public resetAllRuntimePermissions(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetAllRuntimePermissions(I)V

    return-void
.end method

.method public scanDirLI(Ljava/io/File;IIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$9500(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
