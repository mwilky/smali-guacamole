.class public Lcom/oneplus/android/server/context/OneplusContextStubImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/context/IOneplusContextStub;


# static fields
.field private static final sis:Ljava/lang/String; = "OneplusContextStubImpl"

.field private static final tsu:Z


# instance fields
.field private you:Landroid/content/Context;

.field private zta:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->tsu:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/wm/OpWindowManagerService;->getInstance()Lcom/android/server/wm/OpWindowManagerService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xb

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_permissioncontrolservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;

    invoke-direct {v4}, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_hypnus:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/server/hypnus/HypnusService;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oneplus/server/hypnus/HypnusService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v2, 0x82

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_consumption_statistics:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v4}, Lcom/android/server/wm/OpPowerConsumpStats;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-array v1, v0, [I

    const/16 v2, 0x84

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-array v1, v0, [I

    const/16 v2, 0xf

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_reserve_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/bio;

    invoke-direct {v4}, Lcom/android/server/pm/bio;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_sensitive_perm_grant_policy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/wtn/zta;

    invoke-direct {v4}, Lcom/android/server/pm/wtn/zta;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v2, 0x135

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_cota_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/pm/ssp;->you()Lcom/android/server/pm/ssp;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-array v1, v0, [I

    const/16 v4, 0x10

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_5

    new-array v1, v0, [I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-array v1, v0, [I

    const/16 v2, 0x11

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-direct {v5, p1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-array v1, v0, [I

    aput v3, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apperror_dialog:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/bud;

    invoke-direct {v5}, Lcom/android/server/am/bud;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-array v1, v0, [I

    const/16 v4, 0x83

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OpPowerControllerService;

    iget-object v6, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/OpPowerControllerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    new-array v1, v0, [I

    const/16 v4, 0x88

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/server/OnePlusService;

    invoke-direct {v5}, Lcom/oneplus/server/OnePlusService;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x52

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/tsu/you/zta;

    invoke-direct {v5}, Lcom/oneplus/android/server/tsu/you/zta;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    new-array v1, v0, [I

    const/16 v4, 0x86

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OnePlusExService;

    invoke-direct {v5}, Lcom/android/server/OnePlusExService;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x87

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/cno/zta;

    invoke-direct {v5}, Lcom/oneplus/android/server/cno/zta;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/bvj;

    invoke-direct {v5}, Lcom/android/server/am/bvj;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/BatteryOutlier;

    invoke-direct {v5}, Lcom/android/server/am/BatteryOutlier;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_param_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/ParamService;

    invoke-direct {v5}, Lcom/android/server/ParamService;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x24

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_c

    new-array v1, v0, [I

    const/16 v4, 0x61

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vibratorservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OpVibratorService;

    invoke-direct {v5}, Lcom/android/server/OpVibratorService;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_phonewindowmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {v5}, Lcom/android/server/policy/OpPhoneWindowManager;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x8a

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alertslider_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/alertslider/tsu;

    invoke-direct {v5}, Lcom/oneplus/android/server/alertslider/tsu;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/power/sis;

    invoke-direct {v5}, Lcom/android/server/power/sis;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x89

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_fast_charge:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/obl;->zgw()Lcom/oneplus/android/server/power/IOpFastCharge;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    new-array v1, v0, [I

    const/16 v4, 0x5d

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_resident:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/n;

    invoke-direct {v5}, Lcom/android/server/wm/n;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    new-array v1, v0, [I

    const/16 v4, 0x4b

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_aggressive_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/gwm;

    invoke-direct {v5}, Lcom/android/server/gwm;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    new-array v1, v0, [I

    const/16 v4, 0x4c

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ear;->wtn(Landroid/content/Context;)Lcom/android/server/ear;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    new-array v1, v0, [I

    const/16 v4, 0xad

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_adj_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/e;

    invoke-direct {v5}, Lcom/android/server/am/e;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OnePlusNfcService;

    invoke-direct {v5, p1}, Lcom/android/server/OnePlusNfcService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x96

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wifi:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/wifi/OpWifiServiceImpl;

    invoke-direct {v5}, Lcom/oneplus/android/server/wifi/OpWifiServiceImpl;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    new-array v1, v0, [I

    const/16 v4, 0x9c

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_oputil:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OnePlusUtil;

    invoke-direct {v5}, Lcom/android/server/OnePlusUtil;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    new-array v1, v0, [I

    const/16 v4, 0x16

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_applocker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/OpAppLocker;

    invoke-direct {v5}, Lcom/android/server/wm/OpAppLocker;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_bluetooth_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    invoke-direct {v5}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x9a

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_perf_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    new-array v1, v0, [I

    const/16 v4, 0x19

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickpay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/policy/OpQuickPay;

    invoke-direct {v5}, Lcom/android/server/policy/OpQuickPay;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitystarter:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/OpActivityStarter;

    invoke-direct {v5}, Lcom/android/server/wm/OpActivityStarter;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x1a

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_launcherappsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/pm/OpLauncherAppsService;

    invoke-direct {v5}, Lcom/android/server/pm/OpLauncherAppsService;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    new-array v1, v0, [I

    const/16 v4, 0x9b

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_restartprocessmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/am/f;->vdw()Lcom/android/server/am/f;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    new-array v1, v0, [I

    const/16 v4, 0x31

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1b

    new-array v1, v0, [I

    const/16 v4, 0x1f

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screencompat:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/OpScreenCompat;

    invoke-direct {v5, p1}, Lcom/android/server/wm/OpScreenCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    new-array v1, v0, [I

    const/16 v4, 0x9d

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/kth/zta;

    invoke-direct {v5, p1}, Lcom/oneplus/android/server/kth/zta;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    new-array v1, v0, [I

    const/16 v4, 0x9e

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenshotimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/policy/tsu;

    invoke-direct {v5, p1}, Lcom/android/server/policy/tsu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    new-array v1, v0, [I

    const/16 v4, 0x9f

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_notification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-direct {v5, p1}, Lcom/android/server/location/OnePlusGpsNotificationService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    new-array v1, v0, [I

    const/16 v4, 0xa0

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zenmode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/scene/kth;

    invoke-direct {v5}, Lcom/oneplus/android/server/scene/kth;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    new-array v1, v0, [I

    const/16 v4, 0x69

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smartboost:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/tsu/zta;

    invoke-direct {v5}, Lcom/oneplus/android/server/tsu/zta;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaypowercontroller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/lqr/you;->ivd()Lcom/android/server/lqr/you;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0x14

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_memorytracker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusMemoryTracker;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    new-array v1, v0, [I

    const/16 v4, 0x119

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_proximity_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/display/zta;

    invoke-direct {v5}, Lcom/android/server/display/zta;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    new-array v1, v0, [I

    const/16 v4, 0x15

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apprecord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    new-array v1, v0, [I

    const/16 v4, 0x4d

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_alignment:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/ugm;

    invoke-direct {v5}, Lcom/android/server/ugm;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    new-array v1, v0, [I

    const/16 v4, 0xa1

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/net/OpNetworkPolicy;

    invoke-direct {v5}, Lcom/android/server/net/OpNetworkPolicy;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    new-array v1, v0, [I

    const/16 v4, 0x60

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {v5}, Lcom/android/server/wm/OpScreenModeService;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    new-array v1, v0, [I

    const/16 v4, 0xab

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_dexoptmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/pm/sis;->qbh(Landroid/content/Context;)Lcom/android/server/pm/sis;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_powerkey_launch:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/policy/sis;

    invoke-direct {v5}, Lcom/android/server/policy/sis;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_shutdown_chord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/policy/rtg;

    invoke-direct {v5}, Lcom/android/server/policy/rtg;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/secrecy/SecrecyService;

    iget-object v6, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/secrecy/SecrecyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v6, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/engineer/OneplusEngineerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0xac

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_skipdoframe:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/vju;

    invoke-direct {v5, p1}, Lcom/android/server/am/vju;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    new-array v1, v0, [I

    const/16 v4, 0xae

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenrotationimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/OpScreenRotationImprovement;

    invoke-direct {v5, p1}, Lcom/android/server/wm/OpScreenRotationImprovement;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    new-array v1, v0, [I

    const/16 v4, 0xb0

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitytaskmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/j;

    invoke-direct {v5}, Lcom/android/server/wm/j;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaycontent:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/k;

    invoke-direct {v5}, Lcom/android/server/wm/k;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/vdb;

    invoke-direct {v5}, Lcom/android/server/vdb;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    aput v3, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_package_manager_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/pm/kth;

    invoke-direct {v5}, Lcom/android/server/pm/kth;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    new-array v1, v0, [I

    const/16 v4, 0x18

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scenemode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/i;

    invoke-direct {v5}, Lcom/android/server/wm/i;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    new-array v1, v0, [I

    const/16 v4, 0x20

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/android/server/wm/o;->c(Landroid/content/Context;)Lcom/android/server/wm/o;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_carkit_identification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/zta;

    invoke-direct {v5}, Lcom/oneplus/android/server/zta;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v4, 0xbf

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_verificationcode_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-direct {v5}, Lcom/android/server/inputmethod/OpVerificationCodeController;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    new-array v1, v0, [I

    const/16 v4, 0x13

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_start_app_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/android/server/am/veq;->hmo(Landroid/content/Context;)Lcom/android/server/am/veq;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    new-array v1, v0, [I

    const/16 v4, 0x4e

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/les;

    invoke-direct {v5}, Lcom/android/server/am/les;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    new-array v1, v0, [I

    const/16 v4, 0xba

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opsla:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wifi/sis;

    invoke-direct {v5}, Lcom/android/server/wifi/sis;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    invoke-direct {v5}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_longshot_manager_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_compatibility_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/pm/rtg;

    invoke-direct {v5}, Lcom/android/server/pm/rtg;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_ads:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OpAppSwitchManagerServiceHelper;

    invoke-direct {v5}, Lcom/android/server/OpAppSwitchManagerServiceHelper;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_instant_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/cjf;

    invoke-direct {v4}, Lcom/android/server/cjf;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_fingerprint_acccelerate:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/l;

    invoke-direct {v4, p1}, Lcom/android/server/wm/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_game_shake:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    iget-object v4, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/am/fto;->sis(Landroid/content/Context;)Lcom/android/server/am/fto;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v2, 0x124

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_34

    new-array v1, v0, [I

    const/16 v2, 0x125

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_34
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_iris_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/iris/OpIrisService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    new-array v1, v0, [I

    const/16 v2, 0x146

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oplus_vrr_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    new-array v1, v0, [I

    const/16 v2, 0x116

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystats_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/irq;

    invoke-direct {v4, p1}, Lcom/android/server/am/irq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_location_manager_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/ssp/rtg;

    invoke-direct {v4}, Lcom/oneplus/android/server/ssp/rtg;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_gnss_configuration:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/ssp/you;

    invoke-direct {v4}, Lcom/oneplus/android/server/ssp/you;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_location_provider:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/ssp/sis;

    invoke-direct {v4}, Lcom/oneplus/android/server/ssp/sis;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_location_mdm:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/ssp/ssp;

    invoke-direct {v4}, Lcom/oneplus/android/server/ssp/ssp;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v2, 0xec

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_force_dark_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/OpForceDarkController;

    invoke-direct {v4}, Lcom/android/server/am/OpForceDarkController;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    new-array v1, v0, [I

    const/16 v2, 0x80

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_39

    new-array v1, v0, [I

    const/16 v2, 0xb7

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_39

    new-array v1, v0, [I

    const/16 v2, 0x49

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_39
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_carrier_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/rtg/you;

    invoke-direct {v4}, Lcom/oneplus/android/server/rtg/you;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    new-array v1, v0, [I

    const/16 v2, 0x12d

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Lcom/android/server/am/zgw;

    invoke-direct {v1}, Lcom/android/server/am/zgw;-><init>()V

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vip_broadcast:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/am/zgw;->init()V

    :cond_3b
    new-array v1, v0, [I

    const/16 v2, 0x102

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_startingwindow:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/q;

    invoke-direct {v4}, Lcom/android/server/wm/q;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    new-array v1, v0, [I

    const/16 v2, 0xed

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wireless_charge_disconnect_detector:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/fto;

    invoke-direct {v4}, Lcom/android/server/fto;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    sget-boolean v1, Lcom/oneplus/theme/OpFontHelperInjector;->sFeatureEnable:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_font_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-direct {v4}, Lcom/oneplus/server/theme/OnePlusFontController;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zoom_window:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getInstance()Lcom/android/server/wm/ColorZoomWindowManagerService;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    new-array v0, v0, [I

    const/16 v1, 0x5b

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v1, Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-direct {v1, p1}, Lcom/oneplus/android/server/OpMotorManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    return-void
.end method


# virtual methods
.method public bootComplete()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->tsu:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusContextStubImpl"

    const-string v1, "bootComplete()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OpPowerControllerService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->init()V

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->bootCompleted()V

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x4c

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ear;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/ear;->ire()V

    :cond_2
    new-array v1, v0, [I

    const/16 v2, 0xe5

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/am/hmo;->a(Landroid/content/Context;)Lcom/android/server/am/hmo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/g;->ibl(Landroid/content/Context;)Lcom/android/server/am/g;

    :cond_3
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/cgv;->gwm(Landroid/content/Context;)Lcom/android/server/am/cgv;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/InstalledAppLoggingService;->rtg(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz v1, :cond_4

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->onBootPhase(I)V

    const/16 v2, 0x1e0

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->onBootPhase(I)V

    :cond_4
    new-array v1, v0, [I

    const/16 v2, 0x10

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_5

    new-array v1, v0, [I

    const/16 v2, 0x135

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->dma()V

    :cond_6
    new-array v1, v0, [I

    const/16 v2, 0x119

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_proximity_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/zta;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/zta;->e(Landroid/content/Context;)V

    :cond_7
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusExService;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/OnePlusExService;->bootComplete()V

    :cond_8
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OpWindowManagerService;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/OpWindowManagerService;->bootComplete(Landroid/content/Context;)V

    :cond_9
    new-array v1, v0, [I

    const/16 v2, 0x20

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/o;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wm/o;->irq()V

    :cond_a
    new-array v1, v0, [I

    const/16 v2, 0x125

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_b

    new-array v0, v0, [I

    const/16 v1, 0x124

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_iris_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/iris/OpIrisService;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->onBootComplete()V

    :cond_c
    return-void
.end method

.method public queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public shutdown()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->tsu:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusContextStubImpl"

    const-string v1, "shutdown()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x83

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService;->shutdown()V

    :cond_1
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 4

    sget-boolean p1, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->tsu:Z

    const-string v0, "OneplusContextStubImpl"

    if-eqz p1, :cond_0

    const-string p1, "start"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OpWindowManagerService;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/OpWindowManagerService;->publish(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/OpPowerControllerService;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService;->publish()V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_hypnus:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/server/hypnus/HypnusService;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/server/hypnus/HypnusService;->publish()V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/server/OnePlusService;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/server/OnePlusService;->publish(Landroid/content/Context;)V

    :cond_4
    const/4 p1, 0x1

    new-array v1, p1, [I

    const/16 v2, 0xb

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_permissioncontrolservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->publish(Landroid/content/Context;)V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusExService;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusExService;->publish(Landroid/content/Context;)V

    :cond_6
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_param_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ParamService;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/ParamService;->publish(Landroid/content/Context;)V

    :cond_7
    new-array v1, p1, [I

    const/16 v2, 0x84

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/display/OpColorDisplayService;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->publish(Landroid/content/Context;)V

    :cond_8
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusNfcService;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusNfcService;->publish(Landroid/content/Context;)V

    :cond_9
    new-array v1, p1, [I

    const/16 v2, 0x96

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wifi:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/wifi/OpWifiServiceImpl;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/wifi/OpWifiServiceImpl;->publish(Landroid/content/Context;)V

    :cond_a
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_bluetooth_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->publish(Landroid/content/Context;)V

    :cond_b
    new-array v1, p1, [I

    const/16 v2, 0x11

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->kth()V

    :cond_c
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/secrecy/SecrecyService;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/secrecy/SecrecyService;->ywr(Landroid/content/Context;)V

    :cond_d
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->ire(Landroid/content/Context;)V

    :cond_e
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->publish()V

    :cond_f
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_longshot_manager_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    if-eqz v1, :cond_10

    const-string v2, "Longshot publishing"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->publish(Landroid/content/Context;)V

    :cond_10
    new-array v0, p1, [I

    const/16 v1, 0x125

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_11

    new-array v0, p1, [I

    const/16 v1, 0x124

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_iris_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/iris/OpIrisService;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/iris/OpIrisService;->publish(Landroid/content/Context;)V

    :cond_12
    new-array p1, p1, [I

    const/16 v0, 0x146

    aput v0, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oplus_vrr_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->publish(Landroid/content/Context;)V

    :cond_13
    sget-boolean p1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zoom_window:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ColorZoomWindowManagerService;

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->publish(Landroid/content/Context;)V

    :cond_14
    return-void
.end method

.method public systemReady()V
    .locals 5

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->tsu:Z

    const-string v1, "OneplusContextStubImpl"

    if-eqz v0, :cond_0

    const-string v0, "systemReady()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0x15

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppRecordManagerService;->initEnv(Landroid/content/Context;)V

    :cond_1
    new-array v2, v0, [I

    const/16 v3, 0x10

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v0, [I

    const/16 v3, 0x135

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;

    invoke-virtual {v2}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ywr()V

    :cond_3
    new-array v2, v0, [I

    const/16 v3, 0x11

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-virtual {v2}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->bio()V

    :cond_4
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/OnePlusService;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/oneplus/server/OnePlusService;->systemReady()V

    :cond_5
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusExService;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/OnePlusExService;->systemRunning()V

    :cond_6
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusNfcService;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/server/OnePlusNfcService;->systemRunning()V

    :cond_7
    new-array v2, v0, [I

    const/16 v3, 0x84

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/display/OpColorDisplayService;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V

    :cond_8
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_restartprocessmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/f;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/am/f;->p(Landroid/content/Context;)V

    :cond_9
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/secrecy/SecrecyService;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/secrecy/SecrecyService;->oif()V

    :cond_a
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/server/engineer/OneplusEngineerService;->lqr()V

    :cond_b
    new-array v2, v0, [I

    const/16 v3, 0x113

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/oneplus/android/server/bio/zta;->gck()Lcom/oneplus/android/server/bio/zta;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/bio/zta;->dma(Landroid/content/Context;)V

    :cond_c
    new-array v2, v0, [I

    const/16 v3, 0x69

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smartboost:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/tsu/zta;

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/tsu/zta;->zta(Landroid/content/Context;)V

    :cond_d
    invoke-static {}, Lcom/android/server/lqr/you;->ivd()Lcom/android/server/lqr/you;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/lqr/you;->f(Landroid/content/Context;)V

    sget-boolean v2, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->IN_USING:Z

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->getInstance()Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->initOnlineConfig(Landroid/content/Context;)V

    :cond_e
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/am/fto;->sis(Landroid/content/Context;)Lcom/android/server/am/fto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/fto;->tsu()V

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->systemReady(Landroid/content/Context;)V

    :cond_f
    new-array v2, v0, [I

    const/16 v3, 0xf0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->initOnlineConfig(Landroid/content/Context;)V

    :cond_10
    new-array v2, v0, [I

    const/16 v3, 0x43

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/server/you;->igw(Landroid/content/Context;)V

    :cond_11
    new-array v2, v0, [I

    const/16 v3, 0x9a

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/OnePlusPerfManager;->initOnlineConfig(Landroid/content/Context;)V

    :cond_12
    sget-boolean v2, Lcom/android/server/am/i;->wtn:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/server/am/i;->obl()Lcom/android/server/am/i;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/am/i;->cjf(Landroid/content/Context;)V

    :cond_13
    sget-boolean v2, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-eqz v2, :cond_14

    :try_start_0
    new-instance v2, Lcom/oneplus/android/server/scene/sis;

    invoke-direct {v2, v4, v4}, Lcom/oneplus/android/server/scene/sis;-><init>(II)V

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v2}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->setHapticEffect(Lcom/oneplus/android/server/scene/sis;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->disableFeatureWhenException()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_0
    new-array v2, v0, [I

    const/16 v3, 0x125

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_15

    new-array v2, v0, [I

    const/16 v3, 0x124

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_iris_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/iris/OpIrisService;

    if-eqz v2, :cond_16

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/iris/OpIrisService;->systemReady(Landroid/content/Context;)V

    :cond_16
    new-array v2, v0, [I

    const/16 v3, 0x146

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oplus_vrr_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;

    if-eqz v2, :cond_17

    iget-object v3, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->systemReady(Landroid/content/Context;)V

    :cond_17
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wifi:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/server/wifi/OpWifiServiceImpl;

    if-eqz v2, :cond_19

    sget-boolean v3, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->tsu:Z

    if-eqz v3, :cond_18

    const-string v3, "systemRunning()"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {v2}, Lcom/oneplus/android/server/wifi/OpWifiServiceImpl;->systemRunning()V

    :cond_19
    new-array v1, v0, [I

    const/16 v2, 0xab

    aput v2, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/sis;->qbh(Landroid/content/Context;)Lcom/android/server/pm/sis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/sis;->ibl()V

    :cond_1a
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_bluetooth_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/oneplus/android/server/bluetooth/OpBluetoothService;->systemReady()Z

    :cond_1b
    new-array v1, v0, [I

    const/16 v2, 0x9f

    aput v2, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_notification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-virtual {v1}, Lcom/android/server/location/OnePlusGpsNotificationService;->systemReady()V

    :cond_1c
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zoom_window:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ColorZoomWindowManagerService;

    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->you:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->systemReady(Landroid/content/Context;)V

    :cond_1d
    new-array v0, v0, [I

    const/16 v1, 0x5b

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->zta:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-virtual {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->j1()V

    :cond_1e
    return-void
.end method
