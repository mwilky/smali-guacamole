.class Lyou/you/zta/zta/you/wtn$you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/you/zta/zta/you/wtn$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/you/zta/zta/you/wtn$you;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lyou/you/zta/zta/you/wtn$you;

.field final synthetic zta:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lyou/you/zta/zta/you/wtn$you;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lyou/you/zta/zta/you/wtn$you$zta;->you:Lyou/you/zta/zta/you/wtn$you;

    iput-object p2, p0, Lyou/you/zta/zta/you/wtn$you$zta;->zta:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lyou/you/zta/zta/you/wtn$you$zta;->zta:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lyou/you/zta/zta/you/wtn$you$zta;->zta:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p1, p0, Lyou/you/zta/zta/you/wtn$you$zta;->zta:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lyou/you/zta/zta/you/wtn$you$zta;->zta:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
