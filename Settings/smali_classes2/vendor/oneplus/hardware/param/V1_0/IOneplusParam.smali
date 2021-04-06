.class public interface abstract Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
.super Ljava/lang/Object;
.source "IOneplusParam.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    if-eqz v3, :cond_1

    check-cast v2, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    return-object v2

    :cond_1
    new-instance v2, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Proxy;

    invoke-direct {v2, p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->interfaceChain()Ljava/util/ArrayList;

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

.method public static getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService(Ljava/lang/String;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
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

.method public abstract setParamInt(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
