.class Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;
.super Landroid/view/IDockedStackListener$Stub;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockDividerVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "is in multiWindow mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$1302(Lcom/android/server/am/ActivityManagerServiceInjector;Z)Z

    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
