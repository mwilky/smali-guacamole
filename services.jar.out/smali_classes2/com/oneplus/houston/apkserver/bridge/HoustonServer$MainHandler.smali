.class Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;
.super Landroid/os/Handler;
.source "HoustonServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;


# direct methods
.method public constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "func"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SYSTEM_UI_PID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getSystemUIPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HoustonServer"

    invoke-static {v3, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getSystemUIPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYSTEM_UI_PID"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-virtual {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/oem/debug/OPAssertInjector;->hideAssertMessage()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->remove(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->bindApplicationDelayMs:I

    iget v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->launchTime:I

    iget-object v6, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->componentName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->activityName:Ljava/lang/String;

    iget-object v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->uid:I

    iget v7, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->pid:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v3, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v3}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "frontPkg"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->activityName:Ljava/lang/String;

    const-string v2, "frontActivity"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;->pid:I

    const-string v2, "frontPid"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-virtual {v1, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->pid:I

    iget v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;->bindApplicationDelayMs:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    and-int/2addr v1, v3

    if-lez v1, :cond_1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->saveDataToMDM(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$400(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V

    :cond_1
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateScreenState(Z)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {v3, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V

    const-string v4, "HoustonGlobalConfig"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-static {v0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->access$102(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Z)Z

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
