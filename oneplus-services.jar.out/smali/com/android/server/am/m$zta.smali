.class Lcom/android/server/am/m$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/m;->listentClientAsync()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/m;


# direct methods
.method constructor <init>(Lcom/android/server/am/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/m$zta;->zta:Lcom/android/server/am/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/m$zta;->zta:Lcom/android/server/am/m;

    invoke-static {p0}, Lcom/android/server/am/m;->access$000(Lcom/android/server/am/m;)Z

    return-void
.end method
