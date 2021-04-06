.class Lcom/android/server/ActivityTriggerService$LocalRunnable;
.super Ljava/lang/Object;
.source "ActivityTriggerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ActivityTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalRunnable"
.end annotation


# instance fields
.field private event:I

.field private lvCode:J

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private procName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->lvCode:J

    iput-object p4, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->procName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->pid:I

    iput p6, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->event:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->packageName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->lvCode:J

    iget-object v3, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->procName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->pid:I

    iget v5, p0, Lcom/android/server/ActivityTriggerService$LocalRunnable;->event:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/ActivityTriggerService;->notifyAction_native(Ljava/lang/String;JLjava/lang/String;II)V

    return-void
.end method
