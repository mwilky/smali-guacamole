.class Lcom/oneplus/screenshot/LongshotService$ServiceBinder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->dumpViewInfo(Ljava/lang/String;Lcom/oneplus/longshot/IViewPropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/screenshot/LongshotService$ServiceBinder;

.field final synthetic val$infoObject:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/oneplus/longshot/IViewPropCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/LongshotService$ServiceBinder;Lorg/json/JSONObject;Lcom/oneplus/longshot/IViewPropCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder$1;->this$1:Lcom/oneplus/screenshot/LongshotService$ServiceBinder;

    iput-object p2, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder$1;->val$infoObject:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder$1;->val$listener:Lcom/oneplus/longshot/IViewPropCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder$1;->this$1:Lcom/oneplus/screenshot/LongshotService$ServiceBinder;

    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder$1;->val$infoObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder$1;->val$listener:Lcom/oneplus/longshot/IViewPropCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->assignViewInfo(Lorg/json/JSONObject;Lcom/oneplus/longshot/IViewPropCallback;)V

    return-void
.end method
