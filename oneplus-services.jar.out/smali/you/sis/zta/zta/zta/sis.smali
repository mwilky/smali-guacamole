.class public interface abstract Lyou/sis/zta/zta/zta/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzta/zta/zta/zta/you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/sis/zta/zta/zta/sis$you;,
        Lyou/sis/zta/zta/zta/sis$zta;
    }
.end annotation


# static fields
.field public static final gck:Ljava/lang/String; = "vendor.qti.hardware.qconfig@1.0::IQConfigListener"


# direct methods
.method public static bio(Landroid/os/IHwInterface;)Lyou/sis/zta/zta/zta/sis;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lyou/sis/zta/zta/zta/sis;->zta(Landroid/os/IHwBinder;)Lyou/sis/zta/zta/zta/sis;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static dma(Z)Lyou/sis/zta/zta/zta/sis;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0, p0}, Lyou/sis/zta/zta/zta/sis;->rtg(Ljava/lang/String;Z)Lyou/sis/zta/zta/zta/sis;

    move-result-object p0

    return-object p0
.end method

.method public static rtg(Ljava/lang/String;Z)Lyou/sis/zta/zta/zta/sis;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.qti.hardware.qconfig@1.0::IQConfigListener"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lyou/sis/zta/zta/zta/sis;->zta(Landroid/os/IHwBinder;)Lyou/sis/zta/zta/zta/sis;

    move-result-object p0

    return-object p0
.end method

.method public static ssp(Ljava/lang/String;)Lyou/sis/zta/zta/zta/sis;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.qti.hardware.qconfig@1.0::IQConfigListener"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lyou/sis/zta/zta/zta/sis;->zta(Landroid/os/IHwBinder;)Lyou/sis/zta/zta/zta/sis;

    move-result-object p0

    return-object p0
.end method

.method public static ywr()Lyou/sis/zta/zta/zta/sis;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Lyou/sis/zta/zta/zta/sis;->ssp(Ljava/lang/String;)Lyou/sis/zta/zta/zta/sis;

    move-result-object v0

    return-object v0
.end method

.method public static zta(Landroid/os/IHwBinder;)Lyou/sis/zta/zta/zta/sis;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.qti.hardware.qconfig@1.0::IQConfigListener"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lyou/sis/zta/zta/zta/sis;

    if-eqz v3, :cond_1

    check-cast v2, Lyou/sis/zta/zta/zta/sis;

    return-object v2

    :cond_1
    new-instance v2, Lyou/sis/zta/zta/zta/sis$zta;

    invoke-direct {v2, p0}, Lyou/sis/zta/zta/zta/sis$zta;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lyou/sis/zta/zta/zta/sis;->igw()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract cno()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gck()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract igw()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract k1(Ljava/lang/String;ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lyou/sis/zta/zta/zta/rtg;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract kth(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sis()Lzta/zta/zta/zta/zta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract tsu()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract wtn()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract you()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
