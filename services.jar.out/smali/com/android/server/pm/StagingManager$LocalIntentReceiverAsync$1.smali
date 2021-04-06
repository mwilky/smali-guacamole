.class Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync$1;
.super Landroid/content/IIntentSender$Stub;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;


# direct methods
.method constructor <init>(Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync$1;->this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync$1;->this$0:Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;

    iget-object v0, v0, Lcom/android/server/pm/StagingManager$LocalIntentReceiverAsync;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
