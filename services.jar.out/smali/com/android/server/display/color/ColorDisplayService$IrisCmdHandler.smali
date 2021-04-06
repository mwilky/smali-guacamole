.class final Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;
.super Landroid/os/Handler;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IrisCmdHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->setManualColorTone(I)V

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTone:I

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->setAutoColorTemperature(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->setManualColorTemperature(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    goto :goto_3

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v3, v3, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v3, v3, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    invoke-interface {v0, v3}, Lcom/oneplus/iris/IOneplusIrisManager;->setManualColorTemperature(I)V

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v3, v3, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v3, v3, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    invoke-interface {v0, v3}, Lcom/oneplus/iris/IOneplusIrisManager;->setAutoColorTemperature(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3}, Lcom/oneplus/iris/IOneplusIrisManager;->setColorTemperatureMode(I)V

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-static {v0, v2}, Lcom/android/server/display/color/ColorDisplayService;->access$2402(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    nop

    :goto_3
    return-void

    :cond_6
    const-string v0, "ColorDisplayService"

    const-string v1, "Invalid color temperatrue mode, ignore."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
