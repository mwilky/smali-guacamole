.class public Lcom/oneplus/android/server/adfr/rtg;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final cno:Z = true

.field private static final kth:I = 0x0

.field private static final ssp:Ljava/lang/String; = "OPlusRefreshRatePolicy"


# instance fields
.field private rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

.field private sis:Z

.field private tsu:I

.field private you:Z

.field private zta:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/rtg;->rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    return-void
.end method


# virtual methods
.method public cno(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/adfr/rtg;->sis:Z

    return-void
.end method

.method public rtg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/adfr/rtg;->you:Z

    return-void
.end method

.method public sis()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/adfr/rtg;->zta:Z

    return p0
.end method

.method public ssp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/adfr/rtg;->zta:Z

    return-void
.end method

.method public tsu(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/adfr/rtg;->tsu:I

    return-void
.end method

.method public you(II[I)[I
    .locals 4

    if-eqz p2, :cond_0

    return-object p3

    :cond_0
    iget-object p2, p0, Lcom/oneplus/android/server/adfr/rtg;->rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    invoke-virtual {p2}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->ssp()Z

    move-result p2

    if-nez p2, :cond_1

    return-object p3

    :cond_1
    iget-boolean p2, p0, Lcom/oneplus/android/server/adfr/rtg;->zta:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/oneplus/android/server/adfr/rtg;->you:Z

    if-nez p2, :cond_3

    sget-object p2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySpecialPanel:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-virtual {p2}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result p2

    if-eq p1, p2, :cond_3

    sget-object p2, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyMEMC:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    invoke-virtual {p2}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result p2

    if-eq p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/android/server/adfr/rtg;->sis:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyDefault:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyADFR:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result p1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/rtg;->rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    iget v1, p0, Lcom/oneplus/android/server/adfr/rtg;->tsu:I

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->kth(II)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " filterModes modeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPlusRefreshRatePolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/adfr/rtg;->rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;->rtg()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    if-nez p0, :cond_4

    return-object p3

    :cond_4
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_6

    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object p0
.end method

.method public zta(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  RefreshRatePolicy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    OA Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/adfr/rtg;->zta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    DC Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/adfr/rtg;->you:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCurrentBaseModeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/adfr/rtg;->tsu:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
