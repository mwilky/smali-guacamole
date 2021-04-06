.class Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;
.super Ljava/util/TimerTask;
.source "WidgetViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/widget/WidgetViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/widget/WidgetViewService;


# direct methods
.method constructor <init>(Lcom/oneplus/security/widget/WidgetViewService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/security/widget/WidgetViewService;->isScreenOn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {v0}, Lcom/oneplus/security/widget/WidgetViewService;->access$100(Lcom/oneplus/security/widget/WidgetViewService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/receiver/NetworkStateUtils;->currentNetWorkIsMobileData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-virtual {v0}, Lcom/oneplus/security/widget/WidgetViewService;->setWidgetData()V

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/security/widget/WidgetViewService;->access$200(Lcom/oneplus/security/widget/WidgetViewService;ILcom/oneplus/security/widget/WidgetData;J)V

    :cond_1
    return-void
.end method
