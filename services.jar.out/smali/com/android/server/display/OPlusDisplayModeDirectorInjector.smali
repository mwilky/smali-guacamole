.class public Lcom/android/server/display/OPlusDisplayModeDirectorInjector;
.super Ljava/lang/Object;
.source "OPlusDisplayModeDirectorInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;
    }
.end annotation


# static fields
.field private static final ADFR_ENABLED:Z

.field private static final DEFAULT_DISPLAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpDisplayModeDirectorInjector"

.field private static sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x146

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->ADFR_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->OPLUS_VRR_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    sput-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVote(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " createVote "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDisplayModeDirectorInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    invoke-static {v1}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->getPolicyPriority(I)I

    move-result v1

    iget v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    invoke-static {v2, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    :cond_0
    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    invoke-static {v2, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    :cond_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    invoke-static {v2, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    :cond_2
    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v2, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    :cond_3
    if-nez v1, :cond_4

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    :cond_4
    iget v3, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    invoke-static {v2, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    sget-object v3, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    if-eqz v3, :cond_5

    iget-boolean v4, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    invoke-interface {v3, v4}, Lcom/oneplus/adfr/IOPlusRefreshRateManager;->setOAStatus(Z)V

    :cond_5
    return-object v0
.end method

.method public static filterModes(Landroid/util/SparseArray;I[I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;I[I)[I"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/oneplus/adfr/IOPlusRefreshRateManager;->isSupportADFR()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " filterModes displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sOPlusRefreshRateManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isSupportADFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    invoke-interface {v1}, Lcom/oneplus/adfr/IOPlusRefreshRateManager;->isSupportADFR()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDisplayModeDirectorInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyDefault:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    const/16 v1, 0xc

    :goto_0
    if-ltz v1, :cond_8

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayModeDirector$Vote;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0xc

    if-ne v1, v3, :cond_3

    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySpecialPanel:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    :cond_3
    const/16 v3, 0xb

    if-ne v1, v3, :cond_4

    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicyMEMC:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    :cond_4
    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySunReadable:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    :cond_5
    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v3, 0x7

    if-eq v1, v3, :cond_6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_7

    :cond_6
    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->ePolicySystem:Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    invoke-virtual {v0}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector$VRRPolicy;->value()I

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/oneplus/adfr/IOPlusRefreshRateManager;->filterModes(II[I)[I

    move-result-object v1

    return-object v1

    :cond_9
    :goto_2
    return-object p2
.end method

.method public static getPolicyPriority(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getPolicyPriority policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDisplayModeDirectorInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/16 v0, 0xb

    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    const/16 v0, 0xa

    return v0

    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    const/16 v0, 0x9

    return v0

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/16 v0, 0xc

    return v0
.end method

.method public static setBaseModeId(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setBaseModeId modeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDisplayModeDirectorInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/oneplus/adfr/IOPlusRefreshRateManager;->setBaseModeId(I)V

    :cond_0
    return-void
.end method

.method public static updateDisplayModes(I[Landroid/view/Display$Mode;)V
    .locals 1

    sget-object v0, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->sOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/oneplus/adfr/IOPlusRefreshRateManager;->updateDisplayModes(I[Landroid/view/Display$Mode;)V

    :cond_0
    return-void
.end method
