.class public Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;
    }
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "OPRefreshRateConfigs"

.field private static final bvj:I = 0x0

.field private static final dma:Ljava/lang/String; = "SM"

.field private static final gck:Ljava/lang/String; = "SA"

.field private static final ibl:I = 0x59db

.field static final igw:Z = true

.field private static final oif:Ljava/lang/String; = "NONE"

.field private static final qbh:Ljava/lang/String; = "OM"

.field private static final wtn:Ljava/lang/String; = "SurfaceFlinger"

.field private static final ywr:Ljava/lang/String; = "OA"


# instance fields
.field private cno:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private kth:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:I

.field private sis:I

.field private ssp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:I

.field private you:Landroid/os/IBinder;

.field private zta:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->zta:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->you:Landroid/os/IBinder;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->ssp:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->kth:Landroid/util/SparseArray;

    return-void
.end method

.method private tsu()V
    .locals 6

    const-string v0, "OPRefreshRateConfigs"

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->you:Landroid/os/IBinder;

    if-nez v1, :cond_0

    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->you:Landroid/os/IBinder;

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->you:Landroid/os/IBinder;

    const/16 v4, 0x59db

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->sis:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->tsu:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->rtg:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MagicSerial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->tsu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->rtg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->sis:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "Failed to get magic serial"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method private zta([Landroid/view/Display$Mode;)V
    .locals 6

    const-string v0, "OPRefreshRateConfigs"

    const-string v1, "buildConfigMap"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->sis:I

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-gt v1, v3, :cond_6

    if-ltz v1, :cond_6

    array-length v3, p1

    if-eq v1, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->ssp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->kth:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->sis:I

    if-ge v1, v3, :cond_2

    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    mul-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->tsu:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, -0x10

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->rtg:I

    :goto_1
    shr-int v3, v4, v3

    and-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->ssp:Landroid/util/SparseArray;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    iget-object v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->ssp:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ADFR Magic Serial: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->tsu:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->rtg:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mModes size"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->ssp:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " supportedModes length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-boolean v2, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->zta:Z

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->zta:Z

    array-length v0, p1

    :goto_3
    if-ge v2, v0, :cond_5

    aget-object v1, p1, v2

    iget-object v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->ssp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    :goto_4
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->kth:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->you(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    :goto_5
    const-string p1, "Invalid ADFR Magic size!"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public bio(I[Landroid/view/Display$Mode;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->tsu()V

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->zta([Landroid/view/Display$Mode;)V

    return-void
.end method

.method public cno(I)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->kth:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "OA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public kth(II)I
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->zta:Z

    if-nez v0, :cond_0

    :goto_0
    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->zta:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->zta()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->kth:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " policyType2ConfigModeType policyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " currentModeType: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OPRefreshRateConfigs"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySpecialPanel:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-virtual {p2}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result p2

    const-string v0, "OM"

    const-string v1, "OA"

    if-ne p1, p2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->sis:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    goto :goto_1

    :cond_3
    :goto_2
    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyMEMC:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-virtual {p2}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result p2

    if-ne p1, p2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySunReadable:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-virtual {p2}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result p2

    if-ne p1, p2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySystem:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-virtual {p2}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result p2

    if-ne p1, p2, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_7
    sget-object p0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyADFR:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-virtual {p0}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result p0

    if-ne p1, p0, :cond_8

    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->tsu:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    goto/16 :goto_1

    :cond_8
    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->you:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    goto/16 :goto_1
.end method

.method public rtg()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    return-object p0
.end method

.method public sis(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "  RefreshRateConfigs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    MagicSerial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->rtg:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->cno:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->you(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, " ]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public ssp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->zta:Z

    return p0
.end method

.method public you(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->you:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->zta()I

    move-result p0

    if-ne p1, p0, :cond_0

    const-string p0, "SA"

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->sis:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->zta()I

    move-result p0

    if-ne p1, p0, :cond_1

    const-string p0, "SM"

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->tsu:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->zta()I

    move-result p0

    if-ne p1, p0, :cond_2

    const-string p0, "OA"

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->zta()I

    move-result p0

    if-ne p1, p0, :cond_3

    const-string p0, "OM"

    goto :goto_0

    :cond_3
    const-string p0, "NONE"

    :goto_0
    return-object p0
.end method
