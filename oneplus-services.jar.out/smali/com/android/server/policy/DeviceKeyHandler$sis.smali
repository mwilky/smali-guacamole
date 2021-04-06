.class Lcom/android/server/policy/DeviceKeyHandler$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/DeviceKeyHandler;->irq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$sis;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$sis;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->tsu(Lcom/android/server/policy/DeviceKeyHandler;)Lcom/android/server/policy/DeviceKeyHandler$cno;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$sis;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->tsu(Lcom/android/server/policy/DeviceKeyHandler;)Lcom/android/server/policy/DeviceKeyHandler$cno;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/DeviceKeyHandler;->o(Lcom/android/server/policy/DeviceKeyHandler$cno;Z)Z

    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$sis;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->rtg(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$cno;)Lcom/android/server/policy/DeviceKeyHandler$cno;

    :cond_0
    return-void
.end method
