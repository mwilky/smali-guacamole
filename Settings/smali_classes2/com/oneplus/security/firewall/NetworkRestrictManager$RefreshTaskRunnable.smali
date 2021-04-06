.class Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;
.super Ljava/lang/Object;
.source "NetworkRestrictManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/NetworkRestrictManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTaskRunnable"
.end annotation


# instance fields
.field mShowSystemApp:Z

.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->mShowSystemApp:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->mShowSystemApp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$100(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$200(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/security/firewall/AppUidItem;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$300(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x111

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$300(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$300(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$300(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method
