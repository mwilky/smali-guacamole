.class Lcom/android/server/rollback/RollbackManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$RollbackManagerServiceImpl$1(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$200(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :cond_0
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManagerInternal;->setEnableRollbackCode(II)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$000(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$whIhaWpnqJBe6ocQeiVgI5ygyCA;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$whIhaWpnqJBe6ocQeiVgI5ygyCA;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->abortBroadcast()V

    :cond_0
    return-void
.end method
