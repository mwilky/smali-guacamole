.class Lcom/android/server/am/ActiveServices$AppOpCallback$1;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices$AppOpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback$1;->this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpNoted(IILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback$1;->this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;

    invoke-static {v0, p1, p2, p4}, Lcom/android/server/am/ActiveServices$AppOpCallback;->access$200(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V

    return-void
.end method
