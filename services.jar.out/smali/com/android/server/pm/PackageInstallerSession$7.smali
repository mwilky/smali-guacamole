.class Lcom/android/server/pm/PackageInstallerSession$7;
.super Landroid/os/incremental/IStorageHealthListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$systemDataLoader:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    invoke-direct {p0}, Landroid/os/incremental/IStorageHealthListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHealthStatus(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1000(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1300(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1302(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/16 v1, -0x14

    const-string v2, "Image is missing pages required for installation."

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1500(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eq p2, v1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1400(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method
